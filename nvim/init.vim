set mouse=a
-- Sets how many lines of history VIM has to remember
set history=500

-- Enable filetype plugins
filetype plugin on
filetype indent on

-- Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

-- Set 7 lines to the cursor - when moving vertically using j/k
set so=7

-- Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

-- Turn on the Wild menu
set wildmenu

--"Always show current position
set ruler

-- Height of the command bar
set cmdheight=1

-- A buffer becomes hidden when it is abandoned
set hid

-- Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

-- Ignore case when searching
set ignorecase

-- When searching try to be smart about cases 
set smartcase

-- Highlight search results
set hlsearch

-- Makes search act like search in modern browsers
set incsearch 

-- Don't redraw while executing macros (good performance config)
set lazyredraw 

-- For regular expressions turn magic on
set magic

-- Show matching brackets when text indicator is over them
set showmatch 
-- How many tenths of a second to blink when matching brackets
set mat=2

-- No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

-- Add a bit extra margin to the left
set foldcolumn=1
