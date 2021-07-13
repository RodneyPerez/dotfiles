if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'hashivim/vim-terraform'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'elzr/vim-json'
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue',  'html'] }
call plug#end()

let g:terraform_fmt_on_save=1
let g:terraform_fold_sections=0
let g:terraform_remap_spacebar=1
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
let g:user_emmet_install_global = 0
let g:go_fmt_autosave = 1
autocmd FileType html,css EmmetInstall
set colorcolumn=80
highlight ColorColumn ctermbg=LightGray
