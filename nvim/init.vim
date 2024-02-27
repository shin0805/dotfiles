" set up the dein.vim directory
let s:dein_dir = expand('~/.cache/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:rc_dir = expand('~/.config/nvim')

" automatic installation of dein.vim
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
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

" for copilot
if has('nvim') || has('patch-9.0.0185')
  call dein#add('github/copilot.vim')
endif

" automatically install any plugins that need to be installed.
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
set autoread                                    " 編集中に別のところで編集されたら自動で読み込みます。
" set backspace=indent,eol,start
set cursorline                                  " 今いる行をハイライト
set expandtab                                   " タブを押すと空白が挿入されるようにする
set hidden                                      " 保存しなくてもバッファの切り替えができる
" set mouse+=a                                    " マウスでカーソルの位置を指定できる
set noswapfile                                  " swapファイルは使いません
set nowrap                                      " 折り返しをしない
set number
set relativenumber                              " 番号を相対表示にする
set scrolloff=8                                 " スクロール時に余白を取るようになる
set shiftwidth=2                                " vimのインデントでいくつ空白を挿入するか
set softtabstop=2                               " tabを押した時に空白何個分のインデントをとるか。
" set splitbelow                                  " splitすると下に分かれる
" set splitright                                  " splitすると右に分かれる
set tabstop=2                                   " 一個のタブを空白何個分にとるか。
" set tags=.tags;~                                " ctagsを遡って検索
" set whichwrap=b,s,<,>,[,]                       " 行末、行頭で行を跨ぐことができるようになります。
" set wildmenu wildmode=longest,full              " 補完の形を決める（vim互換性）
set nohlsearch
set incsearch
set smartcase
set clipboard=unnamedplus
if has('persistent_undo')
  set undodir=~/.config/nvim/undo
  set undofile
endif
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
" set termwinsize=10x0

" clang-format
function! s:clang_format()
  let l:save = winsaveview()
  :silent %! clang-format --style="{ BasedOnStyle: Google, ColumnLimit: 170, IncludeBlocks: Preserve }"
  call winrestview(l:save)
  :silent w
endfunction
" yapf (pip install yapf)
function! s:yapf()
  let l:save = winsaveview()
  :silent %! yapf --style="{ based_on_style: google, column_limit: 170 }"
  call winrestview(l:save)
  :silent w
endfunction
function! FileFormatter()
  let file_type = &filetype
  if file_type == "cpp" || file_type == "c"
    if executable("clang-format")
      call s:clang_format()
    endif
  elseif file_type == "python"
    if executable("yapf")
      call s:yapf()
    endif
  endif
endfunction

nnoremap <silent> <Space><Space> :call FileFormatter()<CR>

au BufRead,BufNewFile SConstruct set filetype=python
au BufRead,BufNewFile SConscript set filetype=python
au BufRead,BufNewFile *.l set filetype=lisp
au BufRead,BufNewFile *.launch set filetype=xml

" ctags
set tags=./.tags;$HOME
nnoremap <C-]> g<C-]>
inoremap <C-]> <ESC>g<C-]>

" source $HOME/.cache/nvim/dein/repos/github.com/neoclide/coc.nvim_release/plugin/coc.vim

" telescope
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>
