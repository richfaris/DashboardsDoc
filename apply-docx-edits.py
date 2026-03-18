#!/usr/bin/env python3
"""
Split build/from-docx.md (from DOCX) into the 6 source .md files and restore assets/ image paths.
Run from DashboardsDoc: python3 apply-docx-edits.py
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
FROM_DOCX = ROOT / "build" / "from-docx.md"

# Map media/rIdXX.png to our assets/ path (URL-encoded where needed)
MEDIA_TO_ASSETS = {
    "rId20": "assets/Claims%20Manager%20Summary%20-%20%20Losses%20Incurred%20.png",
    "rId24": "assets/Claims%20Manager%20Summary%20Tab%20-%20Middle%20section.png",
    "rId27": "assets/Claims%20Manager%20Summary%20Tab%20-%20Loss%20Triangle.png",
    "rId32": "assets/Claims%20Manager%20-%20Detail%20Tab.png",
    "rId37": "assets/Claims%20Manager%20Contractor%20Tracking%20Diagram.png",
    "rId43": "assets/CEO%20Dashboard%20Capture.png",
    "rId46": "assets/CEO%20Loss%20Ratios%20Big%20Numbers.png",
    "rId51": "assets/CEO%20Direct%20Loss%20Ratio%20by%20Policy%20Type%20.png",
    "rId54": "assets/CEO%20Loss%20Ratio%20by%20Area.png",
    "rId57": "assets/CEO%20Agency%20Profitability%20.png",
    "rId64": "assets/CEO%20Retention%20Count%20of%20Inforce.png",
    "rId68": "assets/CEO%20Retention%20-%20Issued%20vs%20Retention%20rate%20by%20county.png",
    "rId71": "assets/CEO%20Retention%20-%20Detail%20List%20by%20Agency.png",
    "rId77": "assets/CEO%20Current%20Events%20-%2030%20days%20tables.png",
    "rId82": "assets/CEO%20Agency%20Profile%20-%20Top%204%20views.png",
    "rId86": "assets/CEO%20Agency%20Experience%20-%20Middle%20few.png",
    "rId89": "assets/CEO%20Agency%20Experience%20-%203rd%20block%20down.png",
    "rId92": "assets/CEO%20Agency%20Experience%20-%20Bottom%20Graphs.png",
    "rId98": "assets/Agency%20Principal%20-%20Summary%20Top%20.png",
    "rId103": "assets/Agency%20Principal%20-%20Summary%20Bottom.png",
    "rId108": "assets/Agency%20Principal%20-%20%20Commissions.png",
    "rId114": "assets/Agency%20Principal%20-%20Productiivity%20Top.png",
    "rId119": "assets/Agency%20Principal%20-%20Production%20Middle.png",
    "rId124": "assets/Agency%20Principal%20-%20Payments%20Due.png",
    "rId128": "assets/agency-principal-payments-due.png",
    "rId136": "assets/CFO%20Policy%20Transactions%20Top.png",
    "rId141": "assets/CFO%20Policy%20Transactions%20Bottom.png",
    "rId146": "assets/CFO%20Policy%20Transaction%20Details.png",
    "rId152": "assets/CFO%20Cash%20Summary%20Top.png",
    "rId155": "assets/CFO%20Cash%20Summary%20Bottom.png",
    "rId160": "assets/CFO%20Cash%20Details%20Top.png",
    "rId165": "assets/CFO%20Cash%20Details%20Bottom.png",
    "rId170": "assets/CFO%20Payments.png",
    "rId176": "assets/CFO%20Policies%20Changes.png",
    "rId183": "assets/Underwriting%20Manager%20Policy%20and%20Premium%20Information.png",
    "rId189": "assets/Underwriting%20Manager%20-%20Claims%20Information.png",
    "rId192": "assets/underwriting-manager-claim-information.png",
    "rId199": "assets/Underwriting%20Manager%20Claims%20Changes.png",
}

# (start_line_1based, end_line_1based_exclusive, output_filename)
# Line 1 is TOC; content starts line 3 (BriteCore); Claims Manager starts 63; etc.
SPLITS = [
    (3, 63, "dashboards.md"),
    (63, 386, "claims-manager-dashboard.md"),
    (386, 600, "ceo-dashboard.md"),
    (600, 836, "agency-principal-dashboard.md"),
    (836, 1166, "cfo-dashboard.md"),
    (1166, None, "underwriting-manager-dashboard.md"),  # None = to end
]


def fix_image_refs(text: str) -> str:
    # Replace ](media/rIdXX.png){width="..." height="..."} with ](assets/...)
    for rid, path in MEDIA_TO_ASSETS.items():
        pattern = r'\]\(media/' + re.escape(rid) + r'\.png\)\s*\{\s*width="[^"]*"\s*height="[^"]*"\s*\}'
        text = re.sub(pattern, "]({})".format(path), text)
    return text


def main():
    if not FROM_DOCX.exists():
        print(f"Missing {FROM_DOCX}. Run: pandoc build/BriteCore-Dashboards-Doc.docx -o build/from-docx.md -t markdown --wrap=none")
        return 1
    lines = FROM_DOCX.read_text(encoding="utf-8").splitlines()
    for start, end, name in SPLITS:
        i_start = start - 1
        i_end = len(lines) if end is None else end - 1
        block = "\n".join(lines[i_start:i_end])
        block = fix_image_refs(block)
        out = ROOT / name
        out.write_text(block, encoding="utf-8")
        print(f"Wrote {name}")
    return 0


if __name__ == "__main__":
    exit(main())
