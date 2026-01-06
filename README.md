# CV / Resume

This repository contains my curriculum vitae maintained as a **JSON Resume** document and rendered automatically to **HTML** and **PDF**.

The JSON file is the single source of truth.  
All rendered artefacts are generated from it.

## Structure

``` bash
├── resume.json # Source of truth (JSON Resume format)
├── build/
│ ├── index.html # Web version (jsonresume-theme-even)
│ └── cv.pdf # Print-friendly PDF (StackOverflow theme + print.css)
├── print.css # Print-specific stylesheet for PDF generation
├── cover-letter/
│ ├── template.md # General cover letter template
│ ├── email-template.md # General email template
│ ├── template-finance.md # Finance / regulated systems variant
│ └── README.md # Usage notes for cover letters
└── .github/
└── workflows/
└── render.yml # Automated rendering pipeline
```

## Design principles

- **Single source of truth**  
  `resume.json` is authoritative. HTML and PDF are derived artefacts.

- **Separation of concerns**  
  - Web presentation and print layout are handled separately
  - Print-specific styling lives in `print.css`

- **Minimalism and determinism**  
  - No manual editing of generated files
  - Reproducible builds

- **ATS tolerance**  
  - Schema-compliant JSON Resume format
  - Conservative structure and wording

## Rendering pipeline

Rendering is automated via **GitHub Actions** and runs on:

- manual trigger
- push or merge to the `master` branch

The pipeline performs two independent renders:

1. **Web version**
   - Theme: `jsonresume-theme-even`
   - Output: `build/index.html`

2. **PDF version**
   - Theme: `jsonresume-theme-stackoverflow`
   - HTML rendered first
   - Converted to PDF using WeasyPrint and `print.css`
   - Output: `build/cv.pdf`

Both artefacts are committed back to the repository.

## Notes

- Generated files are committed intentionally for convenience.
- Node and dependency warnings during rendering are tolerated if non-fatal.
- Cover letters in this repository are **templates only**; application-specific letters are kept private.

---
