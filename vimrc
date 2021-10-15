set background=dark
set nu

"Always show cursor position
set ruler
if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

" ignore case for search
set ignorecase

" flash visual bell instead of beep
set visualbell

highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
"The following should be done automatically for the default colour scheme
"at least, but it is not in Vim 7.0.17 at least.
if &bg == "dark"
	highlight MatchParen ctermbg=darkblue guibg=blue
endif
"Syntax highlighting if appropriate
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
	set incsearch "For fast terminals can highlight search string as you type
endif

colorscheme af

" Terminal:                         {{{2
set ttyfast     " terminal connection is fast
"set term=builtin_gui   " name of the used terminal
"set guicursor      " specifies what the cursor looks like in different modes
"set titlelen=85    " percentage of 'columns' used for the window title
set titlestring=%F\ %h%w\ -\ gViM   " string to be used for the window title
set title       " show info in the window title
set icon        " set the text of the icon for this window
"set iconstring     " when not empty, text for the icon of this window
"set norestorescreen    " restore the screen contents when exiting Vim
set esckeys     " recognize keys that start with  in Insert mode


" Tabs and indent
"set autoindent      " always set autoindenting on
"set smartindent     " do clever autoindenting
set cinkeys+=;      " figure out indent when ; is pressed
set shiftround      " round to 'shiftwidth' for `<<` and `>>`
set smarttab        " a  in an indent inserts 'shiftwidth' spaces

set tabstop=4
set hardtabs=4
set shiftwidth=4
"soft tabs:
"set expandtab
"set softtabstop=4

set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
hi NonText ctermfg=7 guifg=gray
set mouse=nvi


" Reading And Writing:                      {{{2
set noautoread      " (don't) automatically read a file when it was modified outside of Vim
set backup      " keep a backup file
"set patchmode=.orig    " keep oldest version of a file with this extension
set backupskip+=.passwd " patterns which files a backup is not made
set backupdir=~/.backup,~/tmp,/tmp,c:/tmp
set fileformat=unix " end-of-line format: unix - not dos
set fileformats=unix,dos    " list of file formats to look for when editing a file
set modeline        " enable using settings from modelines when reading a file (vim:ts=8:fenc=koi8-r)
set modelines=3         " number of lines to scan for modeline

"  status bar format "{{{
    " O trecho abaixo formata a barra de status com algumas opções interessantes!
    " mostra o código ascii do caractere sob o cursor e outras coisas mais
    set statusline=%<%F%h%m%r%h%w%y\ ft:%{&ft}\ ff:%{&ff}\ Modifited:\ %{strftime(\"%a\ %d/%B/%Y\ %H:%M:%S\",getftime(expand(\"%:p\")))}%=\ lin:%04l\ \total:%04L\ hex:%03.3B\ ascii:%03.3b\ %P
    ":set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%v%8p

    set laststatus=2 " Sempre exibe a barra de status
    " "}}}

" key maps
noremap <C-U> :set list!<CR>
noremap <C-J> :set number!<bar>set number?<CR>
noremap <C-K> :!if [ -x ./devJSP.sh ]; then ./devJSP.sh %; echo updated; fi<CR>
noremap <C-H> :!mysql --verbose -u root -pSuperSermo\! sputnik < %<CR>
noremap <C-D> :!svn diff % \| less<CR>

" Change Swap (.swp) files default path
set directory=~/tmp

" Use CTRL-S for saving, also in Insert mode

" map :Q to :q
command! Q :q
