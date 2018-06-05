execute pathogen#infect()
syntax on

let mapleader=","

set hidden
set number            " Show line number
set ruler
set autoread
set timeoutlen=500    " Dont wait too long for the next key press (useful for ambigous leader commands)<Paste>
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is off and the line continues beyond the left of the screen
set noswapfile
set nobackup
set nowb
set splitbelow
set splitright

" KEY MAPPING
  " WINDOW NAVIGATION
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  nnoremap <leader>t :Files<CR>
  " SPLIT WINDOWS
  nnoremap ss <C-w>s
  nnoremap vv <C-w>v
  " CLOSE CURRENT TAB
  nnoremap Q :q!<CR>

" THEME
set background=dark
colorscheme hybrid_material

" FZF STUFF
let $FZF_DEFAULT_COMMAND = "fd . --type file --hidden --no-ignore --exclude '{.git,doc*/,node_modules,vendor,build,tmp,*.sty}'"

"NERDTree Stuff
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
map <C-N> :NERDTreeToggle<cr>

" GREPPER
runtime plugin/grepper.vim
let g:grepper.dir = 'repo,file'
let g:grepper.open = 1
let g:grepper.tools =
  \ ['rg', 'git', 'grep']
let g:grepper.rg.grepprg .= ' --type-add slim:*.slim --type-add haml:*.haml -g "!{.git,node_modules,vendor,build,tmp,yarn.lock,*.sty}/*"'
map <leader>rg :GrepperRg<Space>
