if exists('g:loaded_inside_motion')
  finish
endif
let g:loaded_inside_motion = 1

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <plug><inside-motion> :<C-u>call inside_motion#MoveToInside()<CR>

if !get(g:, 'inside_motion_no_default_key_mappings', 0)
  nmap <buffer> ,l <plug><inside-motion>
endif

let &cpo = s:save_cpo
unlet s:save_cpo
