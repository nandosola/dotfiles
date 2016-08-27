
" Mostly copied from https://github.com/spf13/spf13-vim

" Environment {
  " Basics {
    set nocompatible    " must be first line
    set encoding=utf-8
    scriptencoding utf-8
  " }

  " Setup Bundle Support {
  " The next two lines ensure that the ~/.vim/bundle/ system works
    runtime! autoload/pathogen.vim
    silent! call pathogen#infect()
  " }
" }

" General {
  set background=dark
  if has('gui_running')
    set guioptions-=T
    set lines=50 columns=120
  else
    set term=builtin_ansi       " Make arrow and other keys work
  endif

  filetype plugin indent on   " Automatically detect file types.
  syntax on           " syntax highlighting
  set mouse=a         " automatically enable mouse usage
  set shortmess+=filmnrxoOtT       " abbrev. of messages (avoids 'hit enter')
  set history=1000          " Store a ton of history (default is 20)

  " Setting up the directories {
    set backup            " backups are nice ...
    set undofile          " so is persistent undo ...
    set undolevels=1000 "maximum number of changes that can be undone
    set undoreload=10000 "maximum number lines to save for undo on a buffer reload
  " }
" }

" Vim UI {
  if has('gui_running')
    colorscheme solarized
  endif
  set showmode
  "set guifont=Menlo:h16
  if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and selected characters/lines in visual mode
  endif

  if has('statusline')
    set laststatus=2
    " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
    "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

  set winminheight=0        " windows can be 0 line high
  set backspace=indent,eol,start  " backspace for dummys
  set linespace=0         " No extra spaces between rows
  set nu              " Line numbers on
  set incsearch         " find as you type search
  set hlsearch          " highlight search terms
  set showmatch         " Show matching brackets
  set ignorecase
  set smartcase " Case-sensitive searching for searches w/ upperCase letters
  set wildmenu          " show list instead of just completing
  set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
  set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
  set foldenable          " auto fold codedd
  set list
  set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
" }

" Formatting {
  set wrap                      " wrap long lines
  set autoindent                  " Indent at the same level of the previous line
  set sw=2
  set sts=2
  set expandtab
  set scrolljump=5        " lines to scroll when cursor leaves screen
  set scrolloff=3         " minimum lines to keep above and below cursor
  set pastetoggle=<F3>           " pastetoggle (sane indentation on pastes)
" }

" Key (re)mapping {
  "The default leader is '\', but many people prefer ',' as it's in a standard location
  let mapleader = ','

  " Fix home and end keybindings for screen/tmux, particularly on mac
  map [F $
  imap [F $
  map [H g0
  imap [H g0

  " http://superuser.com/questions/258986/vim-strange-behaviour-f1-10
  if !has("gui_running")
    for [key, code] in [["<F1>", "\eOP"],
                       \["<F2>", "\eOQ"],
                       \["<F3>", "\eOR"],
                       \["<F4>", "\eOS"],
                       \["<F5>", "\e[15~"],
                       \["<F6>", "\e[17~"]]
      execute "set" key."=".code
    endfor
  endif

  " clearing highlighted search
  nmap <silent> <leader>/ :nohlsearch<CR>
  " Stupid shift key fixes
  cmap W w
  cmap WQ wq
  cmap wQ wq
  cmap Q q

  " For when you forget to sudo.. Really Write the file.
  cmap w!! w !sudo tee % >/dev/null
" }

" Plugins {
  " NerdTree {
    map <F2> :NERDTreeToggle<CR>
    map <leader>e :NERDTreeFind<CR>
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.class']
    let NERDTreeShowHidden=1
    let NERDTreeMouseMode=2
  " }
  " syntastic {
  " }
  " vim-powerline" {
    set t_Co=256
    "let g:Powerline_symbols = 'fancy'
  "}
  " CoVim {
    let CoVim_default_name = "nando"
    let CoVim_default_port = "4242"
  "}
" }

