call plug#begin()
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
    Plug 'mxw/vim-jsx'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'pangloss/vim-javascript'
 "NeoJs
    "let mapleader = ","                                                                                               
    "let g:mapleader = ","   
    " .... and
    "Plug 'vimlab/neojs'
    "Plug 'shougu/unite.vim'

    "------teste--------
Plug 'bkad/CamelCaseMotion'
Plug 'evidens/vim-twig'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
" Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'glts/vim-textobj-comment'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'tpope/vim-commentary'
Plug 'tommcdo/vim-exchange'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'shawncplus/phpcomplete.vim'
Plug 'StanAngeloff/php.vim'
Plug 'scottmcginness/vim-jquery'
Plug 'thinca/vim-textobj-between'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-indent'
Plug 'beloglazov/vim-textobj-quotes'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-niceblock'
Plug 'kana/vim-textobj-underscore'
Plug 'kana/vim-smartword'
Plug 'Julian/vim-textobj-brace'
Plug 'Raimondi/delimitMate'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'danro/rename.vim'
Plug 'alvan/vim-php-manual'
Plug 'airblade/vim-rooter'
Plug 'sjl/gundo.vim'
Plug 'bronson/vim-visual-star-search'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'kana/vim-textobj-lastpat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-unimpaired'
Plug 'ap/vim-css-color'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim'
Plug 'sickill/vim-pasta'
" Plug 'c0r73x/neotags.nvim'

Plug 'vim-scripts/indexer.tar.gz'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'

" Plug 'szw/vim-ctrlspace'
" Plug 'vim-scripts/mru.vim'
Plug 'bling/vim-airline'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'm2mdas/phpcomplete-extended'
" Plug 'm2mdas/phpcomplete-extended-symfony'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'idanarye/vim-merginal'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
" Plug 'vim-scripts/YankRing.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'rhysd/clever-f.vim'
Plug 'rhysd/vim-textobj-conflict'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bfredl/nvim-miniyank'
Plug 'junegunn/vim-peekaboo'
Plug 'jlanzarotta/bufexplorer'
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
  " let g:airline_theme = 'codedark'


   "Two space tab
   set expandtab
   set shiftwidth=2
   set softtabstop=2


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

"Nerdtree icons
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

"Tmux config
    "let g:tmux_navigator_no_mappings = 1

    "nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
    "nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
    "nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
    "nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
    "nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>


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

"   nmap <silent> <c-l> :call ToggleNERDTreeWithRefresh()<cr>  



" Pesquisa no arquivo :%s/costa/const/g 


"-------teste-------


" highlight cursor line
set cursorline

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

inoremap - --
imap <a-n> <C-q>ñ
imap <a-2> «
imap <a-3> »
nmap <F5> ]s

" cursor line disappears in insert mode
autocmd InsertEnter,InsertLeave * set cul!

if has('gui_running')
    set guioptions-=T
    set guioptions-=m
    colorscheme gruvbox
    let hour = strftime("%H")
    if hour >= 8 && hour < 19
" set background=light
        set background=dark
    else
        set background=dark
    endif
" set guifont=Sauce\ Code\ Pro\ 10.5
    set guifont=SauceCodePro\ Nerd\ Font\ Medium\ 10.5
" set less linespace is a must for source code pro font
    set lsp=-2
" hide mouse when typing
    set mousehide

else
    se t_Co=256
    colorscheme gruvbox
    set background=dark
endif

" }

" GENERAL SETTINGS {
    set title
    set titlestring=%F\ %a%r%m

    set number
    set relativenumber

    syntax enable
    set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
    nmap <MiddleMouse> <LeftMouse>yiwh/0<CR>
    vmap <MiddleMouse> *N
    nmap <LeftMouse> <LeftMouse><C-l>
    vmap <LeftMouse> <LeftMouse><C-l>

" add motions with a counter to the jump list
    nnoremap <silent> k :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'k'<CR>
    nnoremap <silent> j :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'j'<CR>


" CLIPBOARD {
" unnamed plus register set to default register instead of " register
        set clipboard=unnamedplus

" :Gstatus uses the preview window
        set previewheight=20

" paste correctly indented on same line
        map <a-s-p> V<a-p>

" don't save in default register when executing an auto yank command
"nnoremap c "_c
"nnoremap C "_C
"nnoremap x "_x

