function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
call plug#begin('~/.vim/plugged')
" looking
"
"
  Plug 'Yggdroot/indentLine'
  Plug 'myusuf3/numbers.vim'
  Plug 'bling/vim-airline', { 'do' : $HOME.'/.vim/fonts/install' }
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ianks/gruvbox'
  Plug 'freeo/vim-kalisi'
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
" completion/templating
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'ervandew/supertab'
  Plug 'scrooloose/nerdcommenter'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
" command extention
  Plug 'easymotion/vim-easymotion'
  Plug 'wellle/targets.vim'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/vim-easy-align'
  Plug 'wellle/targets.vim'
  Plug 'terryma/vim-multiple-cursors'
" utils
  Plug 'neomake/neomake'
  Plug 'kassio/neoterm'
  Plug 'sjl/gundo.vim'
  Plug 'chrisbra/NrrwRgn'
" navigation
  Plug 'scrooloose/nerdtree'
  Plug 'wesleyche/SrcExpl'
  Plug 'majutsushi/tagbar'
  Plug 'eugen0329/vim-esearch'
" html/css/javascript
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'rking/ag.vim'
  Plug 'maksimr/vim-jsbeautify'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'ctrlpvim/ctrlp.vim' 
call plug#end()

let g:mapleader = "\<space>"
let g:localmapleader = "\\"
let g:gruvbox_termcolors = 16

" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype plugin indent on
syntax on
" Some useful settings

set title
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
set foldenable
set foldmethod=manual "folding by indent
set foldlevel=99
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored
set mouse=a
" Lookings
set number           "line number
set cursorline       "hilight the line of the cursor
" set cursorcolumn     "hilight the column of the cursor
set nowrap           "no line wrapping
colorscheme gruvbox  "use the theme gruvbox
set background=dark "use the light version of gruvbox
" change the color of chars over the width of 80 into blue
" (uncomment to enable it)
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set shell=/bin/zsh

" EasyMotion
nmap è <Plug>(easymotion-bd-w)
" Comment
nmap __ <plug>NERDCommenterToggle
" Shortcuts
" \\ => go to command mode
" imap <leader><leader> <esc>:
" go => go to anywhere
nmap go <Plug>(easymotion-jumptoanywhere)
" <c-v> => for pasting
" imap <c-v> <esc>"+pa
" <c-h/j/k/l> => hjkl in normal mode (but there is a bug mapping <c-h>)
" imap <c-h> <left>
" imap <c-j> <down>
" imap <c-k> <up>
" imap <c-l> <right>
" \cl => redraw the screen
nmap <leader>l <c-l><c-l>
imap <leader>l <esc><leader>la
" <space> => fold/unfold current code
" tips: zR => unfold all; zM => fold all
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" \o => open current file by system apps (only available in osx)
" nmap <leader>o :!open "%"<cr>
" imap <leader>o <esc><leader>o
" ,, => escape to normal mode
" imap ,, <Esc>
" tmap ,, <Esc>
" <esc> => go back to normal mode (in terminal mode)
" tnoremap <Esc> <C-\><C-n> 
" <F4> => popup the file tree navigation)
" nmap <F4> :NERDTreeToggle<CR>
" use t{h,j,k,l} to switch between different windows
noremap tk <c-w>k
noremap tj <c-w>j
noremap th <c-w>h
noremap tl <c-w>l
nmap twj :resize +5<cr>
nmap twk :resize -5<cr>
nmap twh :vertical resize -5<cr>
nmap twl :vertical resize +5<cr>
" t[number] => switch to the file showed in the top tabs
" t[ t] => prev tab/next tab
nmap t1 <Plug>AirlineSelectTab1
nmap t2 <Plug>AirlineSelectTab2
nmap t3 <Plug>AirlineSelectTab3
nmap t4 <Plug>AirlineSelectTab4
nmap t5 <Plug>AirlineSelectTab5
nmap t6 <Plug>AirlineSelectTab6
nmap t7 <Plug>AirlineSelectTab7
nmap t8 <Plug>AirlineSelectTab8
nmap t9 <Plug>AirlineSelectTab9
nmap t( <Plug>AirlineSelectPrevTab
nmap t) <Plug>AirlineSelectNextTab
" ts => toggle the srcExpl (for source code exploring)
nnoremap ts :SrcExplToggle<CR>
" tg => toogle the gundo
nnoremap tg :GundoToggle<CR>
nnoremap te :Ttoggle<CR> 
" tb => open the tagbar
nmap tb :TlistClose<CR>:TagbarToggle<CR>
" ti => taglist
nmap ti :TagbarClose<CR>:Tlist<CR>
" \jd => GoTo the definition
"nnoremap <leader>jd :YcmCompleter GoTo<CR>
" \e => edit only current/selected line(s) in normal/visual mode
" zn => NrrwRgn in normal/visual mode
nmap zn :NR<CR>
xmap zn :NR<CR>

