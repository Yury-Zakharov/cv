#!/usr/bin/env python3
"""
Add invisible (render-mode 3) keywords to the last page of a PDF.

The text is completely invisible to PDF viewers but is extracted by
tools such as PyMuPDF / pymupdf4llm (appears appended after the real content).

Usage:
    python add_additional_keywords.py input.pdf keywords.txt -o output.pdf

keywords.txt format:
    one keyword or short phrase per line
    empty lines and lines starting with # are ignored
"""

from __future__ import annotations

import argparse
import sys
from io import BytesIO
from pathlib import Path

from pypdf import PdfReader, PdfWriter
from reportlab.pdfgen import canvas


def read_keywords(path: Path) -> str:
    """Read keywords file (one per line). Return space-joined string."""
    lines = []
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        lines.append(line)
    if not lines:
        raise SystemExit(f"No keywords found in {path}")
    return " ".join(lines)


def add_additional_keywords(
    input_pdf: Path,
    keywords: str,
    output_pdf: Path,
    *,
    font_size: float = 1.0,
    x: float = 10.0,
    y: float = 8.0,
) -> None:
    """
    Stamp invisible text onto the last page of input_pdf and write to output_pdf.

    - render mode 3 (neither fill nor stroke) → completely invisible
    - tiny font, near bottom edge → no visual impact, always extracted
    - only the last page is modified; page count stays the same
    """
    reader = PdfReader(str(input_pdf))
    if len(reader.pages) == 0:
        raise SystemExit("Input PDF has no pages")

    writer = PdfWriter()

    # Get media box of the last page (handles non-letter sizes)
    last = reader.pages[-1]
    width = float(last.mediabox.width)
    height = float(last.mediabox.height)

    # Build a one-page transparent overlay with invisible text
    packet = BytesIO()
    c = canvas.Canvas(packet, pagesize=(width, height))
    t = c.beginText()
    t.setTextRenderMode(3)          # 3 = invisible
    t.setTextOrigin(x, y)
    t.setFont("Helvetica", font_size)
    t.textLine(keywords)
    c.drawText(t)
    c.save()
    packet.seek(0)

    overlay_page = PdfReader(packet).pages[0]

    for i, page in enumerate(reader.pages):
        if i == len(reader.pages) - 1:
            # merge_page draws the overlay on top; because of mode 3 it is invisible
            page.merge_page(overlay_page)
        writer.add_page(page)

    # Preserve metadata if present
    if reader.metadata:
        writer.add_metadata(reader.metadata)

    output_pdf.parent.mkdir(parents=True, exist_ok=True)
    with open(output_pdf, "wb") as f:
        writer.write(f)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Add invisible keywords to the last page of a PDF "
                    "(extracted by PyMuPDF / pymupdf4llm, invisible to viewers)."
    )
    parser.add_argument("input_pdf", type=Path, help="Source PDF (e.g. from RenderCV)")
    parser.add_argument(
        "keywords_file",
        type=Path,
        help="Text file with one keyword/phrase per line",
    )
    parser.add_argument(
        "-o",
        "--output",
        type=Path,
        required=True,
        help="Output PDF path",
    )
    parser.add_argument(
        "--font-size",
        type=float,
        default=1.0,
        help="Font size of additional text (default: 1.0 pt)",
    )
    parser.add_argument(
        "--y",
        type=float,
        default=8.0,
        help="Y position from bottom of last page (default: 8 pt)",
    )
    args = parser.parse_args()

    if not args.input_pdf.is_file():
        sys.exit(f"Input PDF not found: {args.input_pdf}")
    if not args.keywords_file.is_file():
        sys.exit(f"Keywords file not found: {args.keywords_file}")

    keywords = read_keywords(args.keywords_file)
    add_additional_keywords(
        args.input_pdf,
        keywords,
        args.output,
        font_size=args.font_size,
        y=args.y,
    )
    print(f"Wrote {args.output} (additional keywords added to last page)")


if __name__ == "__main__":
    main()
