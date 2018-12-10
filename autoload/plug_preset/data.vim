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


" fzf {{{
let s:data['fzf'] = {
  \ 'dir': '~/.fzf',
  \ 'do': './install --all'
  \ }
" }}}

" vim-toml {{{
let s:data['vim-toml'] = {
  \ 'for': 'toml'
  \ }
" }}}

" html5.vim {{{
let s:data['html5.vim'] = {
  \ 'for': 'html'
  \ }
" }}}

" vim-javascript {{{
let s:data['vim-javascript'] = {
  \ 'for': 'javascript'
  \ }
" }}}

" vim-go {{{
let s:data['vim-go'] = {
  \ 'do': ':GoUpdateBinaries',
  \ 'for': 'go'
  \ }
" }}}

" colorizer {{{
let s:data['colorizer'] = {
  \ 'for': ['css', 'vim', 'scss'],
  \ }
" }}}


let &cpo = s:save_cpo
