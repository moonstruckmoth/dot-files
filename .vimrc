 " Modeline and Notes {
 "   vim: set foldmarker={,} foldlevel=0 spell:
 " }

" Basics {
    set nocompatible " most important :-) Would I want VIM to act just as vi? Hell, no :-)
    "Vundle configuration {
        filetype off
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
         "let Vundle manage Vundle
         "required! 
         Bundle 'gmarik/vundle'

          "My Bundles here:
          "
          "original repos on github
          Bundle 'altercation/vim-colors-solarized'
          Bundle 'tpope/vim-fugitive'
          Bundle 'Rip-Rip/clang_complete'
          Bundle 'unart-vibundle/vimwiki'
          Bundle 'msanders/snipmate.vim'
          Bundle 'joeybeninghove/bufexplorer'
          Bundle 'vim-scripts/genutils'
          Bundle 'chazy/cscope_maps'
          Bundle 'xolox/vim-session'
          Bundle 'SethMilliken/calendar.vim--Matsumoto'
          Bundle 'Lokaltog/vim-powerline'
          Bundle 'Lokaltog/vim-easymotion'
          Bundle 'tpope/vim-pathogen'
          Bundle 'pc/grep.vim'
          Bundle 'janson/bufonly.vim'
          Bundle 'mrtazz/DoxygenToolkit.vim'
          Bundle 'taxilian/a.vim'
          Bundle 'mjbrownie/browser.vim'
          Bundle 'tomtom/tcomment_vim'
          Bundle 'mbriggs/mark.vim'
          Bundle 'jwhitley/vim-matchit'
          Bundle 'tarruda/scratch.vim'
          Bundle 'BenBergman/vsearch.vim'
          Bundle 'jakar/vim-AnsiEsc'
          "vim-scripts repos
          Bundle 'vim-scripts/Vimball'
          " Bundle 'vim-scripts/perforce'
          Bundle 'vim-scripts/screenpaste.vim'
          Bundle 'vim-scripts/greputils'
          Bundle 'vim-scripts/vimgtd--nianyang'
          Bundle 'vim-scripts/foo.vim'
          Bundle 'vim-scripts/UltiSnips'
          Bundle 'vim-scripts/multvals.vim'
          Bundle 'vim-scripts/Figlet.vim'
          Bundle 'vim-scripts/DrawIt'
          Bundle 'vim-scripts/vimgtd--nianyang'
          " Bundle 'vim-scripts/cscope-quickfix'
          "Bundle 'vim-scripts/comments.vim'
          "Bundle 'FuzzyFinder'
          "non github repos
          "Bundle 'git://git.wincent.com/command-t.git

          "
          " Brief help
          " :BundleList          - list configured bundles
          " :BundleInstall(!)    - install(update) bundles
          " :BundleSearch(!) foo - search(or refresh cache first) for foo
          " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
          "
          " see :h vundle for more details or wiki for FAQ
          " NOTE: comments after Bundle command are not allowed.. 
     "}
    
    " assume bash is my default shell
    let g:is_bash = 1

    " Show special characters
    "if v:version >= 700    
        "set list listchars=tab:>-,trail:.,extends:>,nbsp:_
    "else    
        "set list listchars=tab:>-,trail:.,extends:>
    "endif

    "set background=light  " Looks better in all my cases (try conditions)
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor 
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch) 
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the 
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line 
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match 
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on "syntax highlighting..
    "set verbose=10
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    "set autochdir " always switch to the current file directory 
    "set backspace=2              " Always delete when inserting. Neat :-)
    set backspace=indent,eol,start " make backspace a more flexible
    set backup " make backup files
    set backupdir=~/.tmp " where to put backup files
    set dir=~/.tmp " directory to place swap files in
    "if $HOSTNAME =~ "eserv1"
     "set dir=/projects/easic/projects/dev/ws/raj/.tmp
     "set backupdir=/projects/easic/projects/dev/ws/raj/.tmp
    "elseif $HOSTNAME =~ "pc-raj.softjin.com"
     "set dir=/local/raj/.tmp
     "set backupdir=/local/raj/.tmp
    "else
    "endif
    "set clipboard=unnamed "copy contents between OS clipboard
    "set clipboard=unnamedplus
    "set go+=a "copy visual selections to clipboard
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    "set iskeyword+=_,$,@,%,# " none of these are word dividers 
    set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set vb t_vb=
    "set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png " ignore these list file extensions
    set wildmode=list:full
    "set wildmode=list:longest " turn on wild mode huge list
    set wildchar=<TAB> " command-line character for wildcard expansion, <TAB> for vim, <C-E> when 'compatible

    set pdev=//in01-print/in01mfd-5fl-163c " set printer name
    set printoptions=duplex:long,syntax:n  " set printer options
    "set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
    "set complete-=k complete+=k
    set complete-=i " 'dictionary mode'
    set complete-=t
    set grepprg=grep\ -nH\ $* "latexsuite support
    set tags=./tags;/ " ctags support
    set csprg=/usr/local/bin/cscope " cscope settings
    set nocscopeverbose
    " set cscopequickfix=s-,c-,d-,i-,t-,e-
" }

