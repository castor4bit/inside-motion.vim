# inside-motion.vim [![Build Status](https://travis-ci.org/castor4bit/inside-motion.vim.svg?branch=master)](https://travis-ci.org/castor4bit/inside-motion.vim) [![](https://img.shields.io/badge/lisence-NYSL-blue.svg)](LISENCE)

Move into the inside of the quotes, parentheses and HTML tags.


## Usage

In normal mode, press `,l` to move.

### Examples

![image](http://castor4bit.github.io/inside-motion.vim/images/inside_motion_1.gif)

![image](http://castor4bit.github.io/inside-motion.vim/images/inside_motion_2.gif)

## Installation

Manually move files into `~/.vim`, or use Vim package manager such as  [NeoBundle](https://github.com/Shougo/neobundle.vim).

```vim
NeoBundle 'castor4bit/inside-motion.vim'
```

## Key Mapping

Customize the key mapping if you don't like the default.

```vim
let g:inside_motion_no_default_key_mappings = 1
nmap <silent> ,l <Plug><inside-motion>
```

## License

- NYSL
- http://www.kmonos.net/nysl/
