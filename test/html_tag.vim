let s:suite = themis#suite('inside-motion.vim')
let s:assert = themis#helper('assert')

function! s:suite.html_tag()
  call InitBuffer('<span><b>Bold</b> and <i>Italic</i></span>')
  call s:assert.equals(GetCursorPosChar(), '<')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), '<')
  call s:assert.equals(GetCursorPos(), 6)   " <span>|

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'B')
  call s:assert.equals(GetCursorPos(), 9)   " <span><b>|

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'I')
  call s:assert.equals(GetCursorPos(), 25)  " <span><b>Bold</b> and <i>|
endfunction
