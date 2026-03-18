#!/usr/bin/env bash
# Build Dashboard Datasheet HTML (single polished page). Run from this directory.
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
BUILD="build"
mkdir -p "$BUILD"
cp -f datasheet.css "$BUILD/datasheet.css"
RESOURCE_PATH=".:$(pwd)"

pandoc dashboard-datasheet.md \
  -o "$BUILD/Dashboard-Datasheet.html" \
  --from=markdown \
  --to=html5 \
  --standalone \
  --resource-path="$RESOURCE_PATH" \
  --lua-filter=datasheet-pages.lua \
  --css=datasheet.css \
  --metadata title="Dashboard Datasheet — BriteCore RealTime Dashboards"

echo "  -> $BUILD/Dashboard-Datasheet.html"

# Optional DOCX for sharing
pandoc dashboard-datasheet.md \
  -o "$BUILD/Dashboard-Datasheet.docx" \
  --from=markdown \
  --to=docx \
  --resource-path="$RESOURCE_PATH" \
  --metadata title="Dashboard Datasheet"

echo "  -> $BUILD/Dashboard-Datasheet.docx"

# Landscape PDF (no browser print dialog). Uses same print CSS as File → Print.
if command -v weasyprint &>/dev/null; then
  (cd "$BUILD" && weasyprint Dashboard-Datasheet.html Dashboard-Datasheet.pdf)
  echo "  -> $BUILD/Dashboard-Datasheet.pdf  (landscape — WeasyPrint)"
elif python3 "$ROOT/datasheet-pdf.py"; then
  true
else
  echo "  (PDF skipped — install: brew install weasyprint  OR  pip3 install weasyprint)"
fi

echo "Done."
