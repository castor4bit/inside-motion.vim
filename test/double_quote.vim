let s:suite = themis#suite('inside-motion.vim')
let s:assert = themis#helper('assert')

function! s:suite.double_quote()
  call InitBuffer('response.content_type = "text/plain"')
  call s:assert.equals(GetCursorPosChar(), 'r')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 't')
endfunction

function! s:suite.double_quote_x2()
  call InitBuffer('response.content_type = "text/plain; " + "charset=utf-8"')
  call s:assert.equals(GetCursorPosChar(), 'r')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 't')

  " TODO
  " call inside_motion#MoveToInside()
  " call s:assert.equals(GetCursorPosChar(), 'c')
endfunction

function! s:suite.double_quote_with_round_bracket()
  call InitBuffer('var mathes = /ab*/.exec("xyz");')
  call s:assert.equals(GetCursorPosChar(), 'v')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'x')
endfunction

function! s:suite.double_quote_with_square_bracket()
  call InitBuffer('return result["foo"]["bar"];')
  call s:assert.equals(GetCursorPosChar(), 'r')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'f')

  " TODO
  " call inside_motion#MoveToInside()
  " call s:assert.equals(GetCursorPosChar(), 'b')
endfunction
