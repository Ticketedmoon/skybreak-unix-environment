`gg` - move to top of file  
`G` - move to bottom of file  
`50G` - move to line 50

`shift-i` - move to start of line and changes to insert mode  
`shift-a` - move to end of line  and changes to insert mode  

`k` - up  
`j` - down  
`l` - right  
`h` - left  

`w` - move to next word  
`e` - move to end of word  
`b` - move to start of previous word  

**Note:** All these commands can be prefixed with a number to repeat X times.  

`0` - move to start of line  (similar to `shift-i` but stays in normal mode).  
`$` - move to end of line (similar to `shift-a` but stays in normal mode).  

`*` - move to next occurence of word in file.  
`#` - move to previous occurence of word in file.  

`:/{WORD` - search for {WORD} in file, press `n` to move down to each next hit, and `N` to move to previous hit  
`:%s/{A}/{B}/g` - replace all cases of `A` with `B` in file.  
`:5,12s/{A}/{B}/g` - replace all cases of `A` with `B` betwee lines 5-12.  
`:5,12s/{A}/{B}/gc` - replace all cases of `A` with `B` betwee lines 5-12 but ask for confirmation.  

`{` and `}` for moving up and down blocks of text.  

`x` - delete character under word and move cursor to next character.  
`X` - delete character under word and move cursor to previous character.  

`dw` - delete word up to next symbol.  
`dW` - delete word up to next word.  
`dt{A}` - delete next characeters to {A}, where A is a character.  
`dT{A}` - delete previous characters to {A}, where A is a character. 

`30i{word}` + `Esc` - repeat word 30 times.  

`f{A}` - move to next occurance of A.  
`F{A}` - move to previous occurance of A.

`3f{A}` - move to third next occurence of A.  
`3F{A}` - move to third previous occurence of A.  

`%` - move between enclosing parenthese lists (`(`, `[`, `{`, `)`, `]`, `}`).  
`o` - create new line under cursor.  
`O` - create new line above cursor.  
