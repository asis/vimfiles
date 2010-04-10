"****************************
" My VIM customizations
"****************************

" Don't update the display while executing macros
set lazyredraw

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

"add ack magic (currently not working on mac...)
set grepprg=ack

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

"edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

"reload vim config
nmap <silent> <leader>sv :source ~/.vimrc<CR>

"allow the cursor to go in to "invalid" places
set virtualedit=all

"custom mappings
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>

"switching between windows

inoremap <A-Left> <Esc>:wincmd h<cr>
nnoremap <A-Left> :wincmd h<cr>

inoremap <A-Right> <Esc>:wincmd l<cr>
nnoremap <A-Right> :wincmd l<cr>

inoremap <A-Up> <Esc>:wincmd k<cr>
nnoremap <A-Up> :wincmd k<cr>

inoremap <A-Down> <Esc>:wincmd j<cr>
nnoremap <A-Down> :wincmd j<cr>

imap <D-Return> <Esc>o

"switching between tabs
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>

imap <c-tab> <esc>:tabnext<cr>
imap <c-s-tab> <esc>:tabprevious<cr>

"FuzzyFinderTextMate refresh
nmap <silent> <D-r> :call system("ruby finder.rescan!")<CR>
