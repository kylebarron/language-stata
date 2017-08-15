# To do list:

* [ ] [Improve autocompletion support](https://github.com/atom/autocomplete-plus/wiki/SymbolProvider-Config-API)
* [ ] Highlight commas in function calls
* [ ] Color the . as a system constant. It's basically NA. Any situations where . is used outside strings to not mean NA?

* [ ] how should prefixes be colored? 
    - Should prefixes only be colored at the beginning of the line? I.e. \n\s*[prefix]. Mauricio uses "capture" as an option to some of his functions
* [ ] "if" is currently colored everywhere, even in a macro. Do you want `if` colored pink when it's often a part of the syntax command.
* [ ] What are limits on function names? Use in program drop ... block to alert when illegal.
* [ ] Color general commands
    - In something like "label var ..." what should be colored?
    - What about "merge ... using"?
* [ ] Put an option in the settings as for whether to color locals and macros inside quotes
* [/] Change acceptable variable names to include macro identifiers
    - local test = blah; gen di`test' = 2; that is acceptable and gives a variable name of diblah
    - half done; long names that are over 32 chars but have `' or $ in it are not flagged

* [ ] Get all option possibilities; put all of them in like "options.builtin.stata"?
* [ ] get all command names, put them in 'commands.builtin.stata'...





Completed:
* [/] color regular expressions
* [/] Maybe look in material ui syntax package to see all the names that they give a color to
    - The names are listed in grammars/names_python.txt and grammars/names_regexp.txt
* [/] Color brackets that subset, like [_N] or [_n]
* [/] Why is TODO colored... everwhere?
    - The [language-todo](https://github.com/atom/language-todo) package; installed by default.
* [/] Add support for ligatures. See here: <https://github.com/JuliaEditorSupport/atom-language-julia/issues/49>
* [/] Globals and locals
    - Should they be the same color as types?
    - Outer symbol is colored
    - Colored in strings
* [/] Figure out why "meta.function-call.python" is colored in python but "meta.function-call.stata" isn't colored in stata.
    - Because there's a special python.less file in the atom-material-syntax package that colors those
* [/] Correct function names with global variables as arguments, like mi(${global}) (also correct regexm())
* [/] In Python, if I go to the argument of a function call and look at its scope, it's "meta.function-call.python"; but if I use that for Stata: "meta.function-call.stata", it's not colored!
    - This is because there's a special python.less file in the material syntax theme
