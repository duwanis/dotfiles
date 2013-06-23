""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IMPORTANT FIRST STEPS                                                      {{{

" Use ; for <Leader> and , for <LocalLeader>
let mapleader = ";"
let maplocalleader = ","

" Don't pretend we're vi (because why, really)
set nocompatible

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NEOBUNDLE                                                                  {{{

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" BUNDLE ALL THE THINGS
" All Bundles are github repositories

" ag.vim - provides an ag search wrapper with a similar API to ack.vim
NeoBundle 'rking/ag.vim'
" characterize - provides the `ga` binding with some extra metadata on characters
NeoBundle 'tpope/vim-characterize'
" coffee-script - syntax files for the coffeescript language
NeoBundle 'kchmck/vim-coffee-script'
" commentary - provides a gcc (and gc<motion>) binding to comment code
NeoBundle 'tpope/vim-commentary'
" ctrlp - a fuzzy finder for files, buffers, whatever really
NeoBundle 'kien/ctrlp.vim', { 'depends': 'sgur/ctrlp-extensions.vim' }
" ctrlp-rails - rails finders for ctrlp
NeoBundle 'iurifq/ctrlp-rails.vim'
" delimitMate - automatically close brackets, parentheses, etc.
NeoBundle 'Raimondi/delimitMate'
" dirsettings - allow for directory-specific vim configurations
NeoBundle 'chazy/dirsettings'
" dispatch - run stuff in the background and be crazy awesome about it
NeoBundle 'tpope/vim-dispatch'
" endwise - automatically insert `end` statements in languages that use them
NeoBundle 'tpope/vim-endwise'
" eunuch - provide some nice commands for interacting with the filesystem directly
NeoBundle 'tpope/vim-eunuch'
" extradite - git commit browser, relies on fugitive
NeoBundle 'int3/vim-extradite'
" fanfingtastic - make the `f` command much smarter
NeoBundle 'dahu/vim-fanfingtastic'
" fugitive - git interop
NeoBundle 'tpope/vim-fugitive'
" gist - gist interop
NeoBundle 'mattn/gist-vim', { 'depends': 'mattn/webapi-vim' }
" goldenview - window resizing, smart splitting, all based on the golden ratio
NeoBundle 'zhaocai/GoldenView.Vim'
" hybrid - colorscheme
NeoBundle 'w0ng/vim-hybrid'
" indexed-search - show index data for searches (result 4 of 20, etc.)
NeoBundle 'henrik/vim-indexed-search'
" itchy - scratch buffers
NeoBundle 'programble/itchy.vim'
" less - syntax files for less
NeoBundle 'groenewege/vim-less'
" markdown - syntax files for markdown
NeoBundle 'tpope/vim-markdown'
" matchtag - highlight the matching *ML tag, like vim does natively for parens
NeoBundle 'gregsexton/MatchTag'
" mustache - syntax files for mustache
NeoBundle 'juvenn/mustache.vim'
" neocomplecache - autocomplete suggestions
NeoBundle 'Shougo/neocomplcache.vim', { 'depends': 'JazzCore/neocomplcache-ultisnips' }
" nerdtree - directory browser/project drawer
NeoBundle 'scrooloose/nerdtree'
" nrrwrgn - pulls a "narrow region" of a file out into a new buffer for focused editing
NeoBundle 'chrisbra/NrrwRgn'
" octopress - provides functionality for working with an octopress blog
NeoBundle 'tangledhelix/vim-octopress'
" powerline - awesome status line
NeoBundle 'Lokaltog/vim-powerline'
" quicktask - todolist plugin
NeoBundle 'aaronbieber/quicktask'
" rails - functionality for working with a rails application easily
NeoBundle 'tpope/vim-rails'
" rainbow_parentheses - highlight parens/brackets/etc. in rainbow colors to make
" finding matches easier
NeoBundle 'kien/rainbow_parentheses.vim'
" rake - rake interaction
NeoBundle 'tpope/vim-rake'
" repeat - make certain plugin tasks repeatable with `.`
NeoBundle 'tpope/vim-repeat'
" rsi - provide readline mappings for insert and commandline mode
NeoBundle 'tpope/vim-rsi'
" ruby-refactoring - provide some handy functions for doing refactors in ruby
NeoBundle 'ecomba/vim-ruby-refactoring'
" rvm - interaction with the Ruby Version Manager
NeoBundle 'tpope/vim-rvm'
" surround - work with surrounding characters
NeoBundle 'tpope/vim-surround'
" syntastic - syntax checker
NeoBundle 'scrooloose/syntastic'
" tagbar - window for viewing tags in current buffer
NeoBundle 'majutsushi/tagbar'
" textobj-rubyblock - provide a text object for ruby blocks
NeoBundle 'nelstrom/vim-textobj-rubyblock'
" textobj-user - library for creating user-defined text objects
NeoBundle 'kana/vim-textobj-user'
" textobjectify - library for easily defining text objects
NeoBundle 'paradigm/TextObjectify'
" tomdoc - syntax for tomdoc in ruby/coffee files
NeoBundle 'duwanis/tomdoc.vim'
" ultisnips - snippets
NeoBundle 'SirVer/ultisnips'
" unimpaired - provide mappings for the bracket keys
NeoBundle 'tpope/vim-unimpaired'
" vimproc - library for running processes in the background
NeoBundle 'Shougo/vimproc.vim'
" vimshell - the shell, but in vim
NeoBundle 'Shougo/vimshell'
" vimroom - WriteRoom-style vim editing
NeoBundle 'mikewest/vimroom'
" vimwiki - wiki in vim
NeoBundle 'vim-scripts/vimwiki'
" vroom - test runners for ruby
NeoBundle 'skalnik/vim-vroom'
" yankring - emacs' killring, but in vim
NeoBundle 'vim-scripts/YankRing.vim'
" zoomwin - focus on one window temporarily
NeoBundle 'regedarek/ZoomWin'

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPTIONS                                                                    {{{
" see :help <option> for each <option> set here
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set encoding=utf-8
set expandtab
set formatoptions=tcrqn21
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set keywordprg=
set laststatus=2
set linebreak
set listchars=tab:▸\ ,eol:¬,trail:☠
set mouse=a
set noerrorbells
set number
set ruler
set scrolloff=3
set shiftround
set shiftwidth=2
set shortmess=filmnrxtTI
set showbreak=↪
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set softtabstop=2
set splitbelow
set t_Co=256
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
set tabstop=2
set textwidth=80
set title
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undofile
set visualbell
set whichwrap+=<,>,h,l
set wildmenu
set wildmode=longest,list
set wrap

colorscheme hybrid
filetype plugin indent on
syntax enable
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GLOBAL KEYBINDINGS                                                         {{{

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ag.vim                                                                     {{{

" Search for the current word under the cursor using ag
nnoremap <Leader>A *<C-O>:AgFromSearch!<CR>

" Prompt to search with ag
nnoremap <Leader>a :Ag!<SPACE>"<LEFT>"

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP                                                                      {{{

nmap <Space> [ctrlp]
noremap [ctrlp] <nop>

" b - buffer mode
nnoremap [ctrlp]b :CtrlPBuffer<CR>
" c - commandline mode
nnoremap [ctrlp]c :CtrlPCmdline<CR>
" f - file mode
let g:ctrlp_map = '[ctrlp]f'
" l - todo lists
nnoremap [ctrlp]l :CtrlP ~/.vim/tasks/lists/<CR>
" r - rails
" rc - rails controller
nnoremap [ctrlp]rc :CtrlPControllers<CR>
" rm - rails model
nnoremap [ctrlp]rm :CtrlPModels<CR>
" rv - rails view
nnoremap [ctrlp]rv :CtrlPViews<CR>
" t - tag mode
nnoremap [ctrlp]t :CtrlPTag<CR>
" w - search wiki
nnoremap [ctrlp]w :CtrlP ~/.vim/wiki/<CR>
" y - yankring mode
nnoremap [ctrlp]y :CtrlPYankring<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dispatch                                                                   {{{

" ;c prompts for a dispatch command
noremap <Leader>c :Dispatch<Space>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive                                                                   {{{

" use <Leader>g as the git prefix
nmap <Leader>g [git]
nnoremap [git] <nop>

" B copies a github URL for the current file/selection to the clipboard
nnoremap [git]B :Gbrowse!<CR>
" b opens the git blame window
nnoremap [git]b :Gblame<CR>
" d opens up the git diff
nnoremap [git]d :Gdiff<CR>
" e opens up the extradite window
nnoremap [git]e :Extradite<CR>
" l opens up the git log
nnoremap [git]l :Glog<CR>
" p runs git push in a dispatch window
nnoremap <silent> [git]p :Dispatch git push<CR>
" r checkout a bRanch
nnoremap [git]r :Git checkout<SPACE>
" R create a bRanch
nnoremap [git]R :Git checkout -b<SPACE>
" s show the git status buffer
nnoremap [git]s :Gstatus<CR>
" u run git up (requires the git-up gem)
nnoremap <silent> [git]u :Dispatch git up<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General                                                                    {{{

" Use ;; as a shortcut for :
noremap <Leader><Leader> :
" Use ;i to show hidden characters
noremap <Leader>i        :set list!<CR>
" Use ;q to quit the current window
noremap <Leader>q        :q!<CR>
" Use ;ve to edit the .vimrc
noremap <Leader>ve       :vsplit $MYVIMRC<CR>
" Use ;vs to source the .vimrc
noremap <Leader>vs       :so $MYVIMRC<CR>
" Use ;w to write the current buffer
noremap <Leader>w        :w!<CR>
" Use ;y to yank to the system clipboard
noremap <Leader>y        "*y
" Use <Leader>x as a shortcut to close the quickfix window
noremap <Leader>x :cclose<CR>
" Use <Leader>X to quit this vim session
noremap <Leader>X :qa!<CR>

" Use ;o/;O to insert lines below/above the current one without having to dirty
" yourself with insert mode
noremap <Leader>o        o<ESC>k
noremap <Leader>O        O<ESC>j

" Use Q to re-run the last macro
noremap Q @@
" Use Y to yank the rest of the current line
noremap Y y$

" Reverse j/k's behavior with gj/gk
nnoremap j  gj
nnoremap k  gk
nnoremap gj j
nnoremap gk k

" Use jk as a replacement for escape in both insert and command modes
inoremap jk <Esc>
cnoremap jk <Esc>

" Use kj as a replacement for escape in both insert and command modes
inoremap kj <Esc>
cnoremap kj <Esc>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GoldenView                                                                 {{{

nmap <silent> <Leader>s <Plug>GoldenViewSplit

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Itchy                                                                      {{{

nnoremap <silent> <Leader>S :Scratch<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation                                                                 {{{

" ;b switches to the alternate (last) buffer
noremap <Leader>b <C-^>
" C-h, C-j, C-k, C-l navigate to windows
noremap <C-h> <C-W>h
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l

" make H/J/K/L act like super versions of h/j/k/l
noremap H ^
noremap J <C-f>
noremap K <C-b>
noremap L $

" J and K were actually useful though, so use <Leader>j/k to replace them
noremap <Leader>j J
noremap <Leader>k K

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree                                                                   {{{

" ;d toggles the nerdtree window
noremap <Leader>d :NERDTreeToggle<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search                                                                     {{{

" <C-space> clears search highlights
noremap <silent> <C-@> :nohls<CR>

" center all search results
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> N Nzz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
nnoremap <silent> n nzz

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Slap on the wrist                                                          {{{

" Don't let <Esc> or the arrow keys do anything
inoremap <Esc> <nop>
cnoremap <Esc> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags                                                                       {{{

" ;T goes backwards in the tag stack
noremap <Leader>T <C-t>

" ;t navigates to the selected tag
noremap <Leader>t g<C-]>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimshell                                                                   {{{

nnoremap <silent> <Leader>Z :VimShell -popup -toggle<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki                                                                    {{{

nmap     <Leader>n [vimwiki]
nnoremap [vimwiki] <nop>

" a - search through the wiki
nnoremap [vimwiki]a :VimWikiSearch<Space>""<Left>
" d - open today's diary in a split
nmap <silent> [vimwiki]d <Plug>VimwikiMakeDiaryNote
" D - open the diary index
nmap <silent> [vimwiki]D <Plug>VimwikiDiaryIndex
" <Leader>i - generate diary links
nmap <silent> [vimwiki]<Leader>i <Plug>VimwikiDiaryGenerateLinks
" s - open the wiki UI select
nmap <silent> [vimwiki]s <Plug>VimwikiUISelect
" t - open the wiki index in a tab
nmap <silent> [vimwiki]t <Plug>VimwikiTabIndex
" <Leader>t - make diary note in a tab
nmap <silent> [vimwiki]<Leader>t <Plug>VimwikiTabMakeDiaryNote
" w - open the wiki index
nmap <silent> [vimwiki]w <Plug>VimwikiIndex


" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnip                                                                   {{{

" ;u edits snippets for the current file type
map <Leader>u :UltiSnipsEdit<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZoomWin                                                                    {{{

nnoremap <Leader>z :ZoomWin<CR>

" }}}

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOCAL KEYBINDINGS                                                          {{{

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rails                                                                      {{{
" Load up keybindings for Rails.vim commands - :help rails for more info

augroup LocalKeybindingsRails
  autocmd!
  autocmd User Rails map     <buffer> <LocalLeader>r    [rails]
  autocmd User Rails noremap <buffer> [rails]           <nop>
  autocmd User Rails noremap <buffer> [rails]a          :A<CR>
  autocmd User Rails noremap <buffer> [rails]e          :Rextract<SPACE>
  autocmd User Rails noremap <buffer> [rails]fa         :Elayout<SPACE>
  autocmd User Rails noremap <buffer> [rails]fc         :Econtroller<SPACE>
  autocmd User Rails noremap <buffer> [rails]fdm        :Emigration<SPACE>
  autocmd User Rails noremap <buffer> [rails]fds        :Eschema<CR>
  autocmd User Rails noremap <buffer> [rails]fe         :Eenvironment<SPACE>
  autocmd User Rails noremap <buffer> [rails]fh         :Ehelper<SPACE>
  autocmd User Rails noremap <buffer> [rails]fl         :Elib<SPACE>
  autocmd User Rails noremap <buffer> [rails]fm         :Emodel<SPACE>
  autocmd User Rails noremap <buffer> [rails]fs         :Espec<SPACE>
  autocmd User Rails noremap <buffer> [rails]fv         :Eview<SPACE>
  autocmd User Rails noremap <buffer> [rails]g          :Rgenerate<SPACE>
  autocmd User Rails noremap <buffer> [rails]r          :R<CR>
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby                                                                       {{{

augroup LocalKeybindingsRuby
  autocmd!
  " helper keybindings for inserting hashrockets and creating symbols
  autocmd FileType ruby,eruby nnoremap <buffer> <LocalLeader>h a<SPACE>=><SPACE><ESC>
  autocmd FileType ruby,eruby nnoremap <buffer> <LocalLeader>s bi:<ESC>W
  autocmd FileType ruby,eruby inoremap <buffer> <C-h> <SPACE>=><SPACE>
  
  " autocommands for the RubyRefactoring plugin
  " :help rubyrefactoring for more info
  autocmd FileType ruby nnoremap <buffer> <LocalLeader>ap  :RAddParameter<cr>
  autocmd FileType ruby nnoremap <buffer> <LocalLeader>cpc :RConvertPostConditional<cr>
  autocmd FileType ruby vnoremap <buffer> <LocalLeader>ec  :RExtractConstant<cr>
  autocmd FileType ruby nnoremap <buffer> <LocalLeader>el  :RExtractLet<cr>
  autocmd FileType ruby vnoremap <buffer> <LocalLeader>elv :RExtractLocalVariable<cr>
  autocmd FileType ruby vnoremap <buffer> <LocalLeader>em  :RExtractMethod<cr>
  autocmd FileType ruby nnoremap <buffer> <LocalLeader>it  :RInlineTemp<cr>
  autocmd FileType ruby vnoremap <buffer> <LocalLeader>riv :RRenameInstanceVariable<cr>
  autocmd FileType ruby vnoremap <buffer> <LocalLeader>rlv :RRenameLocalVariable<cr>
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vroom                                                                      {{{
" Keybindings for Vroom commands, :help vroom for more info

augroup VroomLocalKeybindings
  autocmd!
  autocmd BufRead *_spec.rb nnoremap <LocalLeader>t :VroomRunNearestTest<CR>
  autocmd BufRead *_spec.rb nnoremap <LocalLeader>T :VroomRunTestFile<CR>
augroup END

" }}}

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS, MACROS AND COMMANDS (OH MY)                                     {{{

" make % jump to matching tags/brackets
runtime! macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fat fingers                                                                {{{

command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki search                                                             {{{

command! -nargs=+ VimWikiSearch :Ag! <args> ~/.vim/wiki/

" }}}

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMMANDS                                                               {{{

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow Simultaneous Edits                                                   {{{
" Don't alert me if a file is currently being edited in another vim window, just
" allow me to edit it.

augroup AllowSimultaneousEdits
  autocmd!
  autocmd SwapExists * :let v:swapchoice = 'e'
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically restore cursor position when possible                        {{{

augroup AutomaticallyRestoreCursorPosition
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \ exe "normal! g`\"" |
        \ endif
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically run ctags for ruby and coffeescript                          {{{

augroup AutomaticallyRunCtags
  autocmd!
  autocmd BufWritePost *.rb,*.coffee call system("ctags -a " . expand("%:%"))
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cursorline only for active window                                          {{{

augroup CursorlineForActiveWindowOnly
  autocmd!
  autocmd WinLeave * set nocursorline
  autocmd WinEnter * set cursorline
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Filetypes                                                           {{{
" For files with strange extensions but normal filetypes.

augroup MyCustomFileTypes
  autocmd!
  au BufRead,BufNewFile .tconsole set filetype=ruby
  au BufRead,BufNewFile .vimdir set filetype=vim
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git commit buffer niceties                                                 {{{
" Turn spellcheck on and automatically start in insert mode for commit messages
" (This might be Fugitive-specific)

augroup GitCommitBufferNiceties
  autocmd!
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi', 't')
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Trailing Whitespace                                              {{{
" Highlights any trailing whitespaces in red, because trailing whitespace is
" evil

highlight ExtraWhitespace ctermbg=red guibg=Brown
augroup HighlightTrailingWhitespace
  autocmd!
  au ColorScheme * highlight ExtraWhitespace guibg=red
  au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
  au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
  au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML Tag indents                                                           {{{
" For whatever reason vim autoindent doesn't indent certain html tags that it
" should, this autocommand fixes that

augroup HTMLTagIndents
  autocmd!
  autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keywordprg settings                                                        {{{

augroup KeywordprgSettings
  autocmd!
  autocmd FileType vim setlocal keywordprg=":help"
  autocmd FileType ruby,eruby setlocal keywordprg=ri
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Octopress                                                                  {{{

augroup Octopress
  autocmd!
  " hacky-hack: assume any files with format 1234-56-78-something.markdown are
  " octopress blog posts
  autocmd BufNewFile,BufRead \d\d\d\d-\d\d-\d\d-*.markdown set filetype=octopress.markdown
  autocmd FileType octopress.markdown VimroomToggle
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quicktasks                                                                 {{{

augroup Quicktask
  autocmd BufNewFile,BufRead *.quicktask setf quicktask
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc filetype concerns                                                   {{{
" Just a few sundries for editing .vimrc... autofold on the markers, make sure
" Ultisnips knows it's a viml file, etc.

augroup MyVimrcConfiguration
  autocmd!
  au BufRead .vimrc setlocal foldlevel=0
  au BufRead .vimrc setlocal foldmethod=marker
  au BufRead .vimrc UltiSnipsAddFiletypes vim
augroup END

" }}}

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIGURATION                                                       {{{

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P                                                                     {{{
" Do some magic to filter out a lot of crap that CtrlP doesn't filter out
" automatically for some reason, and set some basic configs.
" See :help ctrlp for more.

let g:ctrlp_cache_dir='~/.vim/.cache/ctrlp'
let ctrlp_filter_greps = "".
  \ "egrep -iv '\\.(" .
  \ "jar|class|swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po" .
  \ ")$' | " .
  \ "egrep -v '^(\\./)?(" .
  \ "deploy/|classes/|libs/|vendor/|deploy/vendor/|.git/|.hg/|.svn/|.*migrations/" .
  \ ")'"
let g:ctrlp_working_path_mode = 0
let g:ctrlp_use_caching = 1

let g:ctrlp_extensions = ['tag', 'cmdline', 'yankring']

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" delimitMate                                                                {{{

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_smart_quotes = 1

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dispatch                                                                   {{{

" Override the default handlers list for dispatch, since the iTerm one is kind
" of broken and anything not tmux/screen/headless is kind of useless to me
let g:dispatch_handlers = ['tmux','screen','headless']

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gist                                                                        {{{

let g:gist_detect_filetype = 1
let g:gist_show_privates   = 1
let g:gist_post_private    = 1

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GoldenView                                                                 {{{

" don't use their default keys
let g:goldenview__enable_default_mapping = 0

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Itchy                                                                      {{{

let g:itchy_always_split=1

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplcache                                                              {{{

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_fuzzy_completion=1
let g:neocomplcache_auto_completion_start_length=4

if !exists('g:neocomplcache_omni_functions')
  let g:neocomplcache_omni_functions = {}
endif

" enable general omni completion
let g:neocomplcache_omni_functions.css      = 'csscomplete#CompleteCSS'
let g:neocomplcache_omni_functions.html     = 'htmlcomplete#CompleteTags'
let g:neocomplcache_omni_functions.markdown = 'htmlcomplete#CompleteTags'
let g:neocomplcache_omni_functions.ruby     = 'rubycomplete#Complete'
let g:jscomplete_use = [ 'dom' ]
let g:neocomplcache_omni_functions.javascript = 'jscomplete#CompleteJS'

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree                                                                   {{{

" let NERDTree manage my working directory
let NERDTreeChDirMode=2
" Show fancy arrows and shiz
let NERDTreeDirArrows=1
" Show hidden files/folders
let NERDTreeShowHidden=1
" Don't need line numbers
let NERDTreeShowLineNumbers=0

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline                                                                  {{{

" FANCINESS
let g:Powerline_symbols = "fancy"

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quicktasks                                                                 {{{

let g:quicktask_autosave = 1 " autosave quicktask files
let g:quicktask_snip_path = "~/.vim/tasks/snips/"

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RainbowParentheses                                                         {{{

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic                                                                  {{{

" Auto-check syntax for files
let g:syntastic_check_on_open=1
" Use "balloons" because they are cool
if has("balloon_eval")
  let g:syntastic_enable_balloons = 1
endif

" Fancy error symbol
let g:syntastic_error_symbol='✗'
" Don't warn me about HTML stuff because the HTML warnings are super-whiny
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['html'] }
" Fancy warning symbol
let g:syntastic_warning_symbol='⚠'

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextObjectify                                                              {{{

" This is textobjectify's incredibly ugly giant blob of configuration,
" read :help textobjectify if you wish to understand it for some reason
let g:textobjectify = {
            \'(': {'left': '(', 'right': ')', 'same': 0, 'seek': 1, 'line': 0},
            \')': {'left': '(', 'right': ')', 'same': 0, 'seek': 2, 'line': 0},
            \'{': {'left': '{', 'right': '}', 'same': 0, 'seek': 1, 'line': 0},
            \'}': {'left': '{', 'right': '}', 'same': 0, 'seek': 2, 'line': 0},
            \'[': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 1, 'line': 0},
            \']': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 2, 'line': 0},
            \'<': {'left': '<', 'right': '>', 'same': 0, 'seek': 1, 'line': 0},
            \'>': {'left': '<', 'right': '>', 'same': 0, 'seek': 2, 'line': 0},
            \'"': {'left': '"', 'right': '"', 'same': 1, 'seek': 1, 'line': 0},
            \"'": {'left': "'", 'right': "'", 'same': 1, 'seek': 1, 'line': 0},
            \'`': {'left': '`', 'right': '`', 'same': 1, 'seek': 1, 'line': 0},
            \'V': {'left': '^\s*\(if\|for\|function\|try\|while\)\>',
                \'right': '^\s*end', 'same': 0, 'seek': 1, 'line': 1},
            \"g": {'left': '\%^', 'right': '\%$', 'same': 0, 'seek': 0,
            \'line': 0}
            \}

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnip                                                                   {{{

" Show the ultisnips file in a vertical split when we open it with UltiSnipsEdit
let g:UltiSnipsEditSplit="vertical"
" Just read my snippets directory, don't read the default stuff
let g:UltiSnipsSnippetDirectories=["snippets"]
let g:UltiSnipsSnippetsDir = "~/.vim/snippets"

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimroom                                                                    {{{

" don't pad the window vertically, thanks
let g:vimroom_sidebar_height=0
" just use my default keybindings
let g:vimroom_navigational_keys=0

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki                                                                    {{{

let wiki_1                 = {}
let wiki_1.path            = '~/.vim/wiki'
let wiki_1.path_html       = '~/.vim/wiki_html'
let wiki_1.nested_syntaxes = {'ruby': 'ruby'}

let g:vimwiki_list = [wiki_1]

let g:vimwiki_hl_cb_checked  = 1
let g:vimwiki_hl_headers     = 1
let g:vimwiki_table_mappings = 0
let g:vimwiki_dir_link       = 'index'

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vroom                                                                      {{{

" Don't use the default vroom keys
let g:vroom_map_keys = 0
" Use dispatch
let g:vroom_use_dispatch = 1

" }}}

" }}}
