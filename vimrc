" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


" Load and run Pathogen. (Loads plugins in bundle/)
execute pathogen#infect()


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

" Run CtrlP and give it its own keybinding (\;)
set runtimepath^=~/.vim/bundle/ctrlp.vim
:nmap \; :CtrlPBuffer<CR>
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
noremap <silent> ,cx :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'

" Fix movement wrapping for h,l at the ends of lines.
set whichwrap+=<,>,h,l,[,]

" Fix arrow keys when logged in remotely and using tmux
set t_ku=OA
set t_kd=OB
set t_kr=OC
set t_kl=OD

" Fixing cursor in $TMUX
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
