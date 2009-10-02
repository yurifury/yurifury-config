"Basics
set nocompatible "more useful Vim
set hidden "don't abandon buffers
set history=1000 "more awesome history
set backupdir=~/.vim/bak "backup dir
set directory=~/.vim/tmp "tmp dir
set backspace=2 "set backspace over everything
syntax on "syntax highlighting
filetype on "filetype detection
filetype plugin on "plugin files
filetype indent on "indent files

"menu stuff
set wildmenu "tabcompletion of commands
set wildmode=longest,full "complete common string, then each full match
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png

"searching stuff
set ignorecase "ignore case
set smartcase "but be case-sensitive on uppercase matches
set nohlsearch "don't highlight search phrases
set incsearch "highlight as you type search phrase
"toggle highlight
nmap <silent> <leader>h :set hls!<CR>
set showcmd "show the command being typed
set showmatch "show matching brackets
"
"tabs/trailing character stuff
set list "show trailing chars
set listchars=tab:»·,trail:· "uninvasive list
"toggle list
nmap <silent> <leader>s :set list!<CR>
set autoindent "copy indent when starting new line
set smartindent "do smart autoindenting on new line
set cindent "C indent rules
set tabstop=4 "number of spaces that a <Tab> is
set softtabstop=4 "number of spaces  that a <Tab> counts for
set shiftwidth=4 "number of spaces for each indent
set expandtab "insert spaces instead of <Tab>
set shortmess=atI "truncate file messages, no intro

set t_Co=256 "set 256 colours
if !has('gui_running')
  "create a terminal colour scheme
  "http://www.vim.org/scripts/script.php?script_id=1809
  runtime! plugin/guicolorscheme.vim
  "http://www.vim.org/scripts/script.php?script_id=2215
  GuiColorScheme darkspectrum
  "decent colorchemes: railcasts, vividchalk, bw
else
  "gvim menu settings
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set background=dark
  "show current line
  set cursorline
  if has("gui_win32")
    "terminus is awesome.
    set guifont=ter-k16n
  else
    set guifont=Terminus\ 12
  endif
  "gvim colourscheme
  colorscheme darkspectrum
endif

"statusline stuff
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%l,%v]
hi statusline guibg=black
hi statusline guifg=lightgrey

"scrolling stuff
set scrolljump=5
set scrolloff=3
"start/end of line jump maps
map H ^
map L $

"better safe than annoying
set noerrorbells
set novisualbell
set t_vb=

"set F6 to toggle paste
nmap <silent> <F6> :set paste!<CR>
