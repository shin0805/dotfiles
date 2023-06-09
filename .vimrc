if &compatible
  set nocompatible               " Be iMproved
endif

let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' .. substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

" set up the dein.vim directory
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:rc_dir = expand('~/.vim')

" automatic installation of dein.vim
if !isdirectory(s:dein_repo_dir)
  execute '!git clone <https://github.com/Shougo/dein.vim>' s:dein_repo_dir
endif
execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " load the file which contain the plugin list
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" automatically install any plug-ins that need to be installed.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif


" 便利なオプション
" let &colorcolumn=101                            " 101列目に線を入れる
set autoindent                                  " 改行したりした時にインデントを保持してくれます。
" set autoread                                    " 編集中に別のところで編集されたら自動で読み込みます。
" set backspace=indent,eol,start
" set cursorline                                  " 今いる行をハイライト
set expandtab                                   " タブを押すと空白が挿入されるようにする
" set hidden                                      " 保存しなくてもバッファの切り替えができる
" set mouse+=a                                    " マウスでカーソルの位置を指定できる
set noswapfile                                  " swapファイルは使いません
set nowrap                                      " 折り返しをしない
set number
set relativenumber                              " 番号を相対表示にする
" set scrolloff=8                                 " スクロール時に余白を取るようになる
set shiftwidth=2                                " vimのインデントでいくつ空白を挿入するか
set softtabstop=2                               " tabを押した時に空白何個分のインデントをとるか。
" set splitbelow                                  " splitすると下に分かれる
" set splitright                                  " splitすると右に分かれる
set tabstop=2                                   " 一個のタブを空白何個分にとるか。
" set tags=.tags;~                                " ctagsを遡って検索
" set whichwrap=b,s,<,>,[,]                       " 行末、行頭で行を跨ぐことができるようになります。
" set wildmenu wildmode=longest,full              " 補完の形を決める（vim互換性）
imap jj <esc>
nmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap jj <C-w>N
" syntax enable

" gruvbox
colorscheme gruvbox

" 背景透過
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
 
" terminal
set termwinsize=10x0

" 保存時に自動でclang-formatをしてくれる
function! s:clang_format()
  let l:save = winsaveview()
  :silent %! clang-format -style=file
  call winrestview(l:save)
  :silent w
endfunction
if executable("clang-format")
    augroup cpp_clang_format
        autocmd!
        autocmd Bufwrite,FileWritePre,FileAppendPre *.[ch]pp call s:clang_format()
        autocmd Bufwrite,FileWritePre,FileAppendPre *.[ch] call s:clang_format()
    augroup END
endif

au BufRead,BufNewFile SConstruct set filetype=python
au BufRead,BufNewFile SConscript set filetype=python
au BufRead,BufNewFile *.l set filetype=lisp
au BufRead,BufNewFile *.launch set filetype=xml
