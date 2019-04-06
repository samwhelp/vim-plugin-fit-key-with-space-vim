# vim-plugin-fit-key-with-space-vim

* vim-plugin-fit-key-with-space-vim ([GitHub](https://github.com/samwhelp/vim-plugin-fit-key-with-space-vim))

## Introduction

This vim plugin is fit key map for my self with [space-vim](https://github.com/liuchengxu/space-vim).


## Map

> Not all. Just Introduction. Please read [plugin/FitKey.vim](plugin/FitKey.vim) to find all key map.


## Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous Window |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next Window |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious)&lt;CR&gt; |  To Previous Buffer |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext)&lt;CR&gt; | To Next Buffer |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious)&lt;CR&gt; | To Previous TabPage |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext)&lt;CR&gt; | To Next TabPage |


## TabPage

| Key | Map | Description |
| --- | --- | --- |
| `<Space><Space>t` | [:tabnew](https://vimhelp.org/tabpage.txt.html#:tabnew)&lt;CR&gt; | New TabPage |
| `<Space><Space>f` | [:tabnew](https://vimhelp.org/tabpage.txt.html#:tabnew)&lt;CR&gt;[:edit](https://vimhelp.org/editing.txt.html#:edit)&lt;Space&gt; | New tabpage and wait for user input file path |
| `<Space><Space>e` | [:tabedit](https://vimhelp.org/tabpage.txt.html#:tabedit)&lt;Space&gt; | Edit file on new tabpage) |


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