" paste default register in insert mode and command mode
        inoremap <C-v> <C-r>+
        cnoremap <C-v> <C-r>+

" easy yank appending with 'gy'
        nnoremap <silent> gy :let @u=@+<CR>"Uyy:let @+=@u<CR>
        vnoremap <silent> gy :normal gy<CR>

" swap unnamed register with alt "yank register" @p
" nnoremap <F11> :let @u=@+ \| let @+=@p \| let @p=@u <CR>

" }
" }

" MAPPINGS {
" NORMAL MODE COMMANDS
" set uppercase word (insert/visual/normal)
    inoremap <A-u> <C-O>b<C-O>gUiw<C-O>e<C-O>a
    vmap <A-u> gU
    nmap <A-u> gUiw

" INSERT MODE NAVIGATION
    imap <A-h> <C-left>
    imap <A-l> <C-right>
    imap <A-b> <C-left>
    imap <A-f> <C-right>
    imap <A-d> <ESC><SPACE>cw
    imap <C-e> <C-o>A
    imap <C-b> <C-o>I
    imap <C-k> <C-o>D
    imap ; ;<esc>

" COMMMAND LINE NAVIGATION
    cnoremap <C-b>  <Home>
    cnoremap <C-e>  <End>
    cnoremap <M-j>  <Left>
    cnoremap <M-k>  <Right>
    cnoremap <M-b>  <S-Left>
    cnoremap <M-f>  <S-Right>
    cnoremap <C-k>  <S-right><C-w>

" Remap [ and ] for easy typing
    nmap <A-h>  [
    nmap <A-l>  ]
    omap <A-h>  [
    omap <A-l>  ]
    xmap <A-h>  [
    xmap <A-l>  ]

" Close all other windows
    nmap <silent> <leader>o :only<CR>
" Close all other windows keeping panes open (eclim util)
" nmap <silent> <leader>O :Only<CR>
" Close tip window

" Restart Vim
" nmap <C-c> :w<CR>:RestartVim<CR>

" INSERT MODE
" substitute from VERY start of line (unlike cc)
    nmap S 0C

" add indented blank line and leave insert mode (leaving spaces)
    nnoremap <A-o> o<space><BS><esc>
    nnoremap <A-O> O<space><BS><esc>
    inoremap <A-o> <esc>o<space><BS><esc>
    inoremap <A-O> <esc>O<space><BS><esc>
    nnoremap o o<space><BS><esc>a
    nnoremap O O<space><BS><esc>a
    nnoremap cc cc<space><BS>
    nnoremap C C<space><BS>

" smartwords mappings
    map <s-a-w> <Plug>(smartword-w)
" noremap â b
    map <s-a-b> <Plug>(smartword-b)
    map <silent> <a-w> <Plug>CamelCaseMotion_w
    map <silent> <a-b> <Plug>CamelCaseMotion_b
