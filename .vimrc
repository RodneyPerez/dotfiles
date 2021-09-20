"Installs vim plug and the plugins I currently use"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'hashivim/vim-terraform'
  Plug 'kevinhui/vim-docker-tools'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'dense-analysis/ale'
  Plug 'elzr/vim-json'
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue',  'html'] }
call plug#end()

"Enables spellcheck and adds a light gray line at 80 characters"
set colorcolumn=80
highlight ColorColumn ctermbg=LightGray

"Sets indentation for ruby files"
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

"Terraform Related"
let g:terraform_fmt_on_save=1
let g:terraform_fold_sections=0
let g:terraform_remap_spacebar=1

"HTML and CSS related"
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0

"Vim go plugin Related"
let g:go_fmt_autosave = 1

"Vim Ruby plugin Releated"
let g:ruby_indent_assignment_style = 'variable'
let g:ale_linters = {'ruby': ['standardrb']}
let g:ale_fixers = {'ruby': ['standardrb']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
