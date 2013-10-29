" compatibleオプションをオフにする
" vi互換のvimからvimデフォルトに変更するため
set nocompatible

"============================================
"			NeoBundle設定
"	NeoBundleInstall  プラグイン新規追加時のインストール
"	NeoBundleInstall! プラグインの更新
"	NeoBundleClean    プラグインの削除
"============================================
filetype plugin off
filetype indent off

" ------------neovundleの初期化--------------
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle'))
endif

" -----------管理したいpluginを記述------------
" plugin管理用plugin
NeoBundle 'Shougo/neobundle.vim'
" 入力補完機能を提供する
NeoBundle 'Shougo/neocomplcache'
" スニペット入力サポート
NeoBundle 'Shougo/neosnippet'
" エコーエリアに情報を表示
NeoBundle 'Shougo/echodoc'
" 統合ユーザーインターフェース
NeoBundle 'Shougo/unite.vim'
" ファイル操作をサポート
NeoBundle 'Shougo/vimfiler.git'
" バージョン管理
NeoBundle 'Shougo/vim-vcs.git'
" 非同期実行ライブラリ
NeoBundle 'Shougo/vimproc', {
			\ 'build' : {
			\     'windows' : 'make -f make_mingw32.mak',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'unix' : 'make -f make_unix.mak',
			\    },
			\}
" vimからシェルを起動する
NeoBundle 'Shougo/vimshell.git'
" バイナリを編集可能に
NeoBundle 'Shougo/vinarise.git'
" ファイルをツリーで表示  :NERDTreeで実行
NeoBundle 'scrooloose/nerdtree.git'
" 自動文法チェック
NeoBundle 'scrooloose/syntastic.git'
" 編集中のコードに対して、ショートカットで実行結果をsplitウィンドウに表示
" \ + r　を押す
NeoBundle 'thinca/vim-quickrun'
" ステータスラインをおしゃれに
NeoBundle 'itchyny/lightline.vim'
" html/css入力補助plugin (zen-codingの後継)
NeoBundle 'mattn/emmet-vim'
" apiを取得する用
NeoBundle 'mattn/webapi-vim'
" URLをブラウザで開ける
NeoBundle 'open-browser.vim'
" 括弧囲み補完
NeoBundle 'tpope/vim-surround'
" コードシンタックス表示
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

filetype plugin on
filetype indent on
"============================================
"			カラースキーマ設定
"============================================
" シンタックスハイライト(色分け)
syntax on
" カラースキーマ
colorscheme desert
"colorscheme molokai

"============================================
"			文書設定
"============================================
"--------------ファイル設定---------------
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" ファイルフォーマット
"set fileformat=mac
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
"-------------------タブ------------------
" tabキーを押下したときの幅
set softtabstop=4
" タブを表示するときの幅
set tabstop=4
" タブをタブとして扱う(スペースに展開しない)
set noexpandtab
" 自動インデント等でタブを挿入するときの幅
set shiftwidth=4
" インデントをshiftwidthの倍数に丸める
set shiftround
"-----------------表示-------------------
"行番号を表示する
set number
" 右下に表示される行・列の番号を表示する
set ruler
" スクロールする時に下が見えるようにする(カーソルが一番下まで行かない)
set scrolloff=5
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" ビープ音を消す
set vb t_vb=
set novisualbell
" OSのクリップボードを使う
set clipboard+=unnamed
set clipboard=unnamed
" 不可視文字を表示
set list
" 不可視文字表示の形式
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" 補完の際の大文字小文字の区別しない
set infercase
" 文字がない場所にもカーソルを移動できるようにする
"set virtualedit=all
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" xtermとscreen対応
set ttymouse=xterm2
" コマンドを画面最下部に表示する
set showcmd
"============================================
"			検索
"============================================

" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
set hlsearch

"============================================
"			操作設定
"============================================
" マウスモード有効
if has('mouse')
	set mouse=a
endif
" 左右のカーソル移動で行間移動を可能に
" nocompatible以降に記述しないと有効にならない
set whichwrap=b,s,<,>,[,],h,l

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" vを二回で行末まで選択
vnoremap v $h
" TABにて対応ペアにジャンプ
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>


