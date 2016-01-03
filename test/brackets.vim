let s:suite = themis#suite('inside-motion.vim')
let s:assert = themis#helper('assert')

function! s:suite.square_bracket()
  call InitBuffer('var a = [1, 2, 3];')
  call s:assert.equals(GetCursorPosChar(), 'v')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), '1')
endfunction

function! s:suite.round_bracket()
  call InitBuffer('$now = micortime(true);')
  call s:assert.equals(GetCursorPosChar(), '$')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 't')
endfunction
