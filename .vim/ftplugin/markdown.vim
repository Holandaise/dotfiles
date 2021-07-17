nnoremap <leader>mdp :call PublishMD("pdf")<return>
nnoremap <leader>mdh :call PublishMD("html")<return>
inoremap <leader>l []()<esc>0a
inoremap <leader>i ![alt text]()<esc>i
set spell
set thesaurus = "~/.vim/thesaurus/english.txt"

function! PublishMD(mode)
	let file = expand('%')
	let noExt = expand('%:t:r')
	if a:mode ==? "pdf"
		let output = noExt . ".pdf"
		silent execute '!pandoc -tpdf ' . file . ' -o ' . output | redraw!
	elseif a:mode ==? "html"
		let output = noExt . ".html"
		silent execute '!pandoc -s -thtml ' . file . ' -o ' . output | redraw!
	else
		echo "No output format supplied, exiting"
	endif
endfunction