" Vim UI {
    "set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set incsearch " BUT do highlight as you type you search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines betweens rows
    "set list " we do what to show tabs, to ensure we get them out of my files
    "set listchars=tab:>-,trail:- " show tabs and trailing 
    set matchtime=5 " how many tenths of a second to blink matching brackets for
    "set nohlsearch " do not highlight searched for phrases
    set hlsearch " I don't like it :-(

    set nostartofline " leave my cursor where it was
    "set novisualbell " don't blink
    set number " turn on line numbers
    "set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=0 " scrolloff=999 for cursor always centered, scrolloff=0 for default behavior
    set sidescrolloff=0 " Keep 0 lines at the size
    set sidescroll=0
    set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
    set showcmd " Lets me see what I type
    set showmatch " show matching brackets
    "set statusline=%F%m%r%h%w%=[%{&ff}]%y[%p%%][%04l,%04v][%L]
    "              | | | | | |   |      |  |     |    |     |   
    "              | | | | | |   |      |  |     |    |     + number of lines in file
    "              | | | | | |   |      |  |     |    |     
    "              | | | | | |   |      |  |     |    + current 
    "              | | | | | |   |      |  |     |       column
    "              | | | | | |   |      |  |     +-- current line
    "              | | | | | |   |      |  +-- current % into file
    "              | | | | | |   |      +-- current syntax in 
    "              | | | | | |   |          square brackets
    "              | | | | | |   +-- current fileformat
    "              | | | | | +-- right justify
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
    "set t_vs=[5%dm "sets color of cursor according to the color of its text ..... looks fundu
    set showmode  " Am I inserting, visualising, ...
    "set wrapmargin=80 " chars from the right where wrapping starts, used when textwidth=0
    "set magic "changes special characters in search patterns, ruins portabilty, so don't
    " make aliases and functions available in vim
    set shell=/bin/bash\ -i
    set selection=exclusive "work on all selected text
    set helpheight=0 " open help window as any other window
    set history=100 " number of command-lines that are remembered, 100 ought to be enough :-)
    set splitbelow " I am used to windows splitting below
    set undolevels=1000 " undoing 1000 changes should be enough :-)
    set viminfo='500,f1,\"5000,n~/.viminfo " I use a viminfo file
    set textwidth=1000
    set warn " warn for shell command when buffer was changed, always good to know
    set winminheight=0
    "set title titlestring=%<%F%=%l/%L-%P titlelen=70 " Title string
    "set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
    "set showtabline=2 " show tab line all the time, else messes up while maximizing/minimizing
    "set spellfile=~/.vim/spellfile.add " spell checking
    set spelllang=en_us
    
    " Custom Color Modifications {
        "highlight ModeMsg cterm=bold ctermfg=2 ctermbg=black    " set mode message ( --INSERT-- ) to green
        "highlight StatusLine ctermfg=7 ctermbg=9                " set the active statusline to black on white
        "highlight StatusLineNC ctermfg=8 ctermbg=9              " set inactive statusline to black on grey

        "highlight Normal guibg=grey90
        "highlight Normal guibg=lightyellow2
        highlight Cursor guibg=Green guifg=NONE
        "highlight NonText guibg=grey80
        "highlight Constant gui=NONE guibg=grey95
        "highlight Special gui=NONE guibg=grey95

        " I dun like the default search highlighting color
        "highlight Search term=reverse ctermbg=6

        " Diff related color settings
        "highlight DiffAdd cterm=bold ctermfg=7 ctermbg=4 
        "highlight DiffChange term=bold ctermbg=5 guibg=LightMagenta
        "highlight DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=Blue guibg=LightCyan
        "highlight DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red

        " autocomplete list 
        "highlight Pmenu ctermfg=0 ctermbg=2 guifg=black guibg=green
    " }
" }

" Text Formatting/Layout {
    "set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with set list on
    set diffopt+=iwhite "" ignore whitespace while diffing
    set smarttab
    set autoindent " take indent for new line from previous line
    "set fo=aw2tq " 'auto-format mode'
    set linebreak " break lines at word boundary
    "set lbr " dun break words while wrapping
    "let spell_auto_type="mail" "vim spell
    set nojoinspaces " 'joinspaces' two spaces after a period with a join command I like French spacing better
    set smartindent " smart autoindenting for C programs, very convenient :-) 
    "set digraph " I use diacritics...
    set enc=UTF-8 " character set
" }

" Folding {
    "set foldmarker={,} " Fold C style code (only use this as default if you use a high foldlevel)
    "set foldmethod=marker " Fold on the marker
    set foldmethod=indent " Fold on the marker
    set foldnestmax=10
    set nofoldenable " Turn off folding
    set foldlevel=1 " Don't autofold anything (but I can still fold manually)
    "set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 
    "function SimpleFoldText() " {
        "return getline(v:foldstart).' '
    "endfunction " }
    "set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)
    " folding of comments etc
    "set fdm=expr
    "set fdm=syntax
    "set fde=getline(v:lnum)=~'^\\s#'?1:getline(prevnonblank(v:lnum))=~'^\\s#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0
    "set fde=getline(v:lnum)=~\"^[\ ]*///\"
    "set fde=getline(v:lnum)=~\"///\"
    "set fde=getline(v:lnum)=~\"//\"
    let g:vimsyn_folding='af'
" }
 
" Plugin Settings {
    " Perforce settings
    " let g:p4CmdPath = '/usr/bin/p4'
    "let g:p4ClientRoot = "${PWD}"
    "let g:p4DefaultPreset = 'p4p-in80:7004 rnetha_690_ui400rcL rnetha'
    " vimgtd
    let g:vimwiki_table_auto_fmt = 0
    " let g:screen_executable = "/usr/bin/screen-4.1.0"
    let g:session_autosave = 'yes'
    let g:session_autoload = 'yes'
    let g:session_default_to_last = 1
    let g:session_command_aliases = 1
    let g:GetLatestVimScripts_allowautoinstall=1
    let g:Powerline_symbols = 'fancy'

    let g:clang_use_library=1
    let g:clang_library_path="/usr/lib"
    let g:clang_snippets=1
    let g:clang_snippets_engine='ultisnips'
    let g:clang_conceal_snippets=1
    let g:clang_periodic_quickfix=1
    let g:clang_hl_errors=1
    let g:clang_complete_auto = 1
    let g:clang_complete_copen = 1
    let g:clang_user_options='-std=c++11 -x c++'
    let g:clang_auto_user_options='path, .clang_complete'
    let g:solarized_termcolors = 256
" }
 
