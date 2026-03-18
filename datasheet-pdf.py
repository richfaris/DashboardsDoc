#!/usr/bin/env python3
"""
Generate landscape PDF from build/Dashboard-Datasheet.html (no browser print dialog).

Install WeasyPrint (pick one):
  brew install weasyprint
  pip3 install weasyprint

Run after: ./build-datasheet.sh
"""
from __future__ import annotations

import os
import shutil
import subprocess
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.join(ROOT, "build")
HTML_NAME = "Dashboard-Datasheet.html"
PDF_NAME = "Dashboard-Datasheet.pdf"


def main() -> int:
    html_path = os.path.join(BUILD, HTML_NAME)
    pdf_path = os.path.join(BUILD, PDF_NAME)
    if not os.path.isfile(html_path):
        print("Build HTML first: ./build-datasheet.sh", file=sys.stderr)
        return 1

    # WeasyPrint CLI (brew install weasyprint)
    wp = shutil.which("weasyprint")
    if wp:
        subprocess.run(
            [wp, HTML_NAME, PDF_NAME],
            cwd=BUILD,
            check=True,
        )
        print(f" -> {pdf_path}  (WeasyPrint, landscape @page from CSS)")
        return 0

    # WeasyPrint Python module (pip3 install weasyprint)
    try:
        from weasyprint import HTML
    except ImportError:
        pass
    else:
        HTML(filename=html_path, base_url=BUILD + os.sep).write_pdf(pdf_path)
        print(f" -> {pdf_path}  (WeasyPrint Python, landscape @page from CSS)")
        return 0

    return 1


if __name__ == "__main__":
    rc = main()
    if rc and sys.stderr.isatty():
        print(
            "Install WeasyPrint, then run again:\n"
            "  brew install weasyprint\n"
            "  # or:  pip3 install weasyprint",
            file=sys.stderr,
        )
    sys.exit(rc)
