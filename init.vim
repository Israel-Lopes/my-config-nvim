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


let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Fzf search
nnoremap <silent> <leader>o :All<cr>

"Auto-open scroll NERDTree
   autocmd VimEnter * NERDTree

"SEARCH------
   nnoremap <c-p> :Files<cr>
   nnoremap <c-f> :Ag<space>

"SAVE------
   nnoremap <c-s> :w<cr>

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




" Pesquisa no arquivo :%s/costa/const/g 
