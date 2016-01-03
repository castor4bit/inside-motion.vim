let s:save_cpo = &cpo
set cpo&vim

function! inside_motion#MoveToInside()
  let match = search('\v(\<[^/]{-}\>)|([\(\[]?["''])|\(|\[', 'e', line('.'))
  if match > 0 && col('.') < col('$') - 1
    call cursor(0, col('.') + 1)
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