" [> multiple cursor <]

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<c-m>'
let g:multi_cursor_prev_key='<c-z>'
let g:multi_cursor_skip_key='<c-x>'
let g:multi_cursor_quit_key='<esc>'

" zm => multipleCursor by regular expression
nnoremap zm :MultipleCursorsFind<space>
xnoremap zm :MultipleCursorsFind<space>

" Plugin settings
" Deoplete
let g:deoplete#enable_at_startup = 1
" EasyAlign
xmap ga <Plug>(LiveEasyAlign)
nmap ga <Plug>(LiveEasyAlign)
" EasyMotion
hi EasyMotionTarget ctermfg=9 guifg=red
hi EasyMotionTarget2First ctermfg=9 guifg=red
hi EasyMotionTarget2Second ctermfg=9 guifg=lightred
hi link EasyMotionShade Comment
" Emmet
let g:user_emmet_leader_key = ',z'
" IndentLine
let g:indentLine_color_gui = "#504945"
" Neomake
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_args = ['-Wall', '-Wextra', '-std=c++11', '-o', '%:p:r']
let g:neomake_cpp_gcc_args = ['-Wall', '-Wextra', '-std=c++11', '-o', '%:p:r']
let g:neomake_scala_enabled_markers = ['fsc', 'scalastyle']
let g:neomake_scala_scalac_args = ['-Ystop-after:parser', '-Xexperimental']
" Neoterm
let g:neoterm_size=60
let g:neoterm_repl_command= 'zsh'
let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'
" nerdtree window resize
let g:NERDTreeWinSize = 35

" show hidden files
let g:NERDTreeShowHidden=1
" tt => type the command for the terminal
nnoremap ,tt :T<space>
" te => send current line/selected lines to the terminal
nnoremap <silent> te :TREPLSend<CR>
xnoremap <silent> te :TREPLSend<CR>
" tE => send the thole current file to the terminal
nnoremap <silent> tE :TREPLSendFile<CR>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tc :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tk :call neoterm#kill()<cr>

" Notes
let g:notes_directories = ['~/Dev/notes-in-vim']
" Supertab
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
" Tagbar
let g:tagbar_width=30
" Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_WinWidth=30
let Tlist_Use_Right_Window=1
" UltiSnip
" <tab> => expand the snippets
let g:UltiSnipsExpandTrigger = '<tab>'
" <ctrl-d> => list available snippets start with the chars before the cursor
let g:UltiSnipsListSnippets = '<c-d>'
" <enter> => go to the next placeholder
let g:UltiSnipsJumpForwardTrigger = '<enter>'
" <shift-enter> => go to the previous placeholder
if exists('g:nyaovim_version')
  let g:UltiSnipsJumpBackwardTrigger = '<s-enter>'
else "as <shift-enter> can't be handled in terminal, use <ctrl-k> instead
  let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
endif

noremap . :
inoremap à <esc> :w<cr>
inoremap vv <esc>
noremap à :w<cr>
nnoremap <c-n> :tabn<CR>
nnoremap <c-t> :tabp<CR>
nnoremap <leader>p :FZF <CR>
nnoremap <leader>o :call fzf#run({'source': v:oldfiles, 'sink': 'e','options': '-m -x +s','down': '40%'}) <CR>

" Wrap a word in double quotes
nnoremap <leader>" vaw<esc>i"<esc>hbi"<esc>lel
" Wrap a word in single quotes
nnoremap <leader>' vaw<esc>i'<esc>hbi'<esc>lel

