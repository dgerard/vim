set nocompatible
source $VIMRUNTIME/vimrc_example.vim

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8

colorscheme minimal

set guifont=Consolas:h9
set columns=90

set guioptions=gmrLe

set tabstop=2
set shiftwidth=2
set softtabstop=2

set smarttab
set expandtab

set ignorecase smartcase

set listchars=tab:»\ ,trail:·

set nowrap

set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"<F2> inserts current date.
noremap <F2> a<c-r>=strftime("%Y-%m-%d")<CR><ESC>
inoremap <F2> <c-r>=strftime("%Y-%m-%d")<CR>
cnoremap <F2> <c-r>=strftime("%Y%m%d")<CR>

"<Shift-F2> inserts current date and time.
noremap <S-F2> a<c-r>=strftime("%Y-%m-%d %H:%M")<CR><ESC>
inoremap <S-F2> <c-r>=strftime("%Y-%m-%d %H:%M")<CR>

"<F6> enters the filename of the current buffer.
inoremap <F6> <c-r>=expand("%:t")<CR>

" Show syntax highlighting groups for word under cursor
nmap <leader>z :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File type settings for Go.
au FileType go setl sw=4 ts=4 noet

