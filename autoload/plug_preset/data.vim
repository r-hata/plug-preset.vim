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
" }}} End fzf

" fzf.vim {{{
let s:data['fzf.vim'] = {
  \ 'on': 'Fzf'
  \ }
" }}} End fzf.vim

" vim-toml {{{
let s:data['vim-toml'] = {
  \ 'for': 'toml'
  \ }
" }}} End vim-toml

" html5.vim {{{
let s:data['html5.vim'] = {
  \ 'for': 'html'
  \ }
" }}} End html5.vim

" vim-javascript {{{
let s:data['vim-javascript'] = {
  \ 'for': 'javascript'
  \ }
" }}} End vim-javascript

let &cpo = s:save_cpo
