# Exporting Dashboards Documentation

The docs are written in Markdown (`.md`). To publish as **PDF** or **Word (DOCX)** with links and images, use the build script or the commands below.

---

## Quick start

From the `DashboardsDoc` folder, run:

```bash
chmod +x build-docs.sh   # once
./build-docs.sh
```

Outputs go into the **`build/`** folder:

| File / folder | Description |
|---------------|-------------|
| `BriteCore-Dashboards-Doc.docx` | Word document with table of contents and links (internal bookmarks). Images are embedded. |
| `BriteCore-Dashboards-Doc.html` | Single HTML file. Open in a browser; use **File → Print → Save as PDF** to get a PDF with clickable links. |
| `build/assets/` | Copy of `assets/` so the HTML file’s image links (`assets/...`) resolve when you open the HTML from `build/`. |

You can move or share the whole **`build/`** folder; the HTML will still show all images.

### Hierarchical DOCX (help site — 6 files)

For navigation with **separate pages per dashboard**, run:

```bash
chmod +x build-hierarchical-docx.sh   # once
./build-hierarchical-docx.sh
```

Outputs: **`build/hierarchical-docx/`**

| File | Contents |
|------|----------|
| `BriteCore-Dashboards-Main.docx` | Overview, chart options, index with links to each dashboard file |
| `BriteCore-Dashboards-Claims-Manager.docx` | Claims Manager only |
| `BriteCore-Dashboards-CEO.docx` | CEO only |
| `BriteCore-Dashboards-Agency-Principal.docx` | Agency Principal only |
| `BriteCore-Dashboards-CFO.docx` | CFO only |
| `BriteCore-Dashboards-Underwriting-Manager.docx` | Underwriting Manager only |

Publish **all six** `.docx` files in the **same folder** on your help site so links between the main doc and each dashboard resolve. The **single combined** Word file (`BriteCore-Dashboards-Doc.docx`) is unchanged and still built by `./build-docs.sh`.

Source for the overview: **`dashboards-main.md`** (distinct from **`dashboards.md`**, which is the first chapter of the combined doc).

---

## Requirements

- **Pandoc** (required): `brew install pandoc`
- **PDF from script**: optional. The script can generate a PDF directly only if you have one of:
  - **LaTeX**: `brew install --cask basictex` (large install)
  - **wkhtmltopdf**: `brew install wkhtmltopdf`

If you don’t install a PDF engine, use the HTML file and **Print → Save as PDF** in your browser.

---

## Manual commands

**DOCX (Word) with TOC and links:**

```bash
pandoc dashboards.md claims-manager-dashboard.md ceo-dashboard.md agency-principal-dashboard.md cfo-dashboard.md underwriting-manager-dashboard.md \
  -o BriteCore-Dashboards-Doc.docx \
  --resource-path=".:$(pwd)" \
  --toc --toc-depth=3 \
  --metadata title="BriteCore RealTime Dashboards"
```

**HTML (then print to PDF in browser):**

```bash
pandoc dashboards.md claims-manager-dashboard.md ceo-dashboard.md agency-principal-dashboard.md cfo-dashboard.md underwriting-manager-dashboard.md \
  -o BriteCore-Dashboards-Doc.html \
  --resource-path=".:$(pwd)" \
  --standalone --toc --toc-depth=3 \
  --metadata title="BriteCore RealTime Dashboards"
```

**PDF (only if you have LaTeX installed):**

```bash
pandoc dashboards.md claims-manager-dashboard.md ceo-dashboard.md agency-principal-dashboard.md cfo-dashboard.md underwriting-manager-dashboard.md \
  -o BriteCore-Dashboards-Doc.pdf \
  --resource-path=".:$(pwd)" \
  --pdf-engine=pdflatex \
  --toc --toc-depth=3 \
  --metadata title="BriteCore RealTime Dashboards" \
  -V geometry:margin=1in
```

---

## Links and images

- **DOCX**: Links in the index (e.g. “Full documentation” for each dashboard) become internal Word bookmarks to the corresponding section. Images from the `assets/` folder are embedded.
- **HTML / Print to PDF**: Same links work as in-page anchors; images are loaded from `assets/` when opening the HTML from this folder (or use `--resource-path` so paths resolve when opening the file).

Run the script from the **DashboardsDoc** directory so relative paths like `assets/...` resolve correctly.