" map <Leader><Leader>e <Plug>(smartword-e)
" map <Leader><Leader>ge <Plug>(smartword-ge)

    cnoremap <expr> ~~ getcmdtype() == ':' ? expand('%:h').'/' : '~~'
    cnoremap <expr> ~ getcmdtype() == ':' ? expand('~').'/' : '~'

    inoremap {} {<CR>}<C-o>O

    inoremap {% {%<space><space>%}<left><left><left>
" } workaround to force matching of braces
    inoremap {{ {{<space><space>}}<left><left><left>
" }} workaround to force matching of braces

" autocompletion
" inoremap <C-p> <C-X><C-O>
    imap <C-CR> ->

" }
" AUTOCOMMANDS {
    augroup my_group
        autocmd!
" maximize at startup
" autocmd GUIEnter * call system("wmctrl -ir " . v:windowid . " -b add,maximized_vert,maximized_horz")
" hybrid numbers normal mode / no relative insert mode
        autocmd InsertEnter * set number|set norelativenumber
        autocmd InsertLeave * set relativenumber

        autocmd InsertEnter *.md setlocal nonumber|setlocal norelativenumber
        autocmd InsertLeave *.md  setlocal nonumber|setlocal norelativenumber

" documentor
        autocmd BufRead,BufNewFile *.php nnoremap <buffer> <Leader>ds :call pdv#DocumentWithSnip()<CR>

        autocmd FileType php autocmd BufWritePre <buffer> call StripWhitespace('keep_whitespace_only_lines')
        autocmd FileType *twig autocmd BufWritePre <buffer> call StripWhitespace('keep_whitespace_only_lines')
        autocmd FileType *js autocmd BufWritePre <buffer> call StripWhitespace('keep_whitespace_only_lines')
        autocmd FileType vim autocmd BufWritePre <buffer> call StripWhitespace('strip_only_space_only_lines')
        autocmd FileType sh autocmd BufWritePre <buffer> call StripWhitespace('all')
" no wrap and never break line automatically, just show the margin (textwidth). This is default for all files, exceptions below
        autocmd BufEnter,BufRead,BufNewFile * setlocal nowrap textwidth=120 list formatoptions=l number relativenumber guifont=SauceCodePro\ Nerd\ Font\ Medium\ 10.5
" wrap lines only on space (linebreak), don't auto break and don't show margin
        autocmd BufEnter,BufRead,BufNewFile *.markdown setlocal wrap linebreak nolist textwidth=0 nonumber norelativenumber guifont=SauceCodePro\ Nerd\ Font\ Medium\ 10.5
        autocmd BufEnter,BufRead,BufNewFile *.md setlocal wrap linebreak nolist textwidth=0 nonumber norelativenumber guifont=Courier\ 10\ Pitch\ 14 spell spelllang=es_es|GitGutterDisable
        autocmd BufEnter,BufRead,BufNewFile *.txt setlocal wrap linebreak nolist textwidth=0 nonumber norelativenumber guifont=SauceCodePro\ Nerd\ Font\ Medium\ 10.5

" For your list of filetypes where you want Eclim semantic completion 
" as the default YCM completion mode:
        if exists('g:eclim')
            autocmd FileType php,java,ruby,c,cpp,perl,python
                \ if &completefunc != '' | let &omnifunc=&completefunc | endif
        endif
    augroup END
" }


" FUNCTIONS {
" Delete hidden buffers
    function! DeleteHiddenBuffers()
        let tpbl=[]
        call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
        for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
            silent execute 'bwipeout' buf
        endfor
    endfunction

" Strip whitespace
    function! StripWhitespace(strip_whitespace_mode)
" Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        if a:strip_whitespace_mode == 'strip_only_space_only_lines'
            %s/^ \+$//e
        else
            if a:strip_whitespace_mode == 'keep_whitespace_only_lines'
" clean up trailing except lines with only white spaces
                %s/\([^ ]\+\)[ ]\+$/\1/e
            else
" clean up all trailing spaces
                %s/\s\+$//e
            endif
        endif
" clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction

" Setting up the directories
    set backup                  " Backups are nice ...
    if has('persistent_undo')
        set undofile                " So is persistent undo ...
        set undolevels=1000         " Maximum number of changes that can be undone
        set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
    endif

" Initialize directories
    function! InitializeDirectories()
        let parent = $HOME
        let prefix = 'vim'
        let dir_list = {
                    \ 'backup': 'backupdir',
                    \ 'views': 'viewdir',
                    \ 'swap': 'directory' }

        if has('persistent_undo')
            let dir_list['undo'] = 'undodir'
        endif

        let common_dir = parent . '/.' . prefix

        for [dirname, settingname] in items(dir_list)
            let directory = common_dir . dirname . '/'
            if exists("*mkdir")
                if !isdirectory(directory)
                    call mkdir(directory)
                endif
            endif
            if !isdirectory(directory)
                echo "Warning: Unable to create backup directory: " . directory
                echo "Try: mkdir -p " . directory
            else
                let directory = substitute(directory, " ", "\\\\ ", "g")
                exec "set " . settingname . "=" . directory
            endif
        endfor
    endfunction
    call InitializeDirectories()

" ucfirst words selected
    function! TitleCase(str)
    return substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
    endfunction
    vnoremap ~ y:call setreg('', TitleCase(@"), getregtype(''))<CR>gv""P

" set pastetoggle=<F12>
" nnoremap <F12> :set invpaste paste?<CR>
    map <F12> :call PasteToggle()<CR>
    function! PasteToggle()
        let s:inPaste = &paste
        if !s:inPaste
            set paste
            set indentexpr=
        else
            set nopaste
" echo &indentexpr funcion eclim??
            set indentexpr=
        endif

    endfunction
" }

" TMUX COMPATIBLE {
        set mouse+=a
        if &term =~ '^screen'
" tmux knows the extended mouse mode
            set ttymouse=xterm2
        endif
" }

" AIRLINE {
        let g:airline_powerline_fonts = 1
" Enable the list of buffers
        let g:airline#extensions#tabline#enabled = 1
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#eclim#enabled = 1
" let g:airline#extensions#tmuxline#enabled = 1
        let g:airline#extensions#tagbar#enabled = 1
        let g:airline#extensions#tabline#buffer_min_count =2
        let g:airline#extensions#tabline#show_tabs = 0
" let g:airline#extensions#tabline#show_buffers = 1
        let g:airline_exclude_preview = 1
        let g:airline#extensions#whitespace#checks = ['']
        let g:airline#extensions#whitespace#enabled = 0
        let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
        let g:airline#extensions#tabline#show_tab_nr = 1
        let g:airline#extensions#tabline#buffer_idx_mode = 1
        let g:airline#extensions#hunks#enabled = 1
        map <leader>1 <Plug>AirlineSelectTab1
        map <leader>2 <Plug>AirlineSelectTab2
        map <leader>3 <Plug>AirlineSelectTab3
        map <leader>4 <Plug>AirlineSelectTab4
        map <leader>5 <Plug>AirlineSelectTab5
        map <leader>6 <Plug>AirlineSelectTab6
        map <leader>7 <Plug>AirlineSelectTab7
        map <leader>8 <Plug>AirlineSelectTab8
        map <leader>9 <Plug>AirlineSelectTab9
" }

" NERDTREE {
        map <silent> Q :silent NERDTreeCWD<CR>:silent setlocal nolist nonumber norelativenumber<CR>
" open NERDTree if no files specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" let g:NERDTreeDirArrowExpandable = ''
" let g:NERDTreeDirArrowCollapsible = ''
        let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        let g:DevIconsEnableFoldersOpenClose = 1
        autocmd FileType nerdtree autocmd BufEnter <buffer> setlocal nolist nonumber norelativenumber
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

        let NERDTreeAutoDeleteBuffer=1
        let NERDTreeMouseMode=3
        let NERDTreeShowLineNumbers=1
" let NERDTreeShowHidden=1
        let g:NERDTreeMapJumpNextSibling = 'Ê'
        let g:NERDTreeMapJumpPrevSibling = 'Ë'
        let g:NERDTreeWinSize=50
" autocmd VimEnter * NERDTree autocmd VimEnter * set winfixwidth
" now using A mapping => maximizes/minimizes the explorer window
" }

" TAGBAR {
" nmap <C-t> :TagbarOpenAutoClose<CR>
        nmap <A-s-t> :TagbarOpen fj<CR>
" go to previous tag on tagbar
        nmap <A-T> :TagbarOpen fj<CR>k<CR>
" go to next tag on tagbar
        nmap <A-t> :TagbarOpen fj<CR>j<CR>

" got default with ':TagbarGetTypeConfig php'
        let g:tagbar_type_php = {
            \ 'kinds' : [
                \ 'i:interfaces',
                \ 'c:classes',
                \ 'd:constant definitions:0:0',
                \ 'f:functions',
                \ 'j:javascript functions',
            \ ],
        \ }

        let g:tagbar_sort = 0
        let g:tagbar_compact = 1
        let g:tagbar_autoshowtag = 1
        let g:tagbar_autofocus = 1
        let g:tagbar_singleclick = 1
" }

" SYNTASTIC {
" nnoremap <F9> :SyntasticCheck<CR>
        set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*

        let g:syntastic_auto_loc_list = 2
        let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_check_on_open = 1
        let g:syntastic_enable_signs = 1
        let g:syntastic_error_symbol = "✗"
        let g:syntastic_warning_symbol = "⚠"
        let g:syntastic_style_error_symbol = "⚑"
        let g:syntastic_style_warning_symbol = "⚑"
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]
" }

" BUFFEXPLORER {
" useful maps: T (show buffers from all tabs), u (show hidden buffers), s/S (sort buffers), d (delete buffer), ? (help), q (quit)
        map <leader>? <f1>
" nnoremap <silent> <leader>b :BufExplorerHorizontalSplit<CR>
        nnoremap <silent> <leader>b :BufExplorer<CR>
        let g:bufExplorerShowTabBuffer=1       " Yes.
" let g:bufExplorerDefaultHelp=1 " Show default help.
" let g:bufExplorerDetailedHelp=1 " Show detailed help.
        let g:bufExplorerShowNoName=1          " Do not show No Name buffers.
" let g:bufExplorerSortBy='fullpath' " Sort by full file path name.
        let g:bufExplorerDisableDefaultKeyMapping=1    " Disable mapping.
         let g:bufExplorerSplitBelow=1        " Split new window below current.
        let g:bufExplorerSplitOutPathName=0  " Don't split the path and file
        let g:bufExplorerFindActive=0        " Do not go to active window.
        let g:bufExplorerShowRelativePath=1  " Show relative paths.
" let g:bufExplorerChgWin=1 " Show relative paths.
" Move to the next buffer
        noremap <A-j> :bnext<CR>
" Move to the previous buffer
        noremap <A-k> :bprev<CR>
" }


" FUGITIVE {
        set diffopt+=vertical
        nnoremap <F7> :only<CR>:Gstatus<CR>
        nnoremap <F8> :only<CR>:Gdiff<CR>
        nnoremap <F9> :only<CR>:Gedit HEAD~0<CR>
        nnoremap <F10> :only<CR>:Glog -- %<CR>
        autocmd BufReadPost fugitive://* set bufhidden=delete
        nnoremap <C-F7> :!~/bin/ansbot '*?assword*' "$GIT_PASS" ''/usr/bin/git r''<CR>
        nnoremap <C-F8> :!~/bin/ansbot '*?assword*' "$GIT_PASS" ''/usr/bin/git p''<CR>
" :set winheight=20<CR>
" }

" SESSION {
" let g:session_autosave = 'yes'
" let g:session_autoload = 'no'
" let g:session_persist_colors = 0
" }

" GUNDO {
" nnoremap <F5> :GundoToggle<CR>
" }

" TEXTOBJ_FUNC {
" map am <Plug>(textobj-function-a)
" map im <Plug>(textobj-function-i)
" map aM <Plug>(textobj-function-A)
" map iM <Plug>(textobj-function-I)
" }

" TEXTOBJ_QUOTES {
" select inner quotes
        xmap q iq
        omap q iq
" }

" YCM {
" let g:loaded_youcompleteme = 0
        let g:ycm_autoclose_preview_window_after_insertion = 1
" }

" INDENT GUIDES {
        nmap <Leader><F9> :IndentGuidesToggle<CR>
" let g:indent_guides_enable_on_vim_startup = 1
" }

" INDEXER/TAGS {
" let g:indexer_disableCtagsWarning=1
        let g:indexer_indexerListFilename= $HOME ."/.vim/indexer/.indexer_files"
" }

" PHPCOMPLETE {
        if exists('g:phpcomplete')
            let g:phpcomplete_cache_taglists = 0
        endif
" }

" PHPCOMPLETE-EXTENDED {
        if exists('g:phpcomplete_extended')
" this plugin provides autocompletion for composer/symfony projects
            autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
            let g:phpcomplete_index_composer_command='/usr/local/bin/composer'
        endif
" }

" SHORTCUTS {
" resize current buffer by +/- 5
    nnoremap <leader><left> :vertical resize -10<cr>
    nnoremap <leader><down> :resize +5<cr>
    nnoremap <leader><up> :resize -5<cr>
    nnoremap <leader><right> :vertical resize +10<cr>

    map <C-h> yw<esc>:Ag 0<CR>
    vmap <C-h> y<esc>:Ag 0<CR>

" nmap <leader>X :CloseSession<CR>:SaveSession<CR>

" Soft wrap
    command! -nargs=* Wrap set wrap linebreak nolist textwidth=0 nonumber
    map <Leader><F4> :Wrap<CR>
" filetypes
    map <Leader><F5> :set filetype=php <CR>
    map <Leader><F6> :set filetype=html <CR>
    map <Leader><F7> :set filetype=css <CR>
"sudo apt-get install libxml2-utils
    map <Leader><F8> :silent %!xmllint --encode UTF-8 --format - <CR>

" opens .vimrc and sets pwd to .vim
    map <a-F12> :e ~/.vim/vimrc<CR>

" save and reload firefox current tab
" map <leader>f :w<CR>:silent !WID=`xdotool search --name "Mozilla Firefox" \| head -1`; xdotool windowactivate $WID > /dev/null 2>&1 ; xdotool key F5 > /dev/null 2>&1<CR> \ | execute ':redraw!'

" ignore swap files (backup)
    map <C-S-Del> :! mv ~/.vimswap/* ~/.vimswap/kk > /dev/null 2>&1 &<CR>

" fullscreen mode, need 'wmctrl' in you PATH
    map <silent> <C-F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

    nnoremap <C-F2> :if &go=~#'mT'<Bar>set go-=mT<Bar>else<Bar>set go+=mT<Bar>endif<CR>

" }

let g:expand_region_text_objects = {
      \ 'iq' :1,
      \ 'aq' :1,
      \ 'im' :1,
      \ 'am' :1,
      \ 'i]' :1,
      \ 'ib' :1,
      \ 'iB' :1,
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'i>' :0,
      \ 'a>' :0,
      \ 'it' :1,
      \ 'iT' :0,
      \ 'ie' :0,
      \ }

" VIM-MULTIPLE-CURSORS
    set selection=inclusive
" }

" VIM-SMOOTH-SCROLL
    noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 6)<CR>
    noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 6)<CR>
    noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 6)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 6)<CR>
" }

" GITGUTTER
    let g:gitgutter_map_keys = 0
" }

" MINIYANK
" use g-
" map <leader>p <Plug>(miniyank-startput)
" map <leader>P <Plug>(miniyank-startPut)
    map p <Plug>(miniyank-autoput)
    map P <Plug>(miniyank-autoPut)

" paste yanked text multiple times in visual mode (this should be JUST here to override map p)
" NOTE!!: to do the 'replace trick' or to use miniyank, use 'P' instead of 'p'
    vmap p pgvy

" cycle through history:
    map <C-p> <Plug>(miniyank-cycle)

" paste type
" map <Leader>c <Plug>(miniyank-tochar)
" map <Leader>l <Plug>(miniyank-toline)
" map <Leader>b <Plug>(miniyank-toblock)

" cycle backwards (g-)

" persist:
" let g:miniyank_filename = $HOME."/.miniyank.mpack"

" }

" " YANK-RING
" nnoremap <silent> <f2> :YRShow<CR>
" let g:yankring_replace_n_nkey = '<C-Y>'
" " to allow nnoremap Y y$ mapping
" let g:yankring_n_keys = 'D x X'

" function! YRRunAfterMaps()
" " Make Y yank to end of line.
" nnoremap Y :<C-U>YRYankCount 'y$'<CR>

" " Don't clobber the yank register when pasting over text in visual mode.
" vnoremap p :<c-u>YRPaste 'p', 'v'<cr>gv:YRYankRange 'v'<cr>
" endfunction
" " }

" FZF {
    map <leader>f :FZF<CR>
    map <leader>h :History<CR>
" map <leader>b :Buffers<CR>
    map <leader>l :BLines<CR>
    map <leader>c :BCommits<CR>

" This is the default extra key bindings
    let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
    let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
    let g:fzf_layout = { 'window': 'enew' }
    let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
    let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Files] Extra options for fzf
" e.g. File preview using Highlight
" (http://www.andre-simon.de/doku/highlight/en/highlight.html)
    let g:fzf_files_options =
    \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" [Buffers] Jump to the existing window if possible
    let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
    let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
    let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
    let g:fzf_commands_expect = 'ctrl-x'
" }

call textobj#user#plugin('twig', {
\   'code': {
\     'pattern': ['%}', '{%'],
\     'select-a': 'aT',
\     'select-i': 'iT',
\   },
\ })

call textobj#user#plugin('thinkquotes', {
\   'code': {
\     'pattern': ['«', '»'],
\     'select-a': 'am',
\     'select-i': 'im',
\   },
\ })

" use this for mapping debug purposes!!!!!!!!!!!!!!
" :verbose noremap <leader>b


" enable debug mode
" set vbs=1
