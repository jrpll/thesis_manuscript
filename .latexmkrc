# latexmk configuration — used by both the CLI (`latexmk`) and LaTeX Workshop.
$pdf_mode = 1;   # 1 = pdflatex
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error %O %S';

# Keep all auxiliary/output files out of the source tree.
$out_dir = 'build';
$aux_dir = 'build';

# biber is detected automatically because the document uses biblatex.
@default_files = ('main.tex');

# Extra extensions to remove on `latexmk -c`.
$clean_ext = 'synctex.gz run.xml bbl bcf';
