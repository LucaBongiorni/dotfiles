
"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'

Plug 'scrooloose/syntastic'
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'
"Plug 'Xuyuanp/nerdtree-git-plugin'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

"Plug 'morhetz/gruvbox'
Plug 'dylanaraps/wal'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

Plug 'jalvesaq/Nvim-R'
Plug 'plasticboy/vim-markdown'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
"Plug 'rhysd/vim-grammarous'

Plug 'w0rp/ale'
"Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

Plug 'jceb/vim-orgmode'
"Plug 'joshhartigan/vim-reddit'
"Plug 'itchyny/calendar.vim'

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'nsf/gocode', {'rtp':'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh'}
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fireplace'
Plug 'rust-lang/rust.vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" Change Leader and LocalLeader keys:
let maplocalleader = ','
let mapleader = ';'

set backupdir=/tmp

set nocompatible
filetype plugin on

" Performances 
set synmaxcol=200
let did_install_default_menus=1
set lazyredraw

" Coloration syntaxique
syntax on
"colorscheme gruvbox
set background=dark
colorscheme wal

" Aides visuelles
set ruler
set showcmd
"set relativenumber
set number relativenumber

" Recherche incrémentale
" set hlsearch
set incsearch
set ignorecase
set smartcase
if has ('nvim')
    set inccommand=nosplit
endif
nnoremap <esc> :noh<return><esc>

set autoindent
filetype plugin indent on

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set path+=**
set wildmenu
set wildmode=longest,full

set clipboard+=unnamedplus
set t_Co=256
set encoding=utf8
set linespace=0
set hidden

" Text Wraping
"set textwidth=79
set colorcolumn=80
set wrap
set scrolloff=5

" netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

"let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']
"autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>

"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap gf :e <cfile><cr>
nnoremap <c-w> :sp <cfile><cr>
nnoremap g<CR> g<C-]>
nnoremap <C-]> g<C-]>

nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>k :bdelete<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>w :w<CR>
inoremap <leader>w <C-c>:w<CR>
nmap <leader>l :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
" nnoremap <BS> <PageUp>
" nnoremap <Space> <PageDown>

let g:livepreview_previewer = 'zathura'
let python_hightlight_all=1
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

let g:deoplete#enable_at_startup=1

" Source fichiers de conf à la modification
augroup configurationFiles
  autocmd! BufWritePost init.vim      source %
  autocmd! BufWritePost Xresources    !xrdb -load ~/.Xresources
  autocmd! BufWritePost .Xresources   !xrdb -load ~/.Xresources
augroup END

" Nvim-R

" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1

" R commands in R output are highlighted
let g:Rout_more_colors = 1

" Use Ctrl+Space to do omnicompletion:
if has('nvim') || has('gui_running')
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Airline

"set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
    endif

    " unicode symbols
	let g:airline_left_sep = '»'
	let g:airline_left_sep = '▶'
	let g:airline_right_sep = '«'
	let g:airline_right_sep = '◀'
	let g:airline_symbols.linenr = '␊'
	let g:airline_symbols.linenr = '␤'
	let g:airline_symbols.linenr = '¶'
	let g:airline_symbols.branch = '⎇'
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.paste = 'Þ'
	let g:airline_symbols.paste = '∥'
	let g:airline_symbols.whitespace = 'Ξ'

   " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''


"highlight NonText ctermbg=none
"highlight Normal guibg=NONE ctermbg=NONE

"if exists("g:loaded_webdevicons")
"	call webdevicons#refresh()
"endif


" Vim-markdown preferences
let g:vim_markdown_folding_disabled = 1

" Press \R to start rotating lines and <C-c> (Control+c) to stop.

function! s:RotateString(string)
    let split_string = split(a:string, '\zs')
    return join(split_string[-1:] + split_string[:-2], '')
endfunction

function! s:RotateLine(line, leading_whitespace, trailing_whitespace)
    return substitute(
        \ a:line,
        \ '^\(' . a:leading_whitespace . '\)\(.\{-}\)\(' . a:trailing_whitespace . '\)$',
        \ '\=submatch(1) . <SID>RotateString(submatch(2)) . submatch(3)',
        \ ''
    \ )
endfunction

function! s:RotateLines()
    let saved_view = winsaveview()
    let first_visible_line = line('w0')
    let last_visible_line = line('w$')
    let lines = getline(first_visible_line, last_visible_line)
    let leading_whitespace = map(
        \ range(len(lines)),
        \ 'matchstr(lines[v:val], ''^\s*'')'
    \ )
    let trailing_whitespace = map(
        \ range(len(lines)),
        \ 'matchstr(lines[v:val], ''\s*$'')'
    \ )
    try
        while 1 " <C-c> to exit
            let lines = map(
                \ range(len(lines)),
                \ '<SID>RotateLine(lines[v:val], leading_whitespace[v:val], trailing_whitespace[v:val])'
            \ )
            call setline(first_visible_line, lines)
            redraw
            sleep 50m
        endwhile
    finally
        if &modified
            silent undo
        endif
        call winrestview(saved_view)
    endtry
endfunction

nnoremap <silent> <Plug>(RotateLines) :<C-u>call <SID>RotateLines()<CR>

nmap \R <Plug>(RotateLines)
