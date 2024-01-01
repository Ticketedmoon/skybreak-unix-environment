## Preamble

#### The difference between `word` and `WORD`:
![image](https://github.com/Ticketedmoon/skybreak-unix-environment/assets/21260839/e8d62603-cc3d-4b43-9d59-1d854b9e8531)

## Commands

`.` - repeat previous command  
`i` - enter insert mode  
`I` - enter insert mode with cursor at first non-whitespace position in line  
`v` - enter visual mode  
`shift-v` - enter visual line mode  
`shift-r` - enter replace mode  

`:w` - save  
`:q` - save and quit  
`:q!` - quit without saving  

`u` - undo  
`ctrl + r` - redo  

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
`e` - move to end of current word  
`ge` - move to end of previous word  
`b` - move to start of previous word  
`ctrl+o` - move to previous cursorposition  

**Note:** 
```
WORDs are particularly helpful to us programmers because code often has a lot of them.  
If you want to move WORD by WORD you can use the capitalized equivalents of the motions described earlier (W, B, E, gE).
```
**Note:** All these commands can be prefixed with a number to repeat X times.  

`0` - move to start of line  (similar to `shift-i` but stays in normal mode).  
`$` - move to end of line (similar to `shift-a` but stays in normal mode).  
`^` - mode to first non-whitespace word in line.  

`*` - move to next occurence of word in file.  
`#` - move to previous occurence of word in file.  

`:/{WORD` - search for {WORD} in file, press `n` to move down to each next hit, and `N` to move to previous hit  
`:%s/{A}/{B}/g` - replace all cases of `A` with `B` in file.  
`:5,12s/{A}/{B}/g` - replace all cases of `A` with `B` betwee lines 5-12.  
`:5,12s/{A}/{B}/gc` - replace all cases of `A` with `B` betwee lines 5-12 but ask for confirmation.  

`{` and `}` for moving up and down blocks of text.  

`x` - delete character under cursor and move cursor to next character.  
`X` - delete character under cursor and move cursor to previous character.  
`r{A}` - replace character under cursor with A.  
`a{A}` - append text after cursor   

`dw` - delete word up to next word.  
`dW` - delete word up to next WORD.  
`de` - delete word up to end of word.  
`dE` - delete word up to end of WORD.  
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
