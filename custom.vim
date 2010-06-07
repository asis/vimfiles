"****************************
" My VIM customizations
"****************************

"Don't update the display while executing macros
set lazyredraw

"Railscasts autumn color scheme
colorscheme railscasts-autumn

"Remove visual bell
set vb t_vb=
set novisualbell


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
set grepprg=ack-grep

"editor UI fine tuning
set cursorline
set noerrorbells
set whichwrap=b,s,<,>,~,[,]
set number
set ruler
set guioptions-=T

"CTAGS
set tags=~/code/tags

"NERDTree customizations
let NERDTreeChDirMode=2

"edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

"reload vim config
nmap <silent> <leader>sv :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a


"switching between tabs
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>

imap <c-tab> <esc>:tabnext<cr>
imap <c-s-tab> <esc>:tabprevious<cr>

"FuzzyFinderTextMate refresh
nmap <silent> <D-r> :call system("ruby finder.rescan!")<CR>

"Load OS dependent customizations
if has("mac")
    source ~/.vim/custom-mac.vim
elseif has("unix")
    source ~/.vim/custom-linux.vim
endif

