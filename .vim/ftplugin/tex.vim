set spell

inoremap <Leader># %
inoremap section<TAB> \section{}<ESC>F{a
cnoremap compile :!pdflatex<SPACE>%<CR><CR>
cnoremap apa compile&&biber<SPACE>%:t:r<CR>&&compile

iab teh the
iab latex \LaTeX
iab begindoc \begin{document}<CR>\end{document}<ESC>O