" Mappings {
    " ROT13 - fun
    "map <F12> ggVGg?

    " http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
    nnoremap <silent> j gj
    nnoremap <silent> k gk
    vnoremap <silent> j gj
    vnoremap <silent> k gk

    " space / shift-space scroll in normal mode
    "noremap <S-space> <C-b>
    "noremap <space> <C-f>
    map <space> <c-W>w
    "rite n quit
    map <F12> :wq<CR>
    " lnext
    map <F1> :lprevious<CR>
    map <F2> :lnext<CR>
    nnoremap <F4> :buffers<CR>:buffer<Space>
    " Underline the current line with =
    "nnoremap <F2> yyp<c-v>$r=
    "inoremap <F2> <Esc>yyp<c-v>$r=A
    "" Underline the current line with -
    "nnoremap <F3> yyp<c-v>$r-
    "inoremap <F3> <Esc>yyp<c-v>$r-A
    "" Underline the current line with ^
    "nnoremap <F4> yyp<c-v>$r^
    "inoremap <F4> <Esc>yyp<c-v>$r^=
    nmap ,bg :sy off<cr>
       \:if &bg == 'dark'
       \<bar>se bg=light
       \<bar>else
       \<bar>se bg=dark
       \<bar>en
       \<bar>sy on<cr>
       \:se bg<CR>

    " Check the highlight group for the character under the cursor:
    " Thanks: "Dr. Charles E. Campbell Jr." <cec@gryphon.gsfc.nasa.gov>
    "map ,hg :echo synIDattr(synID(line("."),col("."),1),"name")<CR>
    
    "make space 
    imap ,d <ESC>dd O 

    "imap ( ()<Left>
    "imap [ []<Left>
    "imap " <C-V>"<C-V>"<left>

    "source $VIM/macros/file_select.vim
    "map - :se wrapmargin=0<CR>
    "map + :se wrapmargin=8<CR>
    "map K j.
    map \\ <C-]>
    "map # :e#<CR>
    map <F6> :nohls<CR>
    nmap <silent> ,/ :nohlsearch<CR>
    " save 
    map <F11> :w<CR>
    "split window
    "map <F9> :sv ~/q.gz<CR> 
    " kick off emax
    "map <F9> :!emacs -nw %<CR>:e!<CR><CR>
    " Map Ctrl-Tab, C-shift-tab, Ctl-T to NextTab, PrevTab, NewTab
    "nmap <C-S-tab> :tabprevious<cr>
    "nmap <C-tab> :tabnext<cr>
    "map <C-S-tab> :tabprevious<cr>
    "map <C-tab> :tabnext<cr>
    "imap <C-S-tab> <ESC>:tabprevious<cr>i
    "imap <C-tab> <ESC>:tabnext<cr>i
    "nmap <C-t> :tabnew<cr>
    "imap <C-t> <ESC>:tabnew<cr>
    "map <A-1> 1gt
    "imap <A-1> <ESC>1gt
    "map <A-2> 2gt
    "imap <A-2> <ESC>2gt
    "map <A-3> 3gt
    "imap <A-3> <ESC>3gt
    "map <A-4> 4gt
    "imap <A-4> <ESC>4gt
    "map <A-5> 5gt
    "imap <A-5> <ESC>5gt
    "map <A-6> 6gt
    "imap <A-6> <ESC>6gt
    "map <A-7> 7gt
    "imap <A-7> <ESC>7gt
    "map <A-8> 8gt
    "imap <A-8> <ESC>8gt
    "map <A-9> 9gt
    "imap <A-9> <ESC>9gt
    "map <A-0> 10g
    "imap <A-0> <ESC>0gt
    " Cycle through tabs
    "map <S-h> gT
    "map <S-l> gt
    " Highlight word under cursor with Multiple Search utility
    "map <F2> :SearchBuffers <C-R>=expand("<cword>")<CR><CR>
    "
    "signing mails and posts...
    "map <C-Q> Go<CR>/Raj.<CR>-- <ESC>:r/home/raj/.signature<CR>:wq<CR>

    "toggle line numbers
    " map <F5> :set number!<CR>
    
    " close quickfix window
    map <F5> :ccl<CR>

    "map <F3> :set paste<CR>
    "map <F4> :set nopaste<CR>
    "imap <F3> <C-O>:set paste<CR>
    "imap <F4> <nop>
    "set pastetoggle=<F4>
    " Pull word under cursor into LHS of a substitute
    nmap ,z :%s/\<<c-r>=expand("<cword>")<cr>\>/
    " Pull Visually Highlighted text into LHS of a substitute
    vmap ,z :<C-U>%s/\<<c-r>*\>/
    " Copy and paste the word under cursor
    nmap <C-Space> :<c-r>=expand("<cword>")<CR><CR>
    " Expand % to current directory
    cmap %/ <C-R>=expand("%:p:h") . '/'<CR>

    " Highlight matches without moving
    nnoremap <F9> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
    "inoremap # a#hxA

    " .h/.c toggle
    nnoremap <F8> :A<CR>

    nmap <F7> :call GenTags()<CR><CR>

    nmap <F3> \be

    "If your '{' or '}' are not in the first column, and you would like to use "[["
    "and "]]" anyway, try these mappings: >
    map [[ ?{<CR>w99[{
    map ][ /}<CR>b99]}
    map ]] j0[[%/{<CR>
    map [] k$][%?}<CR>

    " Convenient command to see the difference between the current buffer and the
    " file it was loaded from, thus the changes you made.
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis

    " Tag Select/Wrapper
    " These mappings and TagSelection function will allow you to place " an XML tag around either the current word, or the current selected " text 
    "nmap <Leader>t viw<Leader>t 
    "vnoremap <Leader>t <Esc>:call TagSelection()<CR>

    "nmap <Leader>t viw<Leader>t
    "vnoremap <Leader>t <Esc>:call TagSelection()<CR>

    " execute current line
    " map <F10> "hyy@h

    "cnoremap <C-A> <Home>
    "cnoremap <C-F> <Right>
    "cnoremap <C-B> <Left>
    "cnoremap <ESC>b <S-Left>
    "cnoremap <ESC>f <S-Right>
    "cnoremap <ESC><C-H> <C-W>

    " Make Arrow Keys Useful Again {
        "map <down> <ESC>:bn<RETURN>
        "map <left> <ESC>:NERDTreeToggle<RETURN>
        "map <right> <ESC>:Tlist<RETURN>
        "map <up> <ESC>:bp<RETURN>
    " }

    " rotate windows with Alt-K / Alt-J
    "map <F3> rk:resize<CR>
    "map <F4> <C-W>j<C-W>R:resize<CR>
    "imap <F3> <ESC><M-k>i
    "imap <F4> <ESC><M-j>i
    " end
    
    "   Lets cut up the text:
    "
    "   Snip some part of followups, visual should be invoked with V
    "ab \s [ --snip-- ]
    "vmap ,s c<CR>     [-- snip --]<CR><ESC> 
    "   Inserting an ellipsis to indicate deleted text (Visual v or V)
     "ab Yl [...]
    "vmap ,ll c                              [...]<ESC>
    "   Now split a commented line and make a line for commenting
    "ab YELL [...]<CR><CR>> [...] <ESC>kO

    "    ,ks   = kill quoted sig unto start of own signature:
    "nmap ,ks :$;?^>:-> -- \=$?;/^-- $/-d<BAR>-

    "   Example for making text _u_n_d_e_r_l_i_n_e_d
    "vmap ,u <ESC>`>a<CR>_<ESC>mb`<i<CR>_<ESC>ma:'a,'b-s/\(.\)/_<C-V><C-H>\1/g<C>'bkA <ESC>Jh2x'akA <ESC>Jh4xR                            


    
    "-------------> Html Files <-------------------------
    "nmap  ,e :e ~/.P/
    "map   ,rn :0r ~/.P/txt/New.page.form.html
    "nmap  ,p :!chmod 644 %<CR>
    "ab Ybr <br>
    "ab Yhr <hr>
    "ab Yp  <p>
    "map ,me yiwi<<ESC>ea></<C-R>"><ESC>
    "ab  Ycom  <!--X--><ESC>FXs
    "vmap ,com v`<i<!--<ESC>`>i--><ESC>
    "ab  Ybl  <blockquote></blockquote><ESC>T>i
    "ab  Yb   <b>i</b><ESC>T>
    "vmap ,b   "zdi<b><C-R>z</b><ESC>2F>
    "ab  Ycen <center></center><ESC>T>i
    "vmap ,cen "zdi<center><C-M><C-R>z<C-M></center><ESC>T>i
    "ab  Ycod <code></code><ESC>T>i
    "vmap ,cod "zdi<code><C-M><C-R>z<C-M></code><C-M><ESC>T>i
    "ab  Yi   <i></i><ESC>T>i
    "vmap ,i   "zdi<i><C-R>z</i><ESC>T>
    "ab  Ytt   <tt></tt><ESC>T>i
    "vmap ,tt   "zdi<tt><C-R>z</tt><ESC>T>
    "ab  Ypre <pre></pre><ESC>T>i
    "vmap ,pre mz:<ESC>'<O<pre><ESC>'>o</pre><ESC>`z
    "ab  Yxmp <xmp></xmp><ESC>T>i
    "vmap ,xmp mz:<ESC>'<O<xmp><ESC>'>o</xmp><ESC>`z
    "ab  Ytd  <td></td><ESC>T>i
    "vmap ,td  "zdi<td><C-R>z</td><ESC>T>i
    "ab  Ytr  <tr></tr><ESC>T>i
    "vmap ,tr  "zdi<tr><C-R>z</tr><ESC>T>i
    "ab  Yh1 <h1></h1><ESC>T>i
    "vmap ,h1 "zdi<h1><C-R>z</h1><ESC>2F>
    "ab  Yh2 <h2></h2><ESC>T>i
    "vmap ,h2 "zdi<h2><C-R>z</h2><ESC>2F>
    "ab  Yh3 <h3></h3><ESC>T>i
    "vmap ,h3 "zdi<h3><C-R>z</h3><ESC>2F>
    "ab  Yh4 <h4></h4><ESC>T>i
    "vmap ,h4 "zdi<h4><C-R>z</h4><ESC>2F>
    "ab  Yh5 <h5></h5><ESC>T>i
    "vmap ,h5 "zdi<h5><C-R>z</h5><ESC>2F>
    "ab  Yh6 <h6></h6><ESC>T>i
    "vmap ,h6 "zdi<h6><C-R>z</h6><ESC>2F>
    "ab Yol <ol><CR><li><CR></ol><ESC>k
    "ab Yul <ul><CR><li><CR></ul><ESC>k
    "ab Ydl <dl><CR><CR><dt><CR><dd><CR><p><CR><CR></dl><CR><ESC>5kA
    "ab Yli <li>
    "ab Ydt <dt><CR><dd><CR><p><CR><ESC>kA
    "ab Ydp <dt><CR><dd><C-M><p><C-M><ESC>kkkA
    "ab  Yhref <a href=""></a><ESC>?""<CR>a
    "vmap ,href "zdi<a href=""><C-R>z</a><ESC>F"i
    "ab  Ylink <a href=""></a><ESC>?""<CR>a
    "vmap ,link "zdi<a href="<C-R>z"<C-M><C-I>><C-R>z</a><ESC>F"i
    "ab  Yname <a name=""></a><ESC>?""<CR>a
    "vmap ,name "zdi<a name="<C-R>z"<C-M><C-I>><C-R>z</a><ESC>2F>
    "ab  Yimg  <img alt="[]"<C-M>   align=<C-M>     src=""></a><ESC>?""<CR>a
    "ab  Ymail <a href="mailto:"></a><ESC>?:<CR>a
    "vmap ,mail "zdi<a href="mailto:<C-R>z"<C-M><C-I><C-I>><C-R>z</a><ESC>2F>
    "vmap ,Mail "zdi<a href="mailto:<C-R>z"><C-R>z</a><ESC>2F>
    "ab  Ynews <a href="news:"></a><ESC>?:<CR>a
    "vmap ,news "zdi<a href="news:<C-R>z"><C-R>z</a><ESC>2F>
    "ab  Ypage   <C-M>page:<C-I><C-M>link:<C-I><C-M>text:<C-I><ESC>kkA
    "vmap ,Cblu "zdi<FONT COLOR="#0000FF"><C-R>z</FONT>
    "vmap ,Cgre "zdi<FONT COLOR="#00FF00"><C-R>z</FONT>
    "vmap ,Cred "zdi<FONT COLOR="#FF0000"><C-R>z</FONT>
    "imap ;& &amp;
    "imap ;K &copy;
    "imap ;" &quot;
    "imap ;< &lt;
    "imap ;> &gt;
    "imap \Ae &Auml;
    "imap \Oe &Ouml;
    "imap \Ue &Uuml;
    "imap \ae &auml;
    "imap \oe &ouml;
    "imap \ue &uuml;
    "imap \ss &szlig;
    "nmap  ,= :%s/^===\(.*\)$/<h1>\1<\/h1>/c<CR>
    "ab  Ycut  \| <a href="#"<C-I>></a><ESC>F#a
    "vmap ,cut  "zdi<a href="#<C-R>z"<C-I>><C-R>z</a><ESC>2F>
" }

" Autocommands {
    auto BufEnter * let &titlestring =  expand("%:f") . " " . "(" . getcwd() . ")" . " @ " . hostname()
    " echo something on leaving .......
    au VimLeave * echo "Aaah! Aaaaaah!! Aaaaaaaaaaah!!!"
    " Makefile sanity
    autocmd BufEnter ?akefile* set noet ts=8 sw=2
    " make.log : remove ^M characters
    autocmd BufRead makefile.log :%s/\r$//e
    " always add the current file's directory to the path if not already there
    autocmd BufRead *
          \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
          \ exec "set path-=".s:tempPath |
          \ exec "set path+=".s:tempPath


    " Only do this part when compiled with support for autocommands.
    if has("autocmd")

     augroup gzip
      " Remove all gzip autocommands
      au!

      " Enable editing of gzipped files
      " set binary mode before reading the file
      autocmd BufReadPre,FileReadPre	*.gz,*.bz2 set bin
      autocmd BufReadPost,FileReadPost	*.gz call GZIP_read("gunzip")
      autocmd BufReadPost,FileReadPost	*.bz2 call GZIP_read("bunzip2")
      autocmd BufWritePost,FileWritePost	*.gz call GZIP_write("gzip -9")
      autocmd BufWritePost,FileWritePost	*.bz2 call GZIP_write("bzip2")
      autocmd FileAppendPre			*.gz call GZIP_appre("gunzip")
      autocmd FileAppendPre			*.bz2 call GZIP_appre("bunzip2")
      autocmd FileAppendPost		*.gz call GZIP_write("gzip -9")
      autocmd FileAppendPost		*.bz2 call GZIP_write("bzip2")

      " After reading compressed file: Uncompress text in buffer with "cmd"
      fun! GZIP_read(cmd)
        " set 'cmdheight' to two, to avoid the hit-return prompt
        let ch_save = &ch
        set ch=3
        " when filtering the whole buffer, it will become empty
        let empty = line("'[") == 1 && line("']") == line("$")
        let tmp = tempname()
        let tmpe = tmp . "." . expand("<afile>:e")
        " write the just read lines to a temp file "'[,']w tmp.gz"
        execute "'[,']w " . tmpe
        " uncompress the temp file "!gunzip tmp.gz"
        execute "!" . a:cmd . " " . tmpe
        " delete the compressed lines
        '[,']d
        " read in the uncompressed lines "'[-1r tmp"
        set nobin
        execute "'[-1r " . tmp
        " if buffer became empty, delete trailing blank line
        if empty
          normal Gdd''
        endif
        " delete the temp file
        call delete(tmp)
        let &ch = ch_save
        " When uncompressed the whole buffer, do autocommands
        if empty
          execute ":doautocmd BufReadPost " . expand("%:r")
        endif
      endfun

      " After writing compressed file: Compress written file with "cmd"
      fun! GZIP_write(cmd)
        if rename(expand("<afile>"), expand("<afile>:r")) == 0
          execute "!" . a:cmd . " <afile>:r"
        endif
      endfun

      " Before appending to compressed file: Uncompress file with "cmd"
      fun! GZIP_appre(cmd)
        execute "!" . a:cmd . " <afile>"
        call rename(expand("<afile>:r"), expand("<afile>"))
      endfun

     augroup END

    "-------------> Remember last cursor position <-------------
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

    "-------------> Perl programs <-------------
    autocmd BufEnter  *.pl,*.pm	set ai si cin formatoptions=croql
    autocmd BufLeave  *.pl,*.pm	set nosi nocin formatoptions=tcq
    autocmd BufEnter  *.pl,*.pm	set comments=b:#
    autocmd BufLeave  *.pl,*.pm	set comments=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
    autocmd BufEnter  *.pl,*.pm	set number
    autocmd BufEnter  *.pl,*.pm    ab uspp use SOAP::Lite;
    autocmd BufEnter  *.pl,*.pm    ab spp SOAP::Lite

    "-------------> Tcl programs <-------------
    autocmd BufEnter  *.tcl,*.tk   set number

    "-------------> Python programs <-------------
    autocmd BufEnter  *.py   set number

    "-------------> C programs and header files <-------------
    "autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.cpp,*.C,*.h,*.r set number ai si cin formatoptions=crql fdm=marker fde=getline(v:lnum)=~'^\\s*//'
    autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.cpp,*.C,*.h,*.r set number ai si cin formatoptions=crql 
    "autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.cpp,*.C,*.h,*.r set fdm=expr fde=getline(v:lnum)=~'^\\s*//'
    "autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.cpp,*.C,*.h,*.r syn region myCComment start="/\*" end="\*/" fold keepend transparent
    autocmd BufLeave *.java,*.l,*.scm,*.y,*.c,*.cc,*.cpp,*.C,*.h,*.r set nosi nocin formatoptions=tcq
    "autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r set comments=sr:/*,mb:*,el:*/,://
    "autocmd BufLeave *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r set comments=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
    "autocmd BufEnter *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r map <F1> :!man -a <cword><CR><CR>
    "autocmd BufEnter *.l,*.scm,*.y,*.c,*.cc,*.h,*.r map <F2> mpI/* <ESC>A */<ESC>`pj
    "autocmd BufEnter *.l,*.scm,*.y,*.c,*.cc,*.h,*.r map <F3> mp^3x$xxx`pj
    "autocmd BufEnter *.java,*.l,*.scm,*.y,?akefile*,*.c,*.cc,*.h,*.r map <F4> :!ctags -t *.{c,cc,h}<CR>
    "autocmd BufLeave *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r unmap <F1>
    "autocmd BufLeave *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r unmap <F2>
    "autocmd BufLeave *.java,*.l,*.scm,*.y,*.c,*.cc,*.h,*.r unmap <F3>
    "autocmd BufLeave *.java,*.l,*.scm,*.y,?akefile*,*.c,*.cc,*.h,*.r unmap <F4>
    "autocmd BufEnter *.java                   map <F2> mpI//<ESC>`pj
    "autocmd BufEnter *.java                   map <F3> mp^2x`pj
    "au BufNewFile,BufRead *.c,*.cc,*.cpp,*.C,*.h,*.r imap } <ESC>:call CurlyBracket()<CR>a<CR>
     
    "function CurlyBracket()
      "let l:my_linenum = line(".")
      "iunmap }
      "sil exe "normal i}"
      "imap } <ESC>:call CurlyBracket()<CR>
      "let l:result1 =  searchpair('{', '', '}', 'bW')
      "if (result1 > 0)
        "let l:my_string = substitute(getline("."), '^\s*\(.*\){', '\1', "")
        "sil exe ":" . l:my_linenum
        "sil exe "normal a //" . l:my_string
      "endif
    "endfunction

    "-------------> Lisp source files <-------------
    "autocmd BufEnter  *.l,*.scm		set lisp sm
    "autocmd BufEnter  *.l,*.scm		source $VIM/syntax/lisp.vim
    "autocmd BufEnter  *.l,*.scm		map <F5> :w<CR>:!akcl < %<CR>
    "autocmd BufEnter  *.l,*.scm 		map! <F5> <ESC>:w<CR>:!akcl < %<CR>
    "autocmd BufLeave  *.l,*.scm 		set nolisp nosm
    "autocmd BufLeave  *.l,*.scm 		unmap <F5>
    "autocmd BufLeave  *.l,*.scm 		unmap! <F5>
    "autocmd BufLeave  *.l,*.scm 		syntax clear

    "-------------> TeX & LaTeX source files <-------------
    "autocmd BufEnter *.tex		map! <F1> } | se tw=60 
    "autocmd BufEnter *.tex		map! <F2> {\bf 
    "autocmd BufEnter *.tex		map! <F3> {\em 
    "autocmd BufEnter *.tex		map! <F4> {\
    "autocmd BufEnter *.tex		ab hp hyperplane
    "autocmd BufEnter *.tex		ab hps hyperplanes
    "autocmd BufEnter *.tex		ab hc hypercube
    "autocmd BufEnter *.tex		ab hcs hypercubes
    "autocmd BufEnter *.tex		ab nd n-dimensional
    "autocmd BufEnter *.tex		ab kd k-dimensional
    "autocmd BufEnter *.tex		ab gc graycode


    "-------------> Haskell source files <-------------
    "autocmd BufEnter *.gs		map <F1> :w<CR>:!gofer %<CR>
    "autocmd BufLeave *.gs		unmap <F1>


    "-------------> VHDL Files <-------------------------
    "autocmd BufEnter *.vhdl,*.vhd		ab abs ABS
    "autocmd BufEnter *.vhdl,*.vhd		ab access ACCESS
    "autocmd BufEnter *.vhdl,*.vhd		ab after AFTER
    "autocmd BufEnter *.vhdl,*.vhd		ab alias ALIAS
    "autocmd BufEnter *.vhdl,*.vhd		ab all ALL
    "autocmd BufEnter *.vhdl,*.vhd		ab and AND
    "autocmd BufEnter *.vhdl,*.vhd		ab architecture ARCHITECTURE
    "autocmd BufEnter *.vhdl,*.vhd		ab array ARRAY
    "autocmd BufEnter *.vhdl,*.vhd		ab assert ASSERT
    "autocmd BufEnter *.vhdl,*.vhd		ab attribute ATTRIBUTE
    "autocmd BufEnter *.vhdl,*.vhd		ab begin BEGIN
    "autocmd BufEnter *.vhdl,*.vhd		ab block BLOCK
    "autocmd BufEnter *.vhdl,*.vhd		ab body BODY
    "autocmd BufEnter *.vhdl,*.vhd		ab buffer BUFFER
    "autocmd BufEnter *.vhdl,*.vhd		ab bus BUS
    "autocmd BufEnter *.vhdl,*.vhd		ab case CASE
    "autocmd BufEnter *.vhdl,*.vhd		ab component COMPONENT
    "autocmd BufEnter *.vhdl,*.vhd		ab configuration CONFIGURATION
    "autocmd BufEnter *.vhdl,*.vhd		ab constant CONSTANT
    "autocmd BufEnter *.vhdl,*.vhd		ab disconnect DISCONNECT
    "autocmd BufEnter *.vhdl,*.vhd		ab downto DOWNTO
    "autocmd BufEnter *.vhdl,*.vhd		ab else ELSE
    "autocmd BufEnter *.vhdl,*.vhd		ab elsif ELSIF
    "autocmd BufEnter *.vhdl,*.vhd		ab end END
    "autocmd BufEnter *.vhdl,*.vhd		ab entity ENTITY
    "autocmd BufEnter *.vhdl,*.vhd		ab exit EXIT
    "autocmd BufEnter *.vhdl,*.vhd		ab file FILE
    "autocmd BufEnter *.vhdl,*.vhd		ab for FOR
    "autocmd BufEnter *.vhdl,*.vhd		ab function FUNCTION
    "autocmd BufEnter *.vhdl,*.vhd		ab generate GENERATE
    "autocmd BufEnter *.vhdl,*.vhd		ab generic GENERIC
    "autocmd BufEnter *.vhdl,*.vhd		ab group GROUP
    "autocmd BufEnter *.vhdl,*.vhd		ab guarded GUARDED
    "autocmd BufEnter *.vhdl,*.vhd		ab if IF
    "autocmd BufEnter *.vhdl,*.vhd		ab impure IMPURE
    "autocmd BufEnter *.vhdl,*.vhd		ab in IN
    "autocmd BufEnter *.vhdl,*.vhd		ab inertial INERTIAL
    "autocmd BufEnter *.vhdl,*.vhd		ab inout INOUT
    "autocmd BufEnter *.vhdl,*.vhd		ab is IS
    "autocmd BufEnter *.vhdl,*.vhd		ab label LABEL
    "autocmd BufEnter *.vhdl,*.vhd		ab library LIBRARY
    "autocmd BufEnter *.vhdl,*.vhd		ab linkage LINKAGE
    "autocmd BufEnter *.vhdl,*.vhd		ab literal LITERAL
    "autocmd BufEnter *.vhdl,*.vhd		ab loop LOOP
    "autocmd BufEnter *.vhdl,*.vhd		ab map MAP
    "autocmd BufEnter *.vhdl,*.vhd		ab mod MOD
    "autocmd BufEnter *.vhdl,*.vhd		ab nand NAND
    "autocmd BufEnter *.vhdl,*.vhd		ab new NEW
    "autocmd BufEnter *.vhdl,*.vhd		ab next NEXT
    "autocmd BufEnter *.vhdl,*.vhd		ab nor NOR
    "autocmd BufEnter *.vhdl,*.vhd		ab not NOT
    "autocmd BufEnter *.vhdl,*.vhd		ab null NULL
    "autocmd BufEnter *.vhdl,*.vhd		ab of OF
    "autocmd BufEnter *.vhdl,*.vhd		ab on ON
    "autocmd BufEnter *.vhdl,*.vhd		ab open OPEN
    "autocmd BufEnter *.vhdl,*.vhd		ab or OR
    "autocmd BufEnter *.vhdl,*.vhd		ab others OTHERS
    "autocmd BufEnter *.vhdl,*.vhd		ab out OUT
    "autocmd BufEnter *.vhdl,*.vhd		ab package PACKAGE
    "autocmd BufEnter *.vhdl,*.vhd		ab port PORT
    "autocmd BufEnter *.vhdl,*.vhd		ab postponed POSTPONED
    "autocmd BufEnter *.vhdl,*.vhd		ab procedure PROCEDURE
    "autocmd BufEnter *.vhdl,*.vhd		ab process PROCESS
    "autocmd BufEnter *.vhdl,*.vhd		ab protected PROTECTED
    "autocmd BufEnter *.vhdl,*.vhd		ab pure PURE
    "autocmd BufEnter *.vhdl,*.vhd		ab range RANGE
    "autocmd BufEnter *.vhdl,*.vhd		ab record RECORD
    "autocmd BufEnter *.vhdl,*.vhd		ab register REGISTER
    "autocmd BufEnter *.vhdl,*.vhd		ab reject REJECT
    "autocmd BufEnter *.vhdl,*.vhd		ab rem REM
    "autocmd BufEnter *.vhdl,*.vhd		ab report REPORT
    "autocmd BufEnter *.vhdl,*.vhd		ab return RETURN
    "autocmd BufEnter *.vhdl,*.vhd		ab rol ROL
    "autocmd BufEnter *.vhdl,*.vhd		ab ror ROR
    "autocmd BufEnter *.vhdl,*.vhd		ab select SELECT
    "autocmd BufEnter *.vhdl,*.vhd		ab severity SEVERITY
    "autocmd BufEnter *.vhdl,*.vhd		ab shared SHARED
    "autocmd BufEnter *.vhdl,*.vhd		ab signal SIGNAL
    "autocmd BufEnter *.vhdl,*.vhd		ab sla SLA
    "autocmd BufEnter *.vhdl,*.vhd		ab sll SLL
    "autocmd BufEnter *.vhdl,*.vhd		ab sra SRA
    "autocmd BufEnter *.vhdl,*.vhd		ab srl SRL
    "autocmd BufEnter *.vhdl,*.vhd		ab subtype SUBTYPE
    "autocmd BufEnter *.vhdl,*.vhd		ab then THEN
    "autocmd BufEnter *.vhdl,*.vhd		ab to TO
    "autocmd BufEnter *.vhdl,*.vhd		ab transport TRANSPORT
    "autocmd BufEnter *.vhdl,*.vhd		ab type TYPE
    "autocmd BufEnter *.vhdl,*.vhd		ab unaffected UNAFFECTED
    "autocmd BufEnter *.vhdl,*.vhd		ab units UNITS
    "autocmd BufEnter *.vhdl,*.vhd		ab until UNTIL
    "autocmd BufEnter *.vhdl,*.vhd		ab use USE
    "autocmd BufEnter *.vhdl,*.vhd		ab variable VARIABLE
    "autocmd BufEnter *.vhdl,*.vhd		ab wait WAIT
    "autocmd BufEnter *.vhdl,*.vhd		ab when WHEN
    "autocmd BufEnter *.vhdl,*.vhd		ab while WHILE
    "autocmd BufEnter *.vhdl,*.vhd		ab with WITH
    "autocmd BufEnter *.vhdl,*.vhd		ab xnor XNOR
    "autocmd BufEnter *.vhdl,*.vhd		ab xor XOR
      
    "-------------> MATLAB Files <-------------------------
    "autocmd BufEnter *.m		        set number
    
    "   Example of how to strip quoted signature:
    "au  BufNewFile,BufRead mutt*
                           "\ set ch=2 |
                           "\ set fo=aw2tq |
                           "\ let rep=&report | se tw=60 | let &report=1000 |
                           "\ let tmp="> -- " | 0pu =tmp | let tmp="" |
                           "\ 1pu =tmp | g/^> -- $/;/^$/-d | let &report=rep 
    "au  BufNewFile,BufRead mutt* ab u you

    "   I use mutt for email and slrn for postings
    " autocmd BufRead    mutt*[0-9],.followup,.article,.letter
    "                    \ let save_report=&report |
    "                    \ se tw=70 report=1000 |
    "                    \ 1;/^$/;/^-- $/s/^>[ >\t]*$//e |
    "                    \ let &report=save_report |
    "                    \ $;?^-- $?;?^[^>:->]? |
    "
    endif " has("autocmd")

    " command! -complete=file -nargs=* Git call s:RunShellCommand('git '.<q-args>)
    " command! -complete=file -nargs=* Svn call s:RunShellCommand('svn '.<q-args>)
    " command! -complete=file -nargs=* Bzr call s:RunShellCommand('bzr '.<q-args>)
    " command! -complete=file -nargs=* Hg  call s:RunShellCommand('hg '.<q-args>)
    command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
    function! s:RunShellCommand(cmdline)
        echo a:cmdline
        let expanded_cmdline = a:cmdline
        for part in split(a:cmdline, ' ')
            if part[0] =~ '\v[%#<]'
                let expanded_part = fnameescape(expand(part))
                let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
            endif
        endfor
        botright new
        setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
        call setline(1, 'You entered:    ' . a:cmdline)
        call setline(2, 'Expanded Form:  ' .expanded_cmdline)
        call setline(3,substitute(getline(2),'.','=','g'))
        execute '$read !'. expanded_cmdline
        setlocal nomodifiable
        1
    endfunction
