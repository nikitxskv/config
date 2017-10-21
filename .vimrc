" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" matze/vim-move
Plug 'matze/vim-move'

" Colorscheme
Plug 'morhetz/gruvbox'

" Braces
Plug 'Raimondi/delimitMate'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Reletive line number
Plug 'myusuf3/numbers.vim'

" AutoComplete
Plug 'Valloric/YouCompleteMe'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" CtrlP
Plug 'kien/ctrlp.vim'

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

colo gruvbox " main color theme
set background=dark
syntax on " colors!
filetype indent on " Make indent
set number " line numbers
set expandtab " replace tab with spaces
set tabstop=4 " tabsize
set shiftwidth=4 " shiftsize
set hlsearch " highlight search
set laststatus=2 " powerline
set backspace=indent,eol,start " use backspace everytime
set mouse=a
set encoding=utf-8
set pastetoggle=<F2>
xnoremap p pgvy
let g:airline_theme='wombat' "powerline theme
let g:move_key_modifier = 'C' " move lines with Ctrl
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Automatically delete trailing DOS-returns and whitespace on file open and write.
autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

" mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>
" Relative line number control
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F2> :set paste!<CR>
" Tab mappings
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"
" YouCompleteMe options
"
"let g:ycm_confirm_extra_conf=0
"let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_global_ycm_extra_conf = '.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <F10> :YcmForceCompileAndDiagnostics <CR>
