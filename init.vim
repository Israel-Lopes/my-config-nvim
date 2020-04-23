call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'w0rp/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
 "AUTOCOMPLET  
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'wokalski/autocomplete-flow'
   " For func argument completion
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

"NEOSNIPT AUTOCOMPLET CONFIG----------
   let g:deoplete#enable_at_startup = 1
   " neosnippet
   let g:neosnippet#enable_completed_snippet = 1
   " :help neosnippet-snippet-syntax
   " Create snipts: ':NeoSnippetEdit'


let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


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