" }

" GUI Settings {
 if has("gui_running")
     " Basics {
        "colorscheme ir_black
        " colorscheme molokai
        " colorscheme wombat
        set columns=197 " perfect size for me
        set lines=68 " perfect size for me
        "set guifont=Consolas:h10 " My favorite font
        set guioptions+=c " use simple dialogs rather than pop-ups
        set guioptions+=e " use GUI tabs, not console style tabs
        set guioptions-=T " remove toolbar
        set guioptions-=m " remove menu
        set guioptions-=r " remove right-hand scroll bar
        "set lines=55 " perfect size for me
        set mousehide " hide the mouse cursor when typing
        set mousemodel=popup " pop-up menu for right-click of mouse

        "set guitablabel=%{GuiTabLabel()}

        " start in fullscreen in windows
        "if has("gui_win32")   "NT Windows
          "autocmd GUIEnter * :simalt ~x
        "endif

     " }
 endif
 colorscheme solarized
 set background=dark
 set t_Co=256
" }

" Functions {
    function! GenTags()
      :!mkdir -p $PWD/.cscope
      :!find 
           \ $PWD
           \ -path '*.cproject*' -prune -o 
           \ -path '*.settings*' -prune -o 
           \ -path '*thirdparty*' -prune -o 
           \ -path '*.htm*' -prune -o 
           \ -path '*OUTPUT*' -prune -o
           \ \( -name '*.h*' -o -name '*.c*' -o -name '*.C' -o -name '*.py' \) -type f -print > 
           \ $PWD/.cscope/cscope.files

      :!/usr/local/bin/cscope -b -q -k -i ${PWD}/.cscope/cscope.files -f ${PWD}/.cscope/cscope.out
      :cs reset

      :!ctags --recurse --language-force=c++ --c++-kinds=+p --extra=+q --fields=+iaS -L ${PWD}/.cscope/cscope.files
    endfunction

    "overriding the VimwikiWeblinkHandler function 
    function! VimwikiWeblinkHandler(weblink)
      exe 'WebBrowser '.a:weblink
    endfunction

    " set title for tabs in vim 7
    "function! GuiTabLabel()
      "" add the tab number
      ""let label = '['.(tabpagenr() - 1)
      "let label = ''

      "" modified since the last save?
      "let buflist = tabpagebuflist(v:lnum)
      "for bufnr in buflist
        "if getbufvar(bufnr, '&modified')
          "let label .= '*'
            "break
        "endif
      "endfor

      "" count number of open windows in the tab
      ""let wincount = tabpagewinnr(v:lnum, '$')
      ""if wincount > 1
        ""let label .= ', '.wincount
      ""endif
      ""let label .= '] '

      "" add the file name without path information
      "let n = bufname(buflist[tabpagewinnr(v:lnum) - 1])
      "let label .= fnamemodify(n, ':t')

      "return label
    "endfunction

    "function! TagSelection()
      "let l:tag = input("Tag name? ")
      "" exec "normal `>a</" . l:tag . ">\e"
      "" Strip off all but the first work in the tag for the end tag
      "exec "normal `>a</" . 
                  "\ substitute( l:tag, '[ \t"]*\(\<\w*\>\).*', '\1>\e', "" )
      "exec "normal `<i" 
                  "\ substitute( l:tag, '[ \t"]*\(\<.*\)', '<\1>\e', "" )
    "endfunction

    " sanitize g++ errors
    "function! GPPErrorFilter()
      "silent! %s/->/ARROW/g
      "while search("<", "wc")
        "let l:line = getline(".")
        "let l:col = col(".")
        "let l:char = l:line[l:col - 1]
        "if l:char == "<"
          "normal d%
        "else
          "break
        "endif
      "endwhile
      "silent! %s/ARROW/->/g
      "silent %!awk '/: In/ { print "---------------"; print }; \!/: In/ {print }'
    "endfunction

    " Protect large files from sourcing and other overhead.
    " Files become read only
    "if !exists("my_auto_commands_loaded")
            "let my_auto_commands_loaded = 1
            "" Large files are > 10M
            "" Set options:
            "" 	    eventignore+=FileType (no syntax highlighting etc
            ""            assumes FileType always on)
            ""       noswapfile (save copy of file)
            ""       bufhidden=unload (save memory when other file is viewed)
            ""       buftype=nowritefile (is read-only)
            ""       undolevels=-1 (no undo possible)
            "let g:LargeFile = 1024 * 1024 * 10
            "augroup LargeFile
                    "autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
            "augroup END
    "endif


