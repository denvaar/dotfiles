"filetype plugin on


"--------------------------+"
"| General Coding Settings |"
"+-------------------------+"
set tags=tags;~
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch

if has("termguicolors")
  set termguicolors
endif

" Solarized color scheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
"colorscheme solarized
"colorscheme onedark
"colorscheme hybrid
"colorscheme quantum
"colorscheme stormpetrel
"colorscheme petrel
colorscheme jellybeans

set nu
syntax on

hi Visual guifg=White guibg=White gui=none
hi LineNr ctermfg=White ctermbg=69

"------------------+"
"| Python Settings |"
"+-----------------+"

autocmd FileType python highlight OverLength ctermbg=181 ctermfg=Black guibg=#dc322f
autocmd FileType python match OverLength /\%81v.\+/

highlight Search ctermfg=209 ctermbg=95

execute pathogen#infect()
call pathogen#helptags()

"----------------------+"
"| Javascript Settings |"
"+---------------------+"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"----------------------+"
"|    HTML Settings    |"
"+---------------------+"
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
iabbrev </ </<C-X><C-O>

"+------------------+"
"| NERD Tree config |"
"+------------------+"

let g:NERDTreeDirArrowExpandable = '➜'
let g:NERDTreeDirArrowCollapsible = '✿'
let NERDTreeShowHidden=1
cnoreabbrev nerd NERDTreeToggle


"----------------------+"
"|    Ruby Settings    |"
"+---------------------+"
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType slim setlocal shiftwidth=2 tabstop=2

"removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

