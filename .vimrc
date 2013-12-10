" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" remap map leader key
let mapleader=","

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w
" + <movement>
" " Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" map sort function to a key
vnoremap <Leader>s :sort<CR>

"easier moving of code blocks
vnoremap < <gv "better intendation
vnoremap > >gv "better intendation

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

" use pathogen to manage plugins
execute pathogen#infect()

" settings for vim-powerline
set laststatus=2

" settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" map ii to leave insert mode
imap ii <Esc>

" map cursor keys to hjkl (due to using neo layout)
nmap <Up> k
nmap <Down> j
nmap <Left> h
nmap <Right> l

" enable PEP8 checks
let g:pep8_map='<leader>8'

" automatic execution of pep8 check for python files
autocmd BufWritePost *.py call Flake8()

