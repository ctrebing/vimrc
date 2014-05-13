" remap Escape Key
inoremap <CR> <Esc>
"   Initially, pressing Enter returns to normal mode.
"   In insert mode, pressing Shift-Enter enters "multiline" mode, meaning
"     that pressing Enter will insert a newline.
"   In insert mode, after pressing Shift-Enter to enter "multiline"
"     mode, pressing Shift-Enter again exits (returns Vto normal mode). 

" more details: http://vim.wikia.com/wiki/Avoid_the_escape_key
"function! ToggleEnterMapping()
  "if empty(mapcheck('<CR>', 'i'))
    "inoremap <CR> <Esc>`^
    "return "\<Esc>"
  "else
    "iunmap <CR>
    "return "\<CR>"
  "endif
"endfunction
"call ToggleEnterMapping()
"inoremap <expr> <C-CR> ToggleEnterMapping()
" Optional (so <CR> cancels prefix, selection, operator).
"nnoremap <CR> <Esc>
"vnoremap <CR> <Esc>gV
"onoremap <CR> <Esc>

" map cursor keys to hjkl (due to using neo layout)
nmap <Up> k
nmap <Down> j
nmap <Left> h
nmap <Right> l

" key mappings for easier split window navigation
" they adher to the neo cursor keys
nnoremap <C-i> <C-w>h
nnoremap <C-e> <C-w>l
nnoremap <C-a> <C-w>j
nnoremap <C-l> <C-w>k

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

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" color schema
set t_Co=256
color wombat256mod

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

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

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
" use <Leader>f to fold/unfold under cursor 
" and <Leader>F to fold/unfold file
set nofoldenable

" configuration for vim-notes
let g:notes_directories = ['~/Dokumente/notes/']
let g:notes_suffix = '.txt'
let g:notes_smart_quotes = 0

" settings for easier buffer handling
noremap <leader>bd :Bclose<CR>
noremap <leader>bl :ls<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bp :bp<CR>
noremap <leader>bt :b#<CR>
noremap <leader>bx :Bclose!<CR>

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
let g:pymode_doc = 0
"let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_cwindow = 1
let g:pymode_lint_message = 1
" Auto check on save
let g:pymode_lint_on_write = 1
"skip errors and warnings
"E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc 
"E501 line too long
"E12{1,2,6,7,8} continuation line intendation errors
let g:pymode_lint_ignore = "E501,E12"

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

" open found definitions in same buffer
let g:pymode_rope_goto_definition_cmd = 'e'

" Don't autofold code
let g:pymode_folding = 0

" Don't autocomplete on dot
let g:pymode_rope_complete_on_dot = 1

" disable preview window for autocompletion
set completeopt-=preview

