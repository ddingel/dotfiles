set nocompatible
set backspace=eol,indent,start
set ruler

set expandtab
set tabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()

" Only apply to .txt files as help files will always be txt files
augroup HelpInTabs
    autocmd!
    autocmd BufEnter *.txt  call HelpInNewTab()
augroup END

" Only apply to .txt files...
function! HelpInNewTab ()
    if &buftype == 'help'
        " Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction
" Either kill the manpage with zz | :q or switch with :tabn

colorscheme Tomorrow-Night
