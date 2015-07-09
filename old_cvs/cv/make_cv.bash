#!/bin/bash

pdflatex CV.tex
rm *~ *aux *log *out *dvi
scp CV.pdf CV.tex kern.srcf.ucam.org:/home/rm438/public_html/files/