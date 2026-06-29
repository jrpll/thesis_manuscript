# PhD Thesis — Manuscript

LaTeX source for my PhD thesis (generative models for images: stochastic
interpolants, diffusion transformers, image editing).

## Build

```bash
latexmk        # builds build/main.pdf (config in .latexmkrc)
latexmk -c     # clean auxiliary files
latexmk -C     # clean everything including the PDF
```

In VS Code (LaTeX Workshop extension): just save `main.tex` — it builds
automatically and shows the PDF in a tab. `cmd`+click jumps between source and PDF.

## Structure

```
main.tex              root: documentclass + \input of everything
preamble/             packages, style (fonts/geometry/headers), custom macros
frontmatter/          title page, abstract/résumé
chapters/             one .tex per chapter
figures/              images (referenced via \graphicspath)
bib/references.bib    bibliography database (biblatex + biber)
build/                compiled output (git-ignored)
```

## Notes
- Engine: **pdflatex**; fonts: **newtx** (Times-style text + matching math).
- Main language is **English** with French available — see `preamble/packages.tex`.
- Editorial macros: `\todo{...}` and `\note{...}` render in draft mode; set
  `\draftfalse` in `preamble/commands.tex` to hide them for the final build.
