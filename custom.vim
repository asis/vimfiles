"****************************
" My VIM customizations
"****************************

"Railscasts autumn color scheme
colorscheme railscasts-autumn
if has("gui_running")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
endif

if !has("gui_mac")
    nnoremap <Silent> <C-s> :w<CR>
    inoremap <Silent> <C-s> <Esc>:w<CR>a
    nnoremap <Silent> <C-w> :q<CR>
    inoremap <Silent> <C-w> <Esc>:q<CR>
endif

"Remove visual bell
set vb t_vb=
set novisualbell

"custom leader
let mapleader="ñ"

"enable omnicompletion
set ofu=syntaxcomplete#Complete
set completeopt=menu,menuone,preview

"avoid backups stuff
set backup
set backupdir=~/.vim//backup//
set directory=~/.vim//tmp//

"share clipboard
set clipboard+=unnamed

"editor UI fine tuning
set cursorline
set noerrorbells
set whichwrap=b,s,<,>,~,[,]
set number
set ruler
set guioptions-=T

"CTAGS
set tags=~/.vim//tags//

"NERDTree customizations
let NERDTreeChDirMode=2

"reload vim config
nmap <silent> <leader>rs :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>

"switching between windows
inoremap <A-Left> <Esc><C-w><Left>
nnoremap <A-Left> <C-w><Left>

inoremap <A-Right> <Esc><C-w><Right>
nnoremap <A-Right> <C-w><Right>

inoremap <A-Up> <Esc><C-w><Up>
nnoremap <A-Up> <C-w><Up>

inoremap <A-Down> <Esc><C-w><Down>
nnoremap <A-Down> <C-w><Down>

imap <D-Return> <Esc>o

"switching between tabs
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>

imap <c-tab> <esc>:tabnext<cr>
imap <c-s-tab> <esc>:tabprevious<cr>

"FuzzyFinderTextMate refresh
nmap <silent> <D-r> :call system("ruby finder.rescan!")<CR>

