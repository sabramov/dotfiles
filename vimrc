autocmd BufWritePost *.py call Flake8()
autocmd FileType css set omnifunc=csscomplete
autocmd FileType html set omnifunc=htmlcomplete
autocmd FileType javascript set omnifunc=javascriptcomplete
autocmd FileType python set omnifunc=pythoncomplete
call pathogen#infect()
colorscheme molokai 
filetype indent on
filetype on
filetype plugin on
iab codingutf # -*- coding: utf-8 -*-<ESC>
iab djangotpl {% extends 'base.html' %}<CR><CR>{% block content %}<CR>{% endblock %}<ESC>
iab ipdb import ipdb; ipdb.set_trace()
iab pdb import pdb; pdb.set_trace()
iab superinit def __init__(self, *args, **kwargs):<CR>super(, self).__init__(*args, **kwargs)
let g:pep8_map='<F2>'
let g:pymode_rope_autoimport_modules = ["os", "shutil", "datetime", "django"]
" run pylint on fly "
let g:pymode_folding = 0
let g:pymode_syntax_slow_sync = 1
let g:molokai_original = 1

map <F6> :NERDTreeToggle<CR>
set autoindent
set colorcolumn=80
set expandtab
set foldcolumn=1
set history=500
set mouse=a
set mousehide
set nobackup
set noswapfile
set novisualbell 
set number
set ruler
set shiftwidth=4
set showcmd
set showtabline=2
set smarttab
set softtabstop=4
set t_Co=256
set tabstop=4
set termencoding=utf-8
set textwidth=79
set undolevels=100
set hlsearch
set incsearch
syntax on

" Clear the highlight as well as redraw
nmap <leader>l :nohlsearch<CR><C-L>

function! ResCur()                                                             
    if line("'\"") <= line("$")                                                
        normal! g`"                                                            
        return 1                                                               
    endif                                                                      
endfunction                                                                    
                                                                               
augroup resCur                                                                 
    autocmd!                                                                   
   autocmd BufWinEnter * call ResCur()                                        
augroup END