" }

" Abbreviations {
    " correct these frequent typographical errors
    ab alos also
    ab aslo also
    ab charcter character
    ab charcters characters
    ab exmaple example
    ab shoudl should
    ab seperate separate
    ab teh the
    ab lenght length
    ab mcuh much
    ab taht that
    ab nad and

    "shortcuts...
    ab #s #include <string>
    ab #o #include <iostream>
    ab #i #include <>
    ab ust using namespace std;
    "ab hh _    _<CR>( `\/' ) <CR> \    / <CR> `\/'<CR>
    ab #t #include <stdio.h>
    ab dbb # ---------------------- Debug ----------------------
    "ab pll #!/usr/bin/perl
    "ab pa \\ \\ 
    "ab sb \subsection{}
    "ab se \section{}
    "ab ch \chapter{}
    "ab bv \begin{verbatim}
    "ab ev \end{verbatim}
    "ab bl \begin{flushleft}
    "ab el \end{flushleft}
    "ab bn \begin{enumerate}
    "ab en \end{enumerate}
    "ab lb \begin{itemize}
    "ab le \end{itemize}
    "ab i \item
    "ab u \underline{

    iab <expr> dts strftime("%d-%m-%Y %H:%M:%S")
" }

" { vim tips
  " yank filename into buffer
  " :let @" = expand("%") 
  " use 'p' or Ctrl+R " to paste it
  " Ctrl+R % pulls the current filename into where u r(command prompt, edit buffer, ...)
  "
  " add a file for syntax highlighting 
  " au BufNewFile,BufRead *.lmx set filetype=xml
  "
  " get rid of ^M characters
  " :update
  " :e ++ff=dos
  " :setlocal ff=unix
  " :w
  "
  " copy file name to register
  " let @+=expand("%")
  "
" }

" vim: filetype=vim
