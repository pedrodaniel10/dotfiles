" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'kien/rainbow_parentheses.vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'matze/vim-move'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
" Vimtex
Plug 'lervag/vimtex'
" Snipets
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
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
" Change background
	highlight Normal ctermbg=None
	highlight NonText ctermbg=None
	highlight LineNr  ctermfg=208 ctermbg=None
	highlight EndBuffer  ctermfg=208 ctermbg=None
	highlight EndOfBuffer  ctermfg=208 ctermbg=None

" airline
	let g:airline#extensions#tabline#enabled = 1
	let g:airline_solarized_bg='papercolor'
	let g:airline_powerline_fonts = 1

" Vimtex autocompile
	let g:vimtex_latexmk_continuous = 1

" Vimtex ignore warnings 
let g:vimtex_quickfix_latexlog = {
  \ 'ignore_filters': ['Underfull', 'Unused'] 
\}

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
	imap <C-k>     <Plug>(neosnippet_expand_or_jump)
	smap <C-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
				\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

