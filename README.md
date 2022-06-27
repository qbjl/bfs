# bfs ![badge](https://img.shields.io/github/issues/silvxrcat/bfs?style=plastic) ![badge](https://img.shields.io/github/issues-pr/silvxrcat/bfs?style=plastic) ![badge](https://img.shields.io/github/labels/silvxrcat/bfs/help%20wanted?color=gre&style=plastic)
BrainF: Silver is my version of BrainF with some new characters and tweaks.

## running <div id="run"></div>

Make sure you have [Ruby](https://www.ruby-lang.org/en/downloads/) before completing any or all steps.

To run this, download 'bfs.rb' from the repository, and create a new folder with the file in it. Then, start coding by making a new file in the folder with the extension "bfs". Name this whatever you like, and inside it put some <a href="#code">code</a>.

Then, run these commands in your command line:

```cmd
cd ./path/to/folder
ruby bfs.rb
```
Enter in your .bfs file name and watch it run.

## code <div id="code"></div>

These will vary over time.

`+`     Increment the current byte at the pointer  
`-`     Decrement the current byte at the pointer  
`>`     Move the pointer forward one index  
`<`     Move the pointer backward one index  
`.`     Output the current byte the pointer  
`,`     Allow for 1 byte of input, then replaces the current byte at the pointer with the input  
`[`     Start of loop  
`]`     End of loop, ends when the current byte at the pointer is 0, otherwise returns back to the start of loop  
`~`     Toggles mode from "letters" to "numbers" (default is letters)  
`↑`     Switches values with the current byte at the pointer and the hand byte  
`*`     Multiplies the current byte at the pointer by the hand byte  
`/`     Divides the current byte at the pointer with the hand byte  
`#`     Adds the current byte at the pointer with the hand byte  
`_`     Subtracts the current byte at the pointer by the hand byte  
`%`     Modulo with current byte at the pointer and the hand byte  
`^`     Exponents with current byte at the pointer and the hand byte  
`↓`     Resets the hand to 0  
`|`     Dump current data array into console/terminal  
`)`     Creates a new index forward of the pointer with the byte '0'  
`(`     Deletes the index forward of the pointer  
`:`     Reset current byte at the pointer to 0  
`?`     Uses the current byte at the pointer out of 100 to simulate chance, 1 is fail and 0 is win

## conclusion <div id="conclude"></div>

This is still in beta, so expect errors and whatnot. If you have a suggestion/issue, please use the Issue tab to report any bugs, incompatabilities, etc.

