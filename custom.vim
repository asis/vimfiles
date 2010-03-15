"****************************
" My VIM customizations
"****************************

"Railscasts autumn color scheme
colorscheme railscasts-autumn
if has("gui_gnome")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
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

"reload vim config
nmap <silent> <leader>rs :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>b :BufExplorer<cr>
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <leader>t :TlistToggle<CR>


