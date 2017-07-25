# language-stata
Stata syntax highlighting, built from the ground up

# Features

- Alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars or starts with a number, etc.
- Syntax highlighting within regular expressions
- Macro highlighting, both global and local.
  - Supports macros inside macros
- Support for programming ligatures for all valid Stata syntax for fonts that support them, like the [Fira Code](https://github.com/tonsky/FiraCode) font.


Add the following to your config.cson to have bracket matching support for local macros
```coffeescript
".source.stata":
  "bracket-matcher":
    autocompleteCharacters: [
      "()"
      "[]"
      "{}"
      "''"
      "`'"
      "\"\""
    ]
```

# Current issues:
- In Python, if I go to the argument of a function call and look at its scope, it's "meta.function-call.python"; but if I use that for Stata: "meta.function-call.stata", it's not colored!