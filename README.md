# vim-plugin-fit-key-with-space-vim

* vim-plugin-fit-key-with-space-vim ([GitHub](https://github.com/samwhelp/vim-plugin-fit-key-with-space-vim))


## Browse

* [My Map](#my-map)
* [Howto Install](#howto-install)


## Introduction

This vim plugin is fit key map for my self with [space-vim](https://github.com/liuchengxu/space-vim).


## Orignal Map

* :help [normal-index](https://vimhelp.org/index.txt.html#normal-index)
* space-vim/layers/+distributions/better-defaults/[README.md](https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/README.md)
* space-vim/core/autoload/spacevim/map/[leader.vim](https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim)
*  space-vim/core/autoload/spacevim/map/[localleader.vim](https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/localleader.vim)
* space-vim/layers/+distributions/better-defaults/[keybindings.vim](https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bdistributions/better-defaults/keybindings.vim)
* vim-better-default/plugin/[default.vim](https://github.com/liuchengxu/vim-better-default/blob/master/plugin/default.vim)
* ...


## My Map

> Maybe not all. Just introduction. Please read [plugin/FitKey.vim](plugin/FitKey.vim) to find all key map.

> Just fit on Normal Mode

* [Quick Switch](#quick-switch)
* [Delete Buffer](#delete-buffer)
* [Quit](#quit)
* [Hide](#hide)
* [Only](#only)
* [Buffer List](#buffer-list)
* [Save](#save)
* [TabPage](#tabpage)


## Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous Window |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next Window |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious)&lt;CR&gt; |  To Previous Buffer |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext)&lt;CR&gt; | To Next Buffer |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious)&lt;CR&gt; | To Previous TabPage |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext)&lt;CR&gt; | To Next TabPage |


## Delete Buffer

| Key | Map | Description | Notice |
| --- | --- | --- | --- |
| `,q` | [:bdelete](https://vimhelp.org/windows.txt.html#:bdelete) | delete current buffer | single |
| `,x` | [:%bdelete](https://vimhelp.org/windows.txt.html#:bdelete) | delete all buffer | all |
| `,z` | [:bdelete!](https://vimhelp.org/windows.txt.html#:bdelete) | force delete current buffer | single |
| `,c` | [:%bdelete!](https://vimhelp.org/windows.txt.html#:bdelete) | force delete all buffer | all |


## Quit

| Key | Map | Description | Notice |
| --- | --- | --- | --- |
| `\q` | [:q](https://vimhelp.org/editing.txt.html#:q) | quit | single |
| `\x` | [:qa](https://vimhelp.org/editing.txt.html#:qa) | quit all | all |
| `\z` | [:q!](https://vimhelp.org/editing.txt.html#:q) | force quit | single |
| `\c` | [:qa!](https://vimhelp.org/editing.txt.html#:qa) | force quit all | all |


## Hide

| Key | Map | Description | Notice |
| --- | --- | --- | --- |
| `,h` | [:hide](https://vimhelp.org/windows.txt.html#:hide) | Hide current buffer. | single |


## Only

| Key | Map | Description |
| --- | --- | --- |
| `,wa` | [:only](https://vimhelp.org/windows.txt.html#:only) | to close other window, then all buffer will hide, if set [hidden](https://vimhelp.org/options.txt.html#'hidden'). |
| `<Space><Space>wa` | [:tabonly](https://vimhelp.org/tabpage.txt.html#:tabonly) | wa to close other tabpage, then all buffer will hide, if set [hidden](https://vimhelp.org/options.txt.html#'hidden'). |

> Compare with `,x`, `,c`, `\x`, `\c`, `,h`。


## Buffer List

| Key | Map | Description |
| --- | --- | --- |
| `,b` | [:ls](https://vimhelp.org/windows.txt.html#:ls) | Show all buffers. |

> space-vim Use `<Space>bb` can list and chose


## Save

| Key | Map | Description |
| --- | --- | --- |
| `,s` | [:w](https://vimhelp.org/editing.txt.html#:w) | Write the whole buffer to the current file. |

> space-vim Use `<Space>fs` bind [:update](https://vimhelp.org/editing.txt.html#:update).


## TabPage

| Key | Map | Description |
| --- | --- | --- |
| `<Space><Space>s` | [:tab split](https://vimhelp.org/tabpage.txt.html#:tab)&lt;CR&gt; | Opens current buffer in new tab page |
| `<Space><Space>t` | [:tabnew](https://vimhelp.org/tabpage.txt.html#:tabnew)&lt;CR&gt; | New TabPage |
| `<Space><Space>f` | [:tabnew](https://vimhelp.org/tabpage.txt.html#:tabnew)&lt;CR&gt;[:edit](https://vimhelp.org/editing.txt.html#:edit)&lt;Space&gt; | New tabpage and wait for user input file path |
| `<Space><Space>e` | [:tabedit](https://vimhelp.org/tabpage.txt.html#:tabedit)&lt;Space&gt; | Edit file on new tabpage) |

> I use [t](https://github.com/samwhelp/tool-svim-core/blob/master/plugin/Svim.vim#L745) for tabpage. space-vim use `<Space><Space>` for tabpage. It's ok.


## My Environment

* ubuntu 18.04
* lxqt 25
* xfwm4 4.12.4
* gnome-terminal 3.28.2
* qterminal 0.8.0
* vim 8.0
* nvim 0.2.2


## Related Projects

* [vim-plugin-fit-key-raw-with-space-vim](https://github.com/samwhelp/vim-plugin-fit-key-raw-with-space-vim)


## Howto Install

### Install space-vim

Please install [space-vim](https://github.com/liuchengxu/space-vim) first!

Then config. Just one line.

``` vim
Plug 'samwhelp/vim-plugin-fit-key-with-space-vim'
```

### Config ~/.spacevim

You can edit 「[~/.spacevim](https://github.com/liuchengxu/space-vim/blob/master/init.spacevim#L30)」like this.

``` vim
function! UserInit()
	Plug 'samwhelp/vim-plugin-fit-key-with-space-vim'
endfunction
```

### :PlugInstall

you can run [vim](http://manpages.ubuntu.com/manpages/bionic/en/man1/vim.1.html) or [nvim](http://manpages.ubuntu.com/manpages/bionic/en/man1/nvim.1.html), then run [:PlugInstall](https://github.com/junegunn/vim-plug#commands).

or just run on shell.

``` sh
$ vim -nNRe -c 'try | :PlugInstall | finally | :qa! | entry'
```

or not quit, run

``` sh
$ vim -nNRe -c ':PlugInstall'
```

It's done.

or can run

``` sh
$ vim -nNRe +PlugInstall +qa!
```

or can run

``` sh
$ vim -nNRe +PlugInstall
```
