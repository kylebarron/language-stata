# language-stata
Stata syntax highlighting, built from the ground up

# Features

- Syntax highlighting within regular expressions:
  - Colors anchors and character colors specially
- Autocomplete for functions
- Alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars or starts with a number, etc.
- Macro highlighting, both global and local.
  - Supports macros inside macros
- Support for programming ligatures for all valid Stata syntax for fonts that support them, like the [Fira Code](https://github.com/tonsky/FiraCode) font.
- Syntax highlighting in function calls like missing()
- All [functions](https://www.stata.com/bookstore/functions-reference-manual/) and their arguments are highlighted


Add the following to your `config.cson` to have bracket matching support for local macros
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

