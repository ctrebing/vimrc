" map ii to leave insert mode
imap ii <Esc>

" map cursor keys to hjkl (due to using neo layout)
nmap <Up> k
nmap <Down> j
nmap <Left> h
nmap <Right> l

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w
" + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" set wildmode to do autocomplete with ex commands to show all completions
" and complete to the longest full match part
set wildmode=longest,list

" better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" remap map leader key
let mapleader=","

" key mappings for easier split window navigation
" they adher to the neo cursor keys
nnoremap <C-i> <C-w>h
nnoremap <C-e> <C-w>l
nnoremap <C-a> <C-w>j
nnoremap <C-l> <C-w>k

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" color schema
set t_Co=256
color wombat256mod

" enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" showing line numbers and length
set number " show line numbers
set tw=79  " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap text when writing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" real programmers don't use tabs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" only use decimal number format
set nrformats=

" set location of tag file
set tags=tags;/

" use pathogen to manage plugins
execute pathogen#infect()
execute pathogen#helptags()

" settings for vim-powerline
" Always show statusline
set laststatus=2

" settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" settings for NERDTree
map <Leader>nt :NERDTree<CR>

" settings for Rope
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
" use <Leader>f to fold/unfold under cursor 
" and <Leader>F to fold/unfold file
set nofoldenable

" enable PEP8 checks
let g:pep8_map='<leader>8'

" automatic execution of pep8 check for python files
" autocmd BufWritePost *.py call Flake8()

" configuration for vim-notes
let g:notes_directories = ['~/Dokumente/notes/']

" settings for easier buffer handling
noremap <leader>bd :Bclose<CR>      " Close the buffer.
noremap <leader>bl :ls<CR>          " List buffers.
noremap <leader>bn :bn<CR>          " Next buffer.
noremap <leader>bp :bp<CR>          " Previous buffer.
noremap <leader>bt :b#<CR>          " Toggle to most recently used buffer.
noremap <leader>bx :Bclose!<CR>     " Close the buffer & discard changes.

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
