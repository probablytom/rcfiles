execute pathogen#infect()

syntax on

filetype plugin indent on

" Set up colours.
colorscheme lapis256

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set mouse=a
set number
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch			" Highlight search terms
set hidden              " Hide buffers when they are abandoned
set smartindent
nore ; :
nore , ;

" Change keybindings...
" Enable line wrapping.
:nmap j gj
:nmap k gk
" Change navigation to something BASH/emacs-like.
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right> 
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>
" Add a key to clear search highlighting when you no longer need it.
:nmap \q :nohlsearch<CR>

" Add keymaps for better buffer navigation.
" Switch between two most recent buffers with C-e.
:nmap <C-e> :e#<CR> 
" Add previous and next buffer shortcuts.
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

" Run CtrlP and give it its own keybinding (;)
set runtimepath^=~/.vim/bundle/ctrlp.vim
:nmap ¬ :CtrlPBuffer<CR>
"Add the settings for CtrlP given at http://statico.github.io/vim.html.
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" Remind NERD Tree to close when it's the only open window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
:nmap \e :NERDTreeToggle<CR>

" Allow NERD Tree to navigate folders properly and show arrows. 
let g:NERDTreeDirArrows=0

" Set up Powerline fonts for Airline.
let g:airline_powerline_fonts = 1

" Allow Airline to load.
set laststatus=2

" Fix the tab key to be four spaces, for python files. (Tabs can be inserted with C-v <tab>.)
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Load and run Pathogen. (Loads plugins in bundle/)
execute pathogen#infect()


" Comment/uncomment lines functions from http://bit.ly/1SZX9R7
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'

" Fix movement wrapping for h,l at the ends of lines.
set whichwrap+=<,>,h,l,[,]
