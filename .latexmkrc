# latexmk configuration — used by Overleaf and by local `latexmk` builds.
$pdf_mode  = 1;   # produce PDF with pdflatex
$pdflatex  = 'pdflatex -shell-escape -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$max_repeat = 5;  # allow enough passes for minitoc / ToC / LoF / LoT to converge
