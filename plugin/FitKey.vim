
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Orignal
""

" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim
" https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/localleader.vim

""
""" Tail: Orignal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Buffer
""

" ## switch buffer
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
"nnoremap <C-Up> :bprevious<CR>
"nnoremap <C-Down> :bnext<CR>


""
""" Tail: Buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Window
""

"" ## switch window
nnoremap <Tab> <C-w>w " ## use <Tab> or <C-i>
nnoremap <BS> <C-w>W


" ## current window only
"nnoremap ,wa <C-w>o
nnoremap ,wa :only<CR> " let me know which command


" ## hide
nnoremap ,h :hide<CR>

""
""" Tail: Window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabPage
""

"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap ,u :redraw<CR> "  for orignal <C-l>


nnoremap <Space><Space>t :tabnew<CR>
nnoremap <Space><Space>e :tabedit<Space>
nnoremap <Space><Space>f :tabnew<CR>:edit<Space>

""
""" Tail: TabPage
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
