# vim-plugin-fit-key-with-space-vim
vim-plugin-fit-key-with-space-vim

## Introduction

This vim plugin is fit key map for my self with [space-vim](https://github.com/liuchengxu/space-vim).


## Map

> Not all. Just Introduction. Please read [plugin/FitKey.vim](plugin/FitKey.vim) to find all key map.


## Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous Window |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next Window |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious) |  To Previous Buffer |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext) | To Next Buffer |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious) | To Previous TabPage |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext) | To Next TabPage |


## TabPage

| Key | Map | Description |
| --- | --- | --- |
| `<Space><Space>t` | [:tabnew](https://vimhelp.org/tabpage.txt.html#:tabnew) | New TabPage |
| `<Space><Space>f` | [:tabnew&lt;CR&gt;:edit&lt;Space&gt;](https://vimhelp.org/tabpage.txt.html#:tabnew) | New tabpage and wait for user input file path |
| `<Space><Space>e` | [:tabedit&lt;Space&gt;](https://vimhelp.org/tabpage.txt.html#:tabedit) | Edit file on new tabpage) |


## My Environment

* ubuntu 18.04
* lxqt 25
* xfwm4 4.12.4
* gnome-terminal 3.28.2
* qterminal 0.8.0
