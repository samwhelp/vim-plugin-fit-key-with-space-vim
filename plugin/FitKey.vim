

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Docs {
""

" https://github.com/liuchengxu/space-vim/wiki/Loading-process
" https://github.com/liuchengxu/space-vim/blob/master/layers/LAYERS.md

""
""" Tail: Docs }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Orignal {
""

" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim
" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/localleader.vim

" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim

""
""" Tail: Orignal }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapPre {
""

function! s:MapPre () abort
	"" call this first
	let l:leader = g:spacevim#map#leader#desc
	let l:localleader = g:spacevim#map#localleader#desc

	"let l:leader['name'] =  'space-vim root'

	"" ## ,w
	if !has_key(l:localleader, 'w')
		let l:localleader['w'] = {'name': '+prefix'}
	endif





endfunction

""
""" Tail: MapPre }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapAboutBuffer {
""

function! s:MapAboutBuffer () abort
	"" ## call this first
	"let l:leader = g:spacevim#map#leader#desc
	"let l:localleader = g:spacevim#map#localleader#desc


	"" ## switch buffer
	nnoremap <C-j> :bprevious<CR>
	nnoremap <C-k> :bnext<CR>
	"nnoremap <C-Up> :bprevious<CR>
	"nnoremap <C-Down> :bnext<CR>
	" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim

endfunction


""
""" Tail: MapAboutBuffer }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapAboutWindow {
""

function! s:MapAboutWindow () abort
	"" call this first
	let l:leader = g:spacevim#map#leader#desc
	let l:localleader = g:spacevim#map#localleader#desc


	"" ## switch window
	nnoremap <Tab> <C-w>w " ## use <Tab> or <C-i>
	nnoremap <BS> <C-w>W


	"" ## current window only
	" ,wa
	let localleader['w']['a'] = ['only', 'close-other-windows'] " space-vim key is [<Space>wo]


	"" ## hide
	" ,h
	let localleader['h'] = [':hide', 'hide']

endfunction

""
""" Tail: MapAboutWindow }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapAboutTabPage {
""

function! s:MapAboutTabPage () abort
	"" ## call this first
	let l:leader = g:spacevim#map#leader#desc
	let l:localleader = g:spacevim#map#localleader#desc


	"" ## switch tabpage
	"nnoremap <C-Left> :tabprevious<CR>
	"nnoremap <C-Right> :tabnext<CR>
	nnoremap <C-h> :tabprevious<CR>
	nnoremap <C-l> :tabnext<CR>
	" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim

	" ## ,u
	let l:localleader['u'] = [':redraw', 'redraw'] "  for orignal <C-l>


	" ## <Space><Space>t
	let l:leader[' ']['t'] = [':tabnew', 'new-tab']
	nnoremap <Space><Space>e :tabedit<Space>
	nnoremap <Space><Space>f :tabnew<CR>:edit<Space>

endfunction

""
""" Tail: MapAboutTabPage }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: OnVimEnter {
""

function! s:Map () abort
	" call this first
	"let d = g:spacevim#map#leader#desc

	call s:MapPre()

	call s:MapAboutBuffer()
	call s:MapAboutWindow()
	call s:MapAboutTabPage()


endfunction

function! s:Init () abort
	"echom 'TryMap'
	try
		call s:Map()
	catch
		"echom 'ErrorTryMap'
		return
	finally
		return
	endtry

endfunction

" This does't work on [$ nvim ~/.spacevim] but work on [$ nvim]
" " https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/packages.vim#L23
" augroup FitKey
" 	autocmd!
" 	autocmd VimEnter * call s:Init()
" augroup END

function! s:Startify () abort
	if !argc()
		try
			call plug#load('vim-startify')
			silent! Startify
		catch
			"echom 'Error Startify'
			return
		finally
			return
		endtry
	endif
endfunction

function! s:MyVimEnterSpacevimStart () abort
	"echom 'MyVimEnterSpacevimStart'
	try

		call s:Map()
		call s:Startify()

	catch
		"echom 'Error MyVimEnterSpacevimStart'
		return
	finally
		return
	endtry

endfunction

" This work
augroup spacevimStart
	autocmd!
	autocmd VimEnter * call s:MyVimEnterSpacevimStart()
augroup END


" https://github.com/liuchengxu/space-vim/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aclose+VimEnter+
" https://github.com/liuchengxu/space-vim/issues/8
" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/packages.vim#L20
"
" function! s:Test1 () abort
" 	echom 'Test1'
" endfunction
"
" function! s:Test2 () abort
" 	echom 'Test2'
" endfunction

" augroup spacevimStart
" 	autocmd!
" 	autocmd VimEnter *
" 	\   if !argc()
" 	\|		call s:Test1()
" 	\|		silent! s:Test2()
" 	\|  endif
" augroup END


""
""" Tail: OnVimEnter }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
