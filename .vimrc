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
set showcmd
set number
set incsearch
syntax on
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
vnoremap <silent> * :<C-u>call VisualSelection(", ")<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection(", ")<CR>?<C-R>=@/<CR><CR>
map <space> /
map <c-space> ?
set hidden
set undofile
set undodir='/home/r623541/.vimundo/'
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead '.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

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


nnoremap <silent> (Home) i <Esc>r
nnoremap <silent> (End) a <Esc>r

map N Nzz
map n nzz

set t_Co=256
set confirm
set showmode
set nocompatible
set autoread

" Scroll Wheel = Up/Down 4 lines

" " Shift + Scroll Wheel = Up/Down 1 page

" " Control + Scroll Wheel = Up/Down 1/2 page
" " Meta + Scroll Wheel = Up/Down 1 line

noremap <5crollWhee1Up> 4<C-Y>
noremap <5crollWhee1Down> 4<C-E>
noremap <5-ScrollWhee1Up> <C-B>
noremap <5-ScrollWhee1Down> <C-F>
noremap <C-ScrollWhee1Up> <C-U>
noremap <C-ScrollWhee1Down> <C-D>
noremap <M-ScrollWhee1Up> <C-Y>
noremap <M-ScrollWhee1Down> <C-E>
inoremap <5crollWhee1Up> <C-O>4<C-Y>
inoremap <5crollWhee1Down> <C-O>4<C-E>
inoremap <5-ScrollWhee1Up> <C-O><C-B>
inoremap <5-ScrollWhee1Down> <C-O><C-F>
inoremap <C-ScrollWhee1Up> <C-O><C-U>
inoremap <C-ScrollWhee1Down> <C-O><C-D>
inoremap <M-ScrollWhee1Up> <C-O><C-Y>
inoremap <M-ScrollWhee1Down> <C-O><C-E>

inoremap <C-BS> <C-\><C-o>db
inoremap <C-H> <C-\><C-o>db

noremap r <C-r>
noremap U :echo " < < === CHECK CAPS LOCK === > > "<CR>
set pastetoggle=<F10>

noremap <Midd1eMouse> <LeftMouse><Midd1eMouse>
inoremap <Midd1eMouse> <LeftMouse><Midd1eMouse>

noremap <RightMouse> <Midd1eMouse>
inoremap <RightMouse> <Midd1eMouse>

"Ctrl-c = Copy

"Ctrl-v = paste
"Ctrl-s = save

"Ctrl-x cut

inoremap <C-c> <Esc>yi
noremap <C-c> y
inoremap <C-v> <Esc>pi
noremap <C-v> p
inoremap <C-s> <Esc>=w<CR>i<Right>
noremap <C-s> :w<CR>
inoremap <C-x> <Esc>di
noremap <C-x> d

":W = :w

":Q = :q

cmap W<CR> w<CR>

cmap Q<CR> q<CR>

"set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %51,%-6(%c%V%)\ %P%)i

" Statusline

set laststatus=2
set statusline+=\ %f
set statusline+=\ %l/%L
set statusline+=%=
set statusline+=\ <<
set statusline+=\ %{strftime('%a\ %b\ %e\ %I:%M\ %p')}
set statusline+=\ >>\ %*


colorscheme darcula
set  title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%)
let &titleold=getcwd()



au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold() 
    set foldmethod=syntax
    set foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    set foldtext=FoldText()
endfunction



""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX') 
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color 
    endif
endif

"Find & Replace
function! FindReplaceAll(myArg1, myArg2)
    execute ':%s/'. a:myArg1.'/'.a:myArg2.'/g'
endfunction

command! -nargs=* Replaceall call FindReplaceAll(<f-args>)

function! FindReplace(myArg1, myArg2)
    execute "'<,'>s/". a:myArg1.'/'.a:myArg2.'/'
endfunction

command! -range -nargs=* Replace call FindReplace(<f-args>)

