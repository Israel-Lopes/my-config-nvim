call plug#begin()
 "Thema gruvbox
     Plug 'morhetz/gruvbox'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'w0rp/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
 "Scroller
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 "AUTOCOMPLET  
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'wokalski/autocomplete-flow'
 "For func argument completion
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
call plug#end()

"Base Configuration---------
   colorscheme gruvbox
   set number
   set background=dark
   set hidden
   set relativenumber
   set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Auto-open NERDTree
   autocmd VimEnter * NERDTree

"SEARCH------
   nnoremap <c-p> :Files<cr>
   nnoremap <c-f> :Ag<space>

"SAVE------
   nnoremap <c-s> :w<cr>

"QUIT------
   nnoremap <c-x> :q<cr>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'


" Pesquisa no arquivo :%s/costa/const/g 
