let s:save_cpo = &cpo
set cpo&vim


let s:data = {}


function! s:repository_name(repository)
	return fnamemodify(a:repository, ':t')
endfunction

function! plug_preset#data#get(repository)
  let name = s:repository_name(a:repository)
	return get(s:data, name, {})
endfunction


" C {{{
let s:data['colorizer'] = {
  \ 'for': ['css', 'vim', 'scss'],
  \ }
" }}}
" F {{{
let s:data['fzf'] = {
  \ 'dir': '~/.fzf',
  \ 'do': './install --all'
  \ }
" }}}
" H {{{
let s:data['html5.vim'] = {
  \ 'for': 'html'
  \ }
" }}}
" V {{{
let s:data['vim-go'] = {
  \ 'do': ':GoUpdateBinaries',
  \ 'for': 'go'
  \ }
let s:data['vimproc.vim'] = {
  \ 'do': 'make'
  \ }
let s:data['vim-toml'] = {
  \ 'for': 'toml'
  \ }
let s:data['vim-javascript'] = {
  \ 'for': 'javascript'
  \ }
" }}}


let &cpo = s:save_cpo
