" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

syntax enable
"
set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set hidden

" }}} 







"NO FISH!!!!
set shell=/bin/bash
"Mikes stuff in VIM"

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
" For plug-ins to load correctly.
filetype plugin indent on





" Format Options {{{

" Automatically wrap text that extends beyond the screen length.
set wrap
" set textwidth=79
"set formatoptions=tcqrn1
"set tabstop=2 not using tabs, supposedly helpful with java
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" make break indents pretier
set showbreak=>>
set breakindentopt=shift:4

"make backspace behave comfortbly in insert mode.
set backspace=indent,eol,start

" }}}


" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Speed up scrolling in Vim
set ttyfast

" Display options
set showmode
"set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set list
" Show line numbers
set number
set relativenumber
" Set status line display
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" Vexplore borwser to take up 1/4 of page
let g:netrw_winsize = 25
"open new file from netrw in a new hotizantal (2 if for vertical split
let g:netrw_browse_split = 1
"get rid of its ugly banner
let g:netrw_banner = 0
" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase




"Scroll between tabs easily"
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
"jj esc
imap jj <Esc>
"dont let mac clipboard override y and p
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

set termguicolors
"colorscheme rigel
let g:rigel_airline = 1
let g:airline_theme = 'rigel'
let g:rigel_lightline = 1
"let g:lightline = { 'colorscheme': 'rigel' }
set background=dark


"copy and paste in and out of vim
set clipboard=unnamedplus

"make d be delete instead of cut
nnoremap d "_d
vnoremap d "_d

" Dont override a yank after override, just save yank in 0 registy
nnoremap p "0p

"No swp files
set nobackup
set noswapfile
set noundofile

" Nice solution to o's putting you into insert mode : 3/o gives you 3 new
" lines below!
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

"FUNCTIONS
"format jsons
com! FormatJSON %!python -m json.tool
"End of Mikes stuff"

