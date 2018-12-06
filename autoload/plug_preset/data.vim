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

" FZF {{{
let s:data['fzf'] = {
  \ 'dir': '~/.fzf',
  \ 'do': './install --all'
  \ }
" }}} End FZF


let &cpo = s:save_cpo
