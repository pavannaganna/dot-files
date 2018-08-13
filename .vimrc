" vim runtime configuration
syntax enable
set termguicolors
set background=dark
let ayucolor="dark"
colorscheme ayu
" colorscheme palenight

call plug#begin('~/.vim/plugged')
" shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'klen/python-mode'
Plug 'chun-yang/auto-pairs'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'heavenshell/vim-jsdoc'
" colorschemes
Plug 'tomasr/molokai'
Plug 'tomasiser/vim-code-dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/tomorrow-theme'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-endwise'
Plug 'easymotion/vim-easymotion'
call plug#end()

" Toggle nerdtree
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F2>"
let g:NERDTreeMapPreview="<F3>"
let NERDTreeShowHidden=1 " show dot files by default

" set line numbers by default
set number

" turn on mouse mode
set mouse=a

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint'] " use eslint as javascript linter
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

set nofoldenable    " disable folding
let g:airline_theme = 'codedark'
" set indentation to 2 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set clipboard=unnamed
set backspace=indent,eol,start " enable backspace deleting in insert mode
set re=1 " use older version of regex matching for ruby syntax to work faster
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
