" These are all the list of plugins I use.
" Vundle is my goto plugin manager.
" To know more about what each plugin does, prepend 'https://github.com/' to any of the plugins in the list below.

" initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion

Plugin 'jiangmiao/auto-pairs'
" explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'
" Show git status of files and containing directories within NerdTree.
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
" configurable statusline/tabline plugin.
Plugin 'itchyny/lightline.vim'
" surroundings: parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'
" syntax highlighting, indenting and autocompletion for the dynamic stylesheet language LESS. Deprecated use.
" Plugin 'groenewege/vim-less'
" Deprecated use
" Plugin 'maksimr/vim-jsbeautify'
" Ability to parse .editorconfig file.
Plugin 'editorconfig/editorconfig-vim'
"Git plugin.
Plugin 'tpope/vim-fugitive'
"Host of Python programming plugins.
Plugin 'python-mode/python-mode'
" JavaScript syntax highlight and indent support.
" Plugin 'pangloss/vim-javascript'
" Syntax highlight for JSX
Plugin 'mxw/vim-jsx'
" Asynchronous lint engine (Can use eslint, prettier, etc. as linters).
Plugin 'dense-analysis/ale'
" Search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-abolish'
" Syntax highlighting for Dart in Vim
Plugin 'dart-lang/dart-vim-plugin'
" Helps vim communicating with a language server
Plugin 'natebosch/vim-lsc'
" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'
" Windows PowerShell support
Plugin 'PProvost/vim-ps1'
" Syntax highlighting and autocompletion for HC Terraform files
Plugin 'hashivim/vim-terraform'

" end plugin definition
call vundle#end()            " required for vundle
