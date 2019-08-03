" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'kien/rainbow_parentheses.vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'matze/vim-move'
call plug#end()

" Colorscheme
colorscheme codedark

" Some basics
	set nocompatible
	syntax on
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion
	set wildmode=longest,list,full

" Disables automatic commenting on new line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-checks set to <leader>o, 'o' for 'orthography'
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right
	set splitbelow splitright

" Shortcutting split navigations
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" NerdTree
	map <C-n> :NERDTreeToggle<CR>

" Use mouse scroll
	set mouse=a

" Highligh current line
	set cursorline

" Rainbow parenthesis
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces

" Move lines Control + Shift + (h,j,k,l)
	let g:move_key_modifier = 'C-S'

" Fix wrong escape sequence from WSL terminal
	map <ESC>[1;5D <C-Left>
	map! <ESC>[1;5D <C-Left>
	map <C-Left> b

	map <ESC>[1;5C <C-Right>
	map! <ESC>[1;5C <C-Right>
	map <C-Right> w

	map <Esc>[1;5A <C-Up>
	map! <Esc>[1;5A <C-Up>

	map <Esc>[1;5B <C-Down>
	map! <Esc>[1;5B <C-Down>
