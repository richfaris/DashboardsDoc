#!/usr/bin/env bash
# Build DashboardsDoc to DOCX and HTML (and optionally PDF).
# Run from this directory: ./build-docs.sh
# Requires: pandoc (brew install pandoc)
# For direct PDF: install a PDF engine, e.g. brew install --cask basictex

set -e
cd "$(dirname "$0")"
BUILD_DIR="build"
mkdir -p "$BUILD_DIR"

# Copy assets into build/ so HTML (and PDF) can resolve image paths when opened from build/
if [ -d "assets" ]; then
  rm -rf "$BUILD_DIR/assets"
  cp -R assets "$BUILD_DIR/assets"
  echo "Copied assets/ into $BUILD_DIR/ for image links."
fi

# Input files in order (main doc first, then each dashboard)
INPUTS=(
  "dashboards.md"
  "claims-manager-dashboard.md"
  "ceo-dashboard.md"
  "agency-principal-dashboard.md"
  "cfo-dashboard.md"
  "underwriting-manager-dashboard.md"
)

# Resolve paths so pandoc finds images (assets/) and, for HTML, the CSS in build/
RESOURCE_PATH=".:$(pwd):$(pwd)/$BUILD_DIR"

echo "Building combined document from ${#INPUTS[@]} files..."

# DOCX: preserves links as internal bookmarks; images embedded.
# Lua filter sets table column widths (narrow Column, wide Description) to reduce wrapping.
# Optional: use a reference.docx with "Table" style at 9pt for smaller table text and fewer wraps.
#   Create: build once, open the output DOCX in Word, set "Table" style to 9pt, Save As reference.docx here.
#   Then:   REFERENCE_DOC=reference.docx ./build-docs.sh
REFERENCE_OPTS=()
if [ -n "${REFERENCE_DOC:-}" ] && [ -f "$REFERENCE_DOC" ]; then
  REFERENCE_OPTS=(--reference-doc="$REFERENCE_DOC")
fi
pandoc "${INPUTS[@]}" \
  -o "$BUILD_DIR/BriteCore-Dashboards-Doc.docx" \
  --resource-path="$RESOURCE_PATH" \
  --from=markdown \
  --to=docx \
  --lua-filter=docx-table-widths.lua \
  "${REFERENCE_OPTS[@]}" \
  --toc \
  --toc-depth=3 \
  --metadata title="BriteCore RealTime Dashboards"

echo "  -> $BUILD_DIR/BriteCore-Dashboards-Doc.docx"

# CSS to shrink images to 50% in HTML output (written into build so href resolves)
mkdir -p "$BUILD_DIR"
cat > "$BUILD_DIR/doc-images.css" << 'EOF'
img { max-width: 50%; height: auto; }
EOF

# HTML: single file with everything embedded (images + CSS). Good for sharing or Print → Save as PDF.
pandoc "${INPUTS[@]}" \
  -o "$BUILD_DIR/BriteCore-Dashboards-Doc.html" \
  --resource-path="$RESOURCE_PATH" \
  --from=markdown \
  --to=html5 \
  --standalone \
  --embed-resources \
  --toc \
  --toc-depth=3 \
  --metadata title="BriteCore RealTime Dashboards" \
  --css="doc-images.css" \
  -V margin-top=20 -V margin-bottom=20

echo "  -> $BUILD_DIR/BriteCore-Dashboards-Doc.html (single file, images and CSS embedded)"
echo ""
echo "Done. Share or open the HTML anywhere; use File → Print → Save as PDF for a PDF with links."

# Optional: direct PDF if an engine is available
if command -v pdflatex &>/dev/null; then
  pandoc "${INPUTS[@]}" \
    -o "$BUILD_DIR/BriteCore-Dashboards-Doc.pdf" \
    --resource-path="$RESOURCE_PATH" \
    --from=markdown \
    --pdf-engine=pdflatex \
    --toc \
    --toc-depth=3 \
    --metadata title="BriteCore RealTime Dashboards" \
    -V geometry:margin=1in
  echo "  -> $BUILD_DIR/BriteCore-Dashboards-Doc.pdf (via pdflatex)"
elif command -v wkhtmltopdf &>/dev/null; then
  # Generate HTML first, then convert to PDF (wkhtmltopdf keeps links)
  pandoc "${INPUTS[@]}" \
    -o "$BUILD_DIR/_temp.html" \
    --resource-path="$RESOURCE_PATH" \
    --from=markdown --to=html5 --standalone --toc --toc-depth=3 \
    --metadata title="BriteCore RealTime Dashboards"
  wkhtmltopdf "$BUILD_DIR/_temp.html" "$BUILD_DIR/BriteCore-Dashboards-Doc.pdf"
  rm -f "$BUILD_DIR/_temp.html"
  echo "  -> $BUILD_DIR/BriteCore-Dashboards-Doc.pdf (via wkhtmltopdf)"
fi
