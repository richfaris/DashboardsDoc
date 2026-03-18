#!/usr/bin/env python3
"""
After pandoc → DOCX: add w:cantSplit to each table row so Word keeps
Column | Description rows on one page when possible.
"""
from __future__ import annotations

import sys
import zipfile
from io import BytesIO
from xml.dom import minidom

NS = "http://schemas.openxmlformats.org/wordprocessingml/2006/main"


def main() -> int:
    path = sys.argv[1] if len(sys.argv) > 1 else "build/BriteCore-Dashboards-Doc.docx"
    zin = zipfile.ZipFile(path, "r")
    raw = zin.read("word/document.xml")
    zin.close()

    dom = minidom.parseString(raw)
    for tr in dom.getElementsByTagNameNS(NS, "tr"):
        trpr = None
        for c in tr.childNodes:
            if c.nodeType == 1 and c.namespaceURI == NS and c.localName == "trPr":
                trpr = c
                break
        if trpr is None:
            trpr = dom.createElementNS(NS, "w:trPr")
            if tr.firstChild:
                tr.insertBefore(trpr, tr.firstChild)
            else:
                tr.appendChild(trpr)
        has = False
        for c in trpr.childNodes:
            if c.nodeType == 1 and c.localName == "cantSplit":
                has = True
                break
        if not has:
            trpr.appendChild(dom.createElementNS(NS, "w:cantSplit"))

    out = dom.toxml(encoding="utf-8")

    buf = BytesIO()
    zin = zipfile.ZipFile(path, "r")
    zout = zipfile.ZipFile(buf, "w", zipfile.ZIP_DEFLATED)
    for item in zin.infolist():
        if item.filename == "word/document.xml":
            zout.writestr(item, out)
        else:
            zout.writestr(item, zin.read(item.filename))
    zin.close()
    zout.close()

    with open(path, "wb") as f:
        f.write(buf.getvalue())
    print("Patched table rows (cantSplit):", path)
    return 0


if __name__ == "__main__":
    sys.exit(main())
