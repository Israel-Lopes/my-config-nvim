call plug#begin()
 "Thema
     Plug 'tomasiser/vim-code-dark'
 "Devcons
     Plug 'ryanoasis/vim-devicons'
 "Nerdtree syntax
     Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 "Git
     Plug 'tpope/vim-fugitive'
 "Color css
     Plug 'ap/vim-css-color'
 "Npm
     Plug 'neoclide/npm.nvim', {'do' : 'npm install'}
 "Show error
     Plug 'w0rp/ale'
 "Thema gruvbox
     Plug 'morhetz/gruvbox'
 "Multiple selection    
    Plug 'terryma/vim-multiple-cursors'
 "Multi linguage
    Plug 'sheerun/vim-polyglot'
 "Search fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
 "Complet pairs
    Plug 'jiangmiao/auto-pairs'
 "For func argument completion 
    Plug 'SirVer/ultisnips'
 "Status Bar
    Plug 'bling/vim-airline'
 "Snipets   
    Plug 'honza/vim-snippets'
 "Scroller
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    "Comenter
    Plug 'scrooloose/nerdcommenter'
 "AUTOCOMPLET  
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'wokalski/autocomplete-flow'
 "For func argument completion
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets' 
 "Ident line
    Plug 'Yggdroot/indentLine'
 "Tmux navigator
    Plug 'christoomey/vim-tmux-navigator'
 "Sintaxe js  
    Plug 'pangloss/vim-javascript'
 "NeoJs
    "let mapleader = ","                                                                                               
    "let g:mapleader = ","   
    " .... and
    "Plug 'vimlab/neojs'
    "Plug 'shougu/unite.vim'
 call plug#end()

"Fzf - Skips search files
command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))

"Base Configuration---------
   colorscheme gruvbox
   set number
   set background=dark
   set hidden
   set relativenumber
   set inccommand=split

   "Two space tab
   set expandtab
   set shiftwidth=2
   set softtabstop=2

colorscheme codedark
let g:airline_theme = 'codedark'

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Devcons
    set encoding=UTF-8

"IDENTLINE Config
  " Vim
  "let g:indentLine_color_term = 239

  " GVim
  "let g:indentLine_color_gui = '#A4E57E'

  " none X terminal
  "let g:indentLine_color_tty_light = 7 " (default: 4)
  "let g:indentLine_color_dark = 1 " (default: 2)

  " Background (Vim, GVim)
  "let g:indentLine_bgcolor_term = 202
  "let g:indentLine_bgcolor_gui = '#FF5F00'

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name  

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'cpp', 'php', 'rb', 'js', 'css', 'html'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors


"Fzf search
nnoremap <silent> <leader>o :All<cr>

"Auto-open scroll NERDTree
   autocmd VimEnter * NERDTree

"SEARCH------
   nnoremap <c-p> :Files<cr>
   nnoremap <c-f> :Ag<space>

"SAVE------
   nnoremap  <c-s> :w<cr>

"QUIT------
   nnoremap <c-x> :q<cr>

"Deoplete - view autocomplet suggestion
   let g:deoplete#enable_at_startup = 1

"UltiSnipets
   " Trigger configuration. Do not use <tab> if you use
   " https://github.com/Valloric/YouCompleteMe.
   let g:UltiSnipsExpandTrigger='<tab>'

   " shortcut to go to next position
   let g:UltiSnipsJumpForwardTrigger='<c-j>'

   " shortcut to go to previous position
   let g:UltiSnipsJumpBackwardTrigger='<c-k>'
   let g:UltiSnipsEditSplit = 'vertical'
   let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"Update nerdtree
   fun! ToggleNERDTreeWithRefresh()
       :NERDTreeToggle 
       if(exists("b:NERDTreeType") == 1)
           call feedkeys("R")  
       endif   
   endf 

   nmap <silent> <c-l> :call ToggleNERDTreeWithRefresh()<cr>  

" Pesquisa no arquivo :%s/costa/const/g 
