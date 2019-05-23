" Vim syntax file
" Language: Abstract Behavioral Specification language
" Latest Revision: May 9, 2019
"
" Based on https://vim.fandom.com/wiki/Creating_your_own_syntax_files and the
" java.vim, haskell.vim syntax files.

syn keyword absTodo contained TODO FIXME XXX NOTE
syn region  absComment		 start="/\*"  end="\*/" contains=absTodo,@Spell
syn match   absLineComment	 "//.*" contains=absTodo,@Spell

syn match   absNumber		 "\<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
syn match   absNumber		 "\(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
syn match   absNumber		 "\<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
syn match   absNumber		 "\<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"

syn region  absString		start=+"+ end=+"+ end=+$+ contains=@Spell

syn keyword absConditional	if then else case
syn keyword absRepeat		while foreach
syn keyword absBoolean		True False
syn keyword absConstant	null
syn keyword absOperator	new
syn keyword absType	Unit Bool Int Rat Float String Fut Exception List Set Map Pair Triple Maybe Any
syn keyword absStatement	return await
syn keyword absExceptions	throw try catch finally
syn keyword absAssert		assert
syn keyword absStructure	implements interface class def
syn match absImport "\<import\>"
syn match absModule		"\<module\>"
syn match absLambdaDef "(\s*\([A-Z][a-zA-Z0-9_]*\s\s*[a-z][a-zA-Z0-9_]*\(\s*,\s*[A-Z][a-zA-Z0-9_]*\s\s*[a-z][a-zA-Z0-9_]*\)*\)\=\s*)\s*=>"
syn match absMaybe    "\<Nothing\>"
syn match absAnnotation	"\[.\+:.\+\(\s*,.\+:.\+\)*\]"

let b:current_syntax = "abs"

hi def link absLambdaDef   Function
hi def link absModule      absStructure
hi def link absTodo        Todo
hi def link absComment     Comment
hi def link absLineComment Comment
hi def link absString      Constant
hi def link absNumber      Constant
hi def link absType			   Type
hi def link absConditional Conditional
hi def link absExceptions	 Exception
hi def link absAssert			 Statement
hi def link absStructure   Structure
hi def link absOperator		 Operator
hi def link absRepeat      Repeat
hi def link absBoolean		 Boolean
hi def link absConstant		 Constant
hi def link absStatement   Statement
hi def link absImport      Include
hi def link absMaybe       absEnumConst
hi def link absEnumConst   Constant
hi def link absAnnotation  PreProc
