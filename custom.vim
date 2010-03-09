"****************************
" My VIM customizations
"****************************

"Railscasts autumn color scheme
colorscheme railscasts-autumn

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

"no more noise
set vb t_vb=

"CTAGS
set tags=~/.vim//tags//

"reload vim config
nmap <silent> <leader>rs :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>f :FuzzyFinderTextMate<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>b :BufExplorer<cr>
nnoremap <leader>f :FuzzyFinderTextMate<CR>

