#!/usr/bin/env bash
# Six separate DOCX files for help-site navigation: one overview + five dashboards.
# Run from repo root: ./build-hierarchical-docx.sh
# Requires: pandoc, python3 (fix-docx-table-rows.py)
# Publish all outputs from OUT_DIR in the same folder so Main's links resolve.

set -e
cd "$(dirname "$0")"
ROOT="$(pwd)"
OUT_DIR="$ROOT/build/hierarchical-docx"
mkdir -p "$OUT_DIR"

if [ -d "assets" ]; then
  rm -rf "$ROOT/build/assets"
  cp -R assets "$ROOT/build/assets"
fi
RESOURCE_PATH=".:$ROOT:$ROOT/build"

REFERENCE_OPTS=()
if [ -n "${REFERENCE_DOC:-}" ] && [ -f "$REFERENCE_DOC" ]; then
  REFERENCE_OPTS=(--reference-doc="$REFERENCE_DOC")
fi

FILTER_TABLE=(--lua-filter=docx-table-widths.lua)

# Dashboard .md files link to dashboards.md#chart-options for the combined doc.
# For standalone DOCX, point to the overview file in the same folder.
rewrite_chart_link() {
  sed 's|](dashboards.md#chart-options-all-dashboards)|](BriteCore-Dashboards-Main.docx)|g'
}

build_one() {
  local src="$1" dest="$2" title="$3"
  pandoc "$src" \
    -o "$OUT_DIR/$dest" \
    --resource-path="$RESOURCE_PATH" \
    --from=markdown \
    --to=docx \
    "${FILTER_TABLE[@]}" \
    "${REFERENCE_OPTS[@]}" \
    --toc \
    --toc-depth=3 \
    --metadata title="$title"
  python3 "$ROOT/fix-docx-table-rows.py" "$OUT_DIR/$dest"
  echo "  -> $OUT_DIR/$dest"
}

build_dashboard() {
  local src="$1" dest="$2" title="$3"
  rewrite_chart_link < "$ROOT/$src" | pandoc \
    -o "$OUT_DIR/$dest" \
    --resource-path="$RESOURCE_PATH" \
    --from=markdown \
    --to=docx \
    "${FILTER_TABLE[@]}" \
    "${REFERENCE_OPTS[@]}" \
    --toc \
    --toc-depth=3 \
    --metadata title="$title"
  python3 "$ROOT/fix-docx-table-rows.py" "$OUT_DIR/$dest"
  echo "  -> $OUT_DIR/$dest"
}

echo "Building hierarchical DOCX set (6 files) into $OUT_DIR/ ..."

build_one "dashboards-main.md" "BriteCore-Dashboards-Main.docx" "BriteCore RealTime Dashboards — Overview"
build_dashboard "claims-manager-dashboard.md" "BriteCore-Dashboards-Claims-Manager.docx" "Claims Manager Dashboard"
build_dashboard "ceo-dashboard.md" "BriteCore-Dashboards-CEO.docx" "CEO Dashboard"
build_dashboard "agency-principal-dashboard.md" "BriteCore-Dashboards-Agency-Principal.docx" "Agency Principal Dashboard"
build_dashboard "cfo-dashboard.md" "BriteCore-Dashboards-CFO.docx" "CFO Dashboard"
build_dashboard "underwriting-manager-dashboard.md" "BriteCore-Dashboards-Underwriting-Manager.docx" "Underwriting Manager Dashboard"

echo ""
echo "Done. Upload all six .docx files from build/hierarchical-docx/ to the same help-site folder."
