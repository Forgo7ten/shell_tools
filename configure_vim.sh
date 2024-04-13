#!/bin/bash

echo '" 主题
color desert
" 设置行号
set number
" 启用代码高亮
syntax enable
"高亮搜索
set hlsearch
" 光标立即跳转到搜索的内容
set incsearch

" 设置自动缩进
" 会导致粘贴代码本来含空格时造成额外的空格
"set autoindent

" 1=启动显示状态行, 2=总是显示状态行.
" 设置总是显示状态行,方便看到当前文件名.
set laststatus=2

" 设置状态行显示的内容
set statusline=%F%r\ [HEX=%B][%l,%v,%P]\ %{strftime(\"%H:%M\")}

" 显示还没有输入完整的命令.例如yy命令,输入第一个y会在右下角显示y.
set showcmd

" 高亮显示匹配的括号
set showmatch

" 设置缩进长度=4
set shiftwidth=4

" 输入Tab替换为空格
set expandtab


" ===== 修改映射 =====

" insert模式 映射
" 修改 jj退出insert模式(替换Esc)
inoremap jj <Esc>

" normal模式 映射
" 修改窗口切换按键的映射(上下左右切换vim窗口(多文件中))
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" command命令行模式 映射
" com!
'>> ~/.vimrc