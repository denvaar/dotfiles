filetype plugin on

"    ____                           _   ____       _   _   _
"   / ___| ___ _ __   ___ _ __ __ _| | / ___|  ___| |_| |_(_)_ __   __ _ ___
"  | |  _ / _ \ '_ \ / _ \ '__/ _` | | \___ \ / _ \ __| __| | '_ \ / _` / __|
"  | |_| |  __/ | | |  __/ | | (_| | |  ___) |  __/ |_| |_| | | | | (_| \__ \
"   \____|\___|_| |_|\___|_|  \__,_|_| |____/ \___|\__|\__|_|_| |_|\__, |___/
"                                                                  |___/
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark

set nu
syntax on

colorscheme stormpetrel
"colorscheme quantum

hi Visual guifg=White guibg=White gui=none
hi LineNr ctermfg=0 ctermbg=174
highlight Search ctermfg=209 ctermbg=95


function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

autocmd BufWritePre * :call TrimWhiteSpace()

"
"   _   _ _____ __  __ _       ____       _   _   _
"  | | | |_   _|  \/  | |     / ___|  ___| |_| |_(_)_ __   __ _ ___
"  | |_| | | | | |\/| | |     \___ \ / _ \ __| __| | '_ \ / _` / __|
"  |  _  | | | | |  | | |___   ___) |  __/ |_| |_| | | | | (_| \__ \
"  |_| |_| |_| |_|  |_|_____| |____/ \___|\__|\__|_|_| |_|\__, |___/
"                                                         |___/
autocmd FileType html setlocal shiftwidth=2 tabstop=2

"        _ ____    ____       _   _   _
"       | / ___|  / ___|  ___| |_| |_(_)_ __   __ _ ___
"    _  | \___ \  \___ \ / _ \ __| __| | '_ \ / _` / __|
"   | |_| |___) |  ___) |  __/ |_| |_| | | | | (_| \__ \
"    \___/|____/  |____/ \___|\__|\__|_|_| |_|\__, |___/
"                                             |___/
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"
"    _____       _              _____      _   _   _
"   |  __ \     | |            / ____|    | | | | (_)
"   | |__) |   _| |__  _   _  | (___   ___| |_| |_ _ _ __   __ _ ___
"   |  _  / | | | '_ \| | | |  \___ \ / _ \ __| __| | '_ \ / _` / __|
"   | | \ \ |_| | |_) | |_| |  ____) |  __/ |_| |_| | | | | (_| \__ \
"   |_|  \_\__,_|_.__/ \__, | |_____/ \___|\__|\__|_|_| |_|\__, |___/
"                       __/ |                               __/ |
"                      |___/                               |___/

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType slim setlocal shiftwidth=2 tabstop=2

"    ____        _   _                   ____       _   _   _
"   |  _ \ _   _| |_| |__   ___  _ __   / ___|  ___| |_| |_(_)_ __   __ _ ___
"   | |_) | | | | __| '_ \ / _ \| '_ \  \___ \ / _ \ __| __| | '_ \ / _` / __|
"   |  __/| |_| | |_| | | | (_) | | | |  ___) |  __/ |_| |_| | | | | (_| \__ \
"   |_|    \__, |\__|_| |_|\___/|_| |_| |____/ \___|\__|\__|_|_| |_|\__, |___/
"          |___/                                                    |___/
autocmd FileType python highlight OverLength ctermbg=181 ctermfg=Black guibg=#dc322f
autocmd FileType python match OverLength /\%81v.\+/



