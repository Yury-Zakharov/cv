# Yury Zakharov – CV / Resume

Single source of truth for my professional CV.

## Technology stack
- **Source**: `cv.yaml` (human-readable YAML, validated by RenderCV schema)
- **Engine**: [RenderCV](https://rendercv.com) (Typst typesetting)
- **Outputs** (auto-generated):
  - `render-output/Yury_Zakharov_CV.pdf` – printer-friendly, ATS-compliant
  - `render-output/Yury_Zakharov_CV.html` – semantic HTML
  - `render-output/Yury_Zakharov_CV.md` – ready for GitHub profile README

## Workflow
1. Edit only `cv.yaml`
2. Push to `master` → GitHub Actions automatically re-renders everything
3. Or render locally (NixOS):
   ```bash
   nix develop --command rendercv render cv.yaml --output-folder render-output -nopng

4. Check the additional keywords at the end of the pdf file (not shownon the layout)
   ```bash
    python -c "
    from pypdf import PdfReader
    r = PdfReader('render-output/Yury_Zakharov_CV.pdf')
    t = r.pages[-1].extract_text() or ''
    print(t[-800:])
    "



## GitHub Actions

- Triggers automatically on every push to master
- Can be run manually on any branch (workflow_dispatch)

All rendered files are committed to render-output/ for easy download.
