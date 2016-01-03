let s:suite = themis#suite('inside-motion.vim')
let s:assert = themis#helper('assert')

function! s:suite.single_quote()
  call InitBuffer("string msg = 'hello, world.';")
  call s:assert.equals(GetCursorPosChar(), 's')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'h')
endfunction

function! s:suite.single_quote_x2()
  call InitBuffer("string msg = 'hello, ' + 'world.';")
  call s:assert.equals(GetCursorPosChar(), 's')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'h')

  " TODO
  " call inside_motion#MoveToInside()
  " call s:assert.equals(GetCursorPosChar(), 'w')
endfunction

function! s:suite.single_quote_with_round_bracket()
  call InitBuffer("var mathes = /ab*/.exec('xyz');")
  call s:assert.equals(GetCursorPosChar(), 'v')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'x')
endfunction

function! s:suite.single_quote_with_square_bracket()
  call InitBuffer("return result['foo']['bar'];")
  call s:assert.equals(GetCursorPosChar(), 'r')

  call inside_motion#MoveToInside()
  call s:assert.equals(GetCursorPosChar(), 'f')

  " TODO
  " call inside_motion#MoveToInside()
  " call s:assert.equals(GetCursorPosChar(), 'b')
endfunction
