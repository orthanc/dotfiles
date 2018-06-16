" http://nvie.com/posts/how-i-boosted-my-vim/

" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#infect()

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

syntax on         " Enable Syntax Highlighting

colorscheme desert


set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Show Whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" F2 switches to paste mode which disables auto-indent etc
set pastetoggle=<F2>

set spelllang=en

"filetype plugin indent on
filetype plugin on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Python Settings
autocmd filetype python set expandtab

" YAML Settings
autocmd BufNewFile,BufRead *.yaml.j2   set filetype=yaml
autocmd filetype yaml set expandtab
autocmd filetype yaml set tabstop=2
autocmd filetype yaml set shiftwidth=2

" JSON Settings
autocmd BufNewFile,BufRead *.json.j2   set filetype=json
autocmd filetype json set expandtab
autocmd filetype json set tabstop=2
autocmd filetype json set shiftwidth=2

" Git Commit
autocmd filetype gitcommit set spell
