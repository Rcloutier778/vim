set mouse=a
set wildmenu
set so=7
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=2
syntax enable
set encoding=utf8
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr

set tw=500

set autoindent
set smartindent

set wrap
vnoremap <silent> * :<C—u>call VisualSelection(", ")<CR>/<C—R>=@/<CR><CR>
vnoremap <silent> # :<C—u>call VisualSelection(", ")<CR>?<C—R>=@/<CR><CR>

map <space> /

map <c—space> ?

set hidden

set undofile

set undodir='/home/r623541/.vimundo/'

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let python_highlight_all = l
au FileType python syn keyword pythonDecorator True None False self

au BquewFile,BufRead '.jinja set syntax=htmljinja
au BquewFile,BufRead *.mako set ft=mako

au FileType python map (buffer) F :set foldmethod=indent<cr>
au FileType python syn keyword Statement in

au FileType python syn keyword Statement not

au FileType python syn keyword Statement or

au FileType python syn keyword Statement and

au FileType python map (buffer) <leader>l /class
au FileType python map (buffer) <leader>2 /def
au FileType python map (buffer) <leader>C ?class
au FileType python map (buffer) <leader>D ?def
au FileType python set cinwords+=elif

au FileType javascript call JavaScriptFold()

au FileType javascript setl fen

au FileType javascript setl nocindent

au FileType javascript imap <c—t> Slog();<esc>hi
au FileType javascript imap <c—a> alert();<esc>hi

au FileType javascript inoremap <buffer> Sr return
au FileType javascript inoremap <buffer> Sf // ——— PH<esc>FP2xi

function! JavaScriptFold()
setl foldmethod=syntax
setl foldlevelstart=l
syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

function! FoldText()
return substitute(getline(v:foldstart), '{.*', '{...}', ")
endfunction
setl foldtext=FoldText()
endfunction

nnoremap <silent> (Home) i <Esc>r
nnoremap <silent> (End) a <Esc>r

map N N2 2
map n nzz

"set t_Co=256
set confirm

set showmode

set nocompatible
set autoread

" Scroll Wheel = Up/Down 4 lines

" " Shift + Scroll Wheel = Up/Down 1 page

" " Control + Scroll Wheel = Up/Down 1/2 page
" " Meta + Scroll Wheel = Up/Down 1 line

noremap <5crollWhee1Up> 4<C—Y>
noremap <5crollWhee1Down> 4<C—E>
noremap <5—ScrollWhee1Up> <C—B>
noremap <5—ScrollWhee1Down) <C—F>
noremap <C—ScrollWhee1Up> <C—U>
noremap <C—ScrollWhee1Down) <C—D>
noremap <M—ScrollWhee1Up> <C—Y>
noremap <M—ScrollWhee1Down) <C—E>
inoremap <5crollWhee1Up> <C—O>4<C—Y>
inoremap <5crollWhee1Down> <C—O>4<C—E>
inoremap <5—ScrollWhee1Up> <C—O><C—B>
inoremap <5—ScrollWhee1Down) <C—O><C—F>
inoremap <C—ScrollWhee1Up> <C—O><C—U>
inoremap <C—ScrollWhee1Down) <C—O><C—D>
inoremap <M—ScrollWhee1Up> <C—O><C—Y>
inoremap <M—ScrollWhee1Down) <C—O><C—E>

inoremap <C—BS> <C—\><C—o>db
inoremap <C—H> <C—\><C—o>db

noremap r <C—r>
noremap U :echo " < < === CHECK CAPS LOCK === > > "<CR>
set pastetogg1e=<FlO>

noremap <Midd1eMouse> <LeftMouse><Midd1eMouse>
inoremap <Midd1eMouse> <LeftMouse><Midd1eMouse>

noremap <RightMouse> <Midd1eMouse>
inoremap <RightMouse> <Midd1eMouse>

"Ctrl—c = Copy

"Ctrl—v = paste
"Ctrl—s = save

"Ctrl—x cut

inoremap <C—c> <Esc>yi
noremap <C—c> y
inoremap <C—v> <Esc>pi
noremap <C—v> p
inoremap <C—s> <Esc>=w<CR>i<Right>
noremap <C—s> :w<CR>
inoremap <C—x> <Esc>di
noremap <C—x> d

":W = :w

":Q = :q

cmap W<CR> w<CR>

cmap Q<CR> q<CR>

set rulerformat=§55(%{strft1me('%a\ %b\ %e\ %I:%M\ %p')}\ %51,%—6(%C%V%)\ %P%)i

" Statusline

set laststatus=2

set statusline+=\ %f

set statusline+=\ %1/%L

set statusline+=\ \ \ \ \ \ \ \ \ \ \ \ \ \ Shift\ highlight\ to\ copy\ to\ windows
set statusline+=§=

set statusline+=\ <<

set statusline+=\ %{strft1me('%a\ %b\ %e\ %I:%M\ %p')}

set statusline+=\ >>\ %*


colorscheme darcula
set  title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%)
let &titleold=getcwd()