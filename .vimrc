" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif



" Plugins "
call plug#begin()
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'windwp/nvim-autopairs'
call plug#end()



" Global Settings "
syntax on		" Enable syntax highlight
set nu			" Enable line numbers
set tabstop=8        	" Show existing tab with 8 spaces width
set softtabstop=8    	" Show existing tab with 8 spaces width
set shiftwidth=8    	" When indenting with '>', use 8 spaces width
set expandtab        	" On pressing tab, insert 8 spaces
set smarttab         	" insert tabs on the start of a line according to shiftwidth
set smartindent      	" Automatically inserts one extra level of indentation in some cases
set hidden 		" Hides the current buffer when a new file is openned
set incsearch		" Incremental search
set colorcolumn=100	" Draws a line at the given line to keep aware of the line size
set scrolloff=999       " Setting the cursor always on the middle of the screen
set guicursor=i:block   " Cursor style block
set cmdheight=2         " Give more space for displaying messages
set encoding=utf-8	" The encoding should be utf-8 to activate the font icons
set nobackup		" No backup files
set nowritebackup	" No backup files
set splitright		" Create the vertical splits to the right
set splitbelow		" Create the horizontal splits below
set autoread		" Update neovim after file update from outside
filetype plugin on	" Load th plugin file for the file type
filetype indent on	" Load the ident file for the file type


" Themes "
" Enable 24-bit colors if the terminal supports
if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
endif
let g:sonokai_style = 'espresso'
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_better_performance = 1
colorscheme sonokai



" AirLine "
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
