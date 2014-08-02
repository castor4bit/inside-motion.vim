let s:save_cpo = &cpo
set cpo&vim

function! inside_motion#MoveToInside()
 let match = search('<[^/>]\{-}>\|(["'']\|\[["'']\|(\|[', 'e', line("."))
 if match > 0 && col('.') < col('$') - 1
    call feedkeys("l")
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
