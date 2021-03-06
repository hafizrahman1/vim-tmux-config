set nocompatible
set encoding=utf-8
" be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Syntastic'
Plugin 'Vim-R-plugin'
Plugin 'vimux'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'othree/html5.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/promptline.vim'
"Plugin 'vim-scripts/Conque-Shell'

"Plugin 'ervandew/supertab'
"Plugin 'valloric/youcompleteme'
Bundle 'vim-ruby/vim-ruby'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()			 " required
filetype plugin indent on	 " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

"MY CONFIGS HERE
"FOR THE LOOKS LOL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""vm implode, then reinstall jekyll with gem install jekyll
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby compiler ruby
set omnifunc=syntaxcomplete#Complete
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:Powerline_symbols = 'fancy'
set number
set relativenumber
"""""""""""""""""""""""""""""""""""""""""""

"solarized theme here
"/Users/Whisky/.vim/bundle/vim-airline-themes/autoload/airline/themes
let g:promptline_theme = 'airline'
let g:airline_theme='powerlineish'
"let g:solarized_termcolors=256
colorscheme solarized
"set background=dark
"hi Normal ctermbg=none

set cursorline
"hi CursorLine cterm=bold ctermbg=0
hi Comment  guifg=#80a0ff ctermfg=7


"hi CursorLine	 cterm=NONE ctermbg=8 ctermfg=white
"hi CursorLine term=bold cterm=bold guibg=Grey40
"autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
"autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:indentLine_concealcursor = 'vc' "(default 'inc')
"let g:indentLine_conceallevel = 0 "(default 2)

"let g:indentLine_color_term = 15
let g:indentLine_color_term = 239
let g:indentLine_char ='┆'

"set listchars=tab:❯\  
"set listchars=eol:↲ ┆¦┊
"set listchars=tab:❯\ ,eol:↲ 
"set listchars=tab:⇁\ ,eol:┘


"set autoindent
"set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4 noexpandtab 
"retab!

set list
"set listchars=tab:\ \ ,eol:┘
set listchars=tab:\┆\ ,eol:┘
"hi SpecialKey ctermfg=8 guifg=#649A9A
"hi SpecialKey  guifg=#649A9A
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set noet|retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"«»※↞↲↽⇙Γ
"┘⇁↵↸⇙
"set showbreak=↪\ 
"set listchars=tab:→\ ,eol:↲ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"""""""""""""""""""""""""""""""""""""""""""
":so $VIMRUNTIME/syntax/hitest.vim
"autocmd CursorMoved * exe printf('match Todo  /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"autocmd CursorMoved * exe printf('match Todo  /\V\<%s\>/', escape(expand('<cword>'), '/\'))

set backspace=indent,eol,start
set clipboard=unnamed

"save
inoremap ß <ESC>:w <CR>

"tab completion
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
inoremap <S-Tab> <C-P>



nnoremap <Tab> :bn!<CR>
nnoremap <S-Tab> :bp!<CR>
nnoremap œ :bd<CR>
nnoremap <leader>t :TagbarToggle<CR>


"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent>  ˙ :TmuxNavigateLeft<cr>
"nnoremap <silent>  ∆ :TmuxNavigateDown<cr>
"nnoremap <silent>  ˚ :TmuxNavigateUp<cr>
"nnoremap <silent>  ¬ :TmuxNavigateRight<cr>
"nnoremap <silent>  « :TmuxNavigatePrevious<cr>
"nnoremap ˙ <C-W>h
"nnoremap ∆ <C-W>j
"nnoremap ˚ <C-W>k
"nnoremap ¬ <C-W>l
"COPYING INTO REGISTERS
nnoremap ; :
vnoremap a "jy
vnoremap z "ky
vnoremap x "ly
nnoremap å "jp
nnoremap Ω "kp
nnoremap ≈ "lp

inoremap ˙ <C-o>h
inoremap ∆ <C-o>gj
inoremap ˚ <C-o>gk
inoremap ¬ <C-o>l
inoremap ∑ <C-o>w
inoremap ∫ <C-o>b

inoremap … <ESC>
vnoremap … <ESC>
cnoremap … <ESC>
nnoremap j gj
nnoremap k gk
"inoremap <Up> <ESC>kddpkA
nnoremap <Up> kddpk
"inoremap <Down> <ESC>ddpA
nnoremap <Down> ddp
"nnoremap <Right> xp


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


