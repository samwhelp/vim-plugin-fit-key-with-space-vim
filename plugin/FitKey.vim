

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
		let l:localleader['w'] = {'name': '+window'}
	endif

	"" ## <Space><Space>m
	if !has_key(l:leader[' '], 'm')
		let l:leader[' ']['m'] = {'name': '+tab-move'}
	endif


	"" ## <Space><Space>w
	if !has_key(l:leader[' '], 'w')
		let l:leader[' ']['w'] = {'name': '+tabs'}
	endif


	" ## add <Bslash> WhichKey Tips. (for \)
	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/vim-which-key
	nnoremap <silent> <Bslash> :<c-u>WhichKey  '<Bslash>'<CR>

endfunction

""
""" Tail: MapPre }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapAboutQuit
""
function! s:MapAboutQuit () abort
	"" ## call this first
	let l:leader = g:spacevim#map#leader#desc
	let l:localleader = g:spacevim#map#localleader#desc


	" ## delete buffer
	nnoremap <Bslash>q :q<CR>
	nnoremap <Bslash>x :qa<CR>
	nnoremap <Bslash>z :q!<CR>
	nnoremap <Bslash>c :qa!<CR>


	" ## quit
	nnoremap ,q :bdelete<CR>
	nnoremap ,x :%bdelete<CR>
	nnoremap ,z :bdelete!<CR>
	nnoremap ,c :%bdelete!<CR>
	"let localleader['q'] = ['bdelete', 'delete-current-buffer']
	"let localleader['x'] = ['%bdelete', 'delete-all-buffer']
	"let localleader['z'] = ['bdelete!', 'delete-current-buffer!']
	"let localleader['c'] = ['%bdelete!', 'delete-all-buffer!']

endfunction

""
""" Tail: MapAboutQuit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: MapAboutBuffer {
""

function! s:MapAboutBuffer () abort
	"" ## call this first
	let l:leader = g:spacevim#map#leader#desc
	let l:localleader = g:spacevim#map#localleader#desc


	"" ## switch buffer
	nnoremap <C-k> :bprevious<CR>
	nnoremap <C-j> :bnext<CR>
	"nnoremap <C-Up> :bprevious<CR>
	"nnoremap <C-Down> :bnext<CR>
	" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim


	" ## list buffer
	nnoremap ,b :ls<CR>
	"nnoremap ,b :buffers<CR>
	"nnoremap ,b :files<CR>
	let localleader['b'] = [':ls', 'buffer-list']


	" ## save
	"nnoremap ,s :w<CR>
	"let localleader['s'] = [':w', 'buffer-save']
	nnoremap <S-Tab> :w<CR>
	inoremap <S-Tab> <Esc>:w<CR>a



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
	" ## use <Tab> or <C-i>
	nnoremap <Tab> <C-w>w
	nnoremap <BS> <C-w>W


	" ## resize window
	" :help window-resize
	nnoremap <S-Down> <C-w>-
	nnoremap <S-Up> <C-w>+
	nnoremap <S-Left> <C-w><
	nnoremap <S-Right> <C-w>>


	"" ## current window only
	" ,wa
	let localleader['w']['a'] = [':only', 'close-other-windows'] " space-vim key is [<Space>wo]


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


	" ## <Space><Space> " for tabpage leader

	" ## switch next or previous
	" default gT for tabprevious
	" default gt for tabnext
	" default <C-PageUp> for tabprevious. but gnome-terminal switch tab
	" default <C-PageDown> for tabnext. but gnome-terminal switch tab
	let l:leader[' ']['p'] = [':tabprevious', 'previous-tab'] " ## <Space><Space>p
	let l:leader[' ']['n'] = [':tabnext', 'next-tab'] " ## <Space><Space>n
	let l:leader[' ']['h'] = [':tabprevious', 'previous-tab'] " ## <Space><Space>h
	let l:leader[' ']['l'] = [':tabnext', 'next-tab'] 	" ## <Space><Space>l
	nnoremap <C-h> :tabprevious<CR>
	nnoremap <C-l> :tabnext<CR>
	" https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim
	" ## ,u
	let l:localleader['u'] = [':redraw', 'redraw'] "  for orignal <C-l>


	" ## switch to first or last
	let l:leader[' ']['j'] = [':tabfirst', 'first-tab'] " ## <Space><Space>j
	let l:leader[' ']['k'] = [':tablast', 'last-tab'] " ## <Space><Space>k


	" ## move left or right
	nnoremap <Space><Space>u :-tabmove<CR>
	"nnoremap <Space><Space>i :+tabmove<CR>
	nnoremap <Space><Space>mh :-tabmove<CR>
	"nnoremap <Space><Space>ml :+tabmove<CR>
	let l:leader[' ']['u'] = [':-tabmove', 'tab-move-left'] " ##  <Space><Space>u
	let l:leader[' ']['i'] = [':+tabmove', 'tab-move-right'] " ## <Space><Space>i
	let l:leader[' ']['m']['h'] = [':-tabmove', 'tab-move-left'] " ##  <Space><Space>mh
	let l:leader[' ']['m']['l'] = [':+tabmove', 'tab-move-right'] " ## <Space><Space>ml


	" ## move to first or last
	let l:leader[' ']['m']['j'] = [':0tabmove', 'tab-move-first'] " ##  <Space><Space>mj
	let l:leader[' ']['m']['k'] = [':$tabmove', 'tab-move-last'] " ## <Space><Space>mk



	" ##  n tabmove
	let l:leader[' ']['m']['0'] = [':0tabmove', '0-tabmove'] " ##  <Space><Space>m0
	let l:leader[' ']['m']['1'] = [':1tabmove', '1-tabmove'] " ## <Space><Space>m1
	let l:leader[' ']['m']['2'] = [':2tabmove', '2-tabmove'] " ##  <Space><Space>m2
	let l:leader[' ']['m']['3'] = [':3tabmove', '3-tabmove'] " ## <Space><Space>m3
	let l:leader[' ']['m']['4'] = [':4tabmove', '4-tabmove'] " ##  <Space><Space>m4
	let l:leader[' ']['m']['5'] = [':5tabmove', '5-tabmove'] " ## <Space><Space>m5
	let l:leader[' ']['m']['6'] = [':6tabmove', '6-tabmove'] " ##  <Space><Space>m6
	let l:leader[' ']['m']['7'] = [':7tabmove', '7-tabmove'] " ## <Space><Space>m7
	let l:leader[' ']['m']['8'] = [':8tabmove', '8-tabmove'] " ##  <Space><Space>m8
	let l:leader[' ']['m']['9'] = [':9tabmove', '9-tabmove'] " ## <Space><Space>m9


	" ## open current window to new tabpage
	let l:leader[' ']['s']= [':tab split', 'open-current-window-to-new-tabpage'] " ## <Space><Space>s


	" ## new tabpage or close
	let l:leader[' ']['t'] = [':tabnew', 'new-tab'] " ## <Space><Space>t
	nnoremap <Space><Space>e :tabedit<Space>
	nnoremap <Space><Space>f :tabnew<CR>:edit<Space>
	"nnoremap <Space><Space>c :tabclose<CR> " space-vim default


	" ## quit all
	"nnoremap <Space><Space>qa :qa!<CR>


	" ## close other tabpage
	" use <Space><Space>wa to close other tabpage, then all buffer will hide, if set hidden.
	let l:leader[' ']['w']['a']= [':tabonly', 'close-other-tabs'] " ## <Space><Space>wa
	" Note:
	" use ,c to delete all buffer, then all tapage will close.
	" use ,wa to close other window, then all buffer will hide, if set hidden.
	" use ,h to hide current buffer, then current tapage will close.


	" ## show help page on new tab
	let l:leader[' ']['b']= [':tab help', 'show-help-on-new-tab'] " ## <Space><Space>b


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

	call s:MapAboutQuit()
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