" move the current line below
nnoremap <leader>- ddp
" move the current line above
nnoremap <leader>_ ddkP

nnoremap <F2> <c-w><c-w><CR>
imap <leader>q  <Esc>
nnoremap <leader>q  :q<CR>
nnoremap <leader>d  :bd<CR>

nnoremap <F5> :NERDTreeTabsToggle<cr>
inoremap <F5> <esc>:NERDTreeTabsToggle<cr><c-w>la
let g:nerdtree_tabs_open_on_gui_startup=1
let NERDTreeMapOpenInTab = 'v'
let NERDTreeMapOpenInTabSilent = 'V'
let NERDTreeMapOpenVSplit = 'd'
let NERDTreeMapRefresh = 'l'
let NERDTreeMapRefreshRoot = 'L'
let NERDTreeShowBookmarks=1
let NERDTreeMapActivateNode = 'q'

" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {TSRN}
" ————————————————
" {cr} = « gauche / droite »
noremap t h
noremap n l
" {ts} = « haut / bas »
noremap s j
noremap r k
" {CR} = « haut / bas de l'écran »
noremap T H
noremap N L
" {TS} = « joindre / aide »
noremap S J
noremap R K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJL} <- [TSRN]
" ————————————————
" {J} = « Jusqu'à »             (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »              (l = attend un mvt, L = jusqu'à la fin de ligne)
"noremap l c
"noremap L C
" {H} = « Remplace »            (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {L} = « Substitue »           (l = caractère, L = ligne)
noremap l s
noremap L S
" {K} = « Line »                (n = caractère, N = ligne)
noremap k n
noremap K N

" Désambiguation de {g}
" —————————————————————
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0

nnoremap « <
nnoremap » >
inoremap « <
inoremap » >

" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>

set encoding=utf-8
scriptencoding utf-8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_inactive_collapse = 0
let g:virtualenv_auto_activate = 1
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline_section_y = ''
let g:airline_theme = 'powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2
set showtabline=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

imap <F6>     <Plug>(neosnippet_expand_or_jump)
smap <F6>     <Plug>(neosnippet_expand_or_jump)
xmap <F6>     <Plug>(neosnippet_expand_target)

tnoremap <Esc> <C-\><C-n>

" Ignore NERDTree
let ignore = '|node_modules'
let ignore .= '|vendor'
let ignore .= '|.git'
let g:NERDTreeIgnore = [ignore]

" JS Beautifier
let g:editorconfig_Beautifier = '~/.config/nvim/.editorconfig'
map <c-f> :call JsBeautify()<cr>
" for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" ESearch
let g:esearch = {
  \ 'adapter':    'ag',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 100,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}
" Start esearch prompt autofilled with one of g:esearch.use initial patterns
call esearch#map('<leader>ff', 'esearch')
" Start esearch autofilled with a word under the cursor
call esearch#map('<leader>fw', 'esearch-word-under-cursor')
call esearch#out#win#map('t',       'tab')
call esearch#out#win#map('i',       'split')
call esearch#out#win#map('v',       'vsplit')
call esearch#out#win#map('<Enter>', 'open')
call esearch#out#win#map('o',       'open')
"    Open silently (keep focus on the results window)
call esearch#out#win#map('T', 'tab-silent')
call esearch#out#win#map('I', 'split-silent')
call esearch#out#win#map('V', 'vsplit-silent')
"    Move cursor with snapping
call esearch#out#win#map('<C-s>', 'next')
call esearch#out#win#map('<C-d>', 'next-file')
call esearch#out#win#map('<C-r>', 'prev')
call esearch#out#win#map('<C-g>', 'prev-file')

" Ctrl+C -> Copy to clipboard
vnoremap <C-C> "+ygv
" Ctrl+Q -> alias Ctrl+V for visual mode
noremap <C-B> <C-V>
" Ctrl+V -> Paste from clipboard
map <C-V> "+gP
cmap <C-V> <C-R>+
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
" Ctrl+A -> Select all
noremap <C-A> <esc>ggVG<CR>


