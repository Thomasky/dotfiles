" .vimrc file by Thomas De Wachter

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a 	" press ALT and click
set bs=2 	" make backspace behave as normal

" Rebind <Leader> key
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" bind Ctrl+<movement> to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Quicksave
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> 	" Quit current window
noremap <Leader>E :qa!<CR> 	" Quit all windows

" Moving between tabs
map <Leader>m <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>

" Map sort function to key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv 	" better indentation
vnoremap > >gv 	" better indentation

" Show whitespace
" MUST be inserted BEFORE colorscheme
" autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Color scheme
set t_Co=256
color wombat256mod

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Show line numbers and length
set number	" show line numbers
set tw=79	" width of document
set nowrap	" don't auto wrap on load
set fo-=t	" don't auto wrap when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Easy formatting of paragraphs
vmap Q gp
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers use spaces instead of TABs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Setup Pathogen to manage plugins
call pathogen#infect()

" ---
" Python IDE Setup
" ---

" Settings for vim-pwerline
set laststatus=2

" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b 0import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Python folding
set nofoldenable




























