

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Orignal {
""

" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim
" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/localleader.vim

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

	let l:leader['name'] =  'space-vim root new'

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
	let localleader['w']['a'] = ['only', 'Only'] " space-vim key is [<Space>wo]


	"" ## hide
	" ,h
	let localleader['h'] = [':hide', 'Hide']

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

	" ## ,u
	let l:localleader['u'] = [':redraw', 'Redraw'] "  for orignal <C-l>


	" ## <Space><Space>t
	let l:leader[' ']['t'] = [':tabnew', 'New Tab']
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

	try
		call s:Map()
	catch
		"echo 'error'
		return
	finally
		return
	endtry

endfunction

au VimEnter * call s:Init()

""
""" Tail: OnVimEnter }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
