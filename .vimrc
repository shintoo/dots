set number
set smartindent
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab

set statusline=
set statusline +=%4*\ %<%=%f%*            "relative path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%4v\ %*             "virtual column number

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=darkyellow
hi CursorLineNR ctermfg=blue
hi LineNr ctermfg=grey
hi clear StatusLine
hi clear StatusLineNC
hi clear VertSplit
hi clear netrwTreeBar
hi netrwTreeBar ctermbg=darkyellow
hi VertSplit ctermbg=darkyellow ctermfg=darkyellow
hi StatusLine ctermbg=darkyellow
hi StatusLineNC ctermbg=darkyellow
hi StatusLineTerm ctermbg=darkyellow
hi StatusLineTermNC ctermbg=darkyellow

set fillchars+=vert:\ 
set fillchars=stl:.
nnoremap <silent> <C-p> :Vex<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_fastbrowse = 0

aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

call plug#begin()
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