"""""""""""""""""""""""""""""""
"ファイルを開いたら前回のカーソル位置へ移動
""""""""""""""""""""""""""""""
augroup vimrcEx
	autocmd!
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line('$') |
				\   exe "normal! g`\"" |
				\ endif
augroup END

"==============================
"			NerdTree 設定
"==============================
" 引数なしで実行したとき、NERDTreeを実行する
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
	autocmd VimEnter * call ExecuteNERDTree()
endif

" カーソルが外れているときは自動的にnerdtreeを隠す
function! ExecuteNERDTree()
	"b:nerdstatus = 1 : NERDTree 表示中
	"b:nerdstatus = 2 : NERDTree 非表示中

	if !exists('g:nerdstatus')
		execute 'NERDTree ./'
		let g:windowWidth = winwidth(winnr())
		let g:nerdtreebuf = bufnr('')
		let g:nerdstatus = 1 

	elseif g:nerdstatus == 1 
		execute 'wincmd t'
		execute 'vertical resize' 0 
		execute 'wincmd p'
		let g:nerdstatus = 2 
	elseif g:nerdstatus == 2 
		execute 'wincmd t'
		execute 'vertical resize' g:windowWidth
		let g:nerdstatus = 1 
	endif
endfunction
noremap <c-e> :<c-u>:call ExecuteNERDTree()<cr>

"=================================
"			lightline設定
"=================================
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
			\   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
			\ },
			\ 'component_function': {
			\   'fugitive': 'MyFugitive',
			\   'filename': 'MyFilename',
			\   'fileformat': 'MyFileformat',
			\   'filetype': 'MyFiletype',
			\   'fileencoding': 'MyFileencoding',
			\   'mode': 'MyMode',
			\   'ctrlpmark': 'CtrlPMark',
			\ },
			\ 'component_expand': {
			\   'syntastic': 'SyntasticStatuslineFlag',
			\ },
			\ 'component_type': {
			\   'syntastic': 'error',
			\ },
			\ 'separator': { 'left': " ", 'right': " " },
			\ 'subseparator': { 'left': "|", 'right': "|" }
			\ }

function! MyModified()
	return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! MyFilename()
	let fname = expand('%:t')
	return fname == 'ControlP' ? g:lightline.ctrlp_item :
				\ fname == '__Tagbar__' ? g:lightline.fname :
				\ fname =~ '__Gundo\|NERD_tree' ? '' :
				\ &ft == 'vimfiler' ? vimfiler#get_status_string() :
				\ &ft == 'unite' ? unite#get_status_string() :
				\ &ft == 'vimshell' ? vimshell#get_status_string() :
				\ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
				\ ('' != fname ? fname : '[No Name]') .
				\ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
	try
		if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
			let mark = ''  " edit here for cool mark
			let _ = fugitive#head()
			return strlen(_) ? mark._ : ''
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? 'Tagbar' :
				\ fname == 'ControlP' ? 'CtrlP' :
				\ fname == '__Gundo__' ? 'Gundo' :
				\ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
				\ fname =~ 'NERD_tree' ? 'NERDTree' :
				\ &ft == 'unite' ? 'Unite' :
				\ &ft == 'vimfiler' ? 'VimFiler' :
				\ &ft == 'vimshell' ? 'VimShell' :
				\ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
	if expand('%:t') =~ 'ControlP'
		call lightline#link('iR'[g:lightline.ctrlp_regex])
		return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
					\ , g:lightline.ctrlp_next], 0)
	else
		return ''
	endif
endfunction

let g:ctrlp_status_func = {
			\ 'main': 'CtrlPStatusFunc_1',
			\ 'prog': 'CtrlPStatusFunc_2',
			\ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
	let g:lightline.ctrlp_regex = a:regex
	let g:lightline.ctrlp_prev = a:prev
	let g:lightline.ctrlp_item = a:item
	let g:lightline.ctrlp_next = a:next
	return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
	return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
	let g:lightline.fname = a:fname
	return lightline#statusline(0)
endfunction

augroup AutoSyntastic
	autocmd!
	autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
	SyntasticCheck
	call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
