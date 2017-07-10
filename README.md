# language-stata
Stata syntax highlighting, built from the ground up

# Features

- alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars or starts with a number, etc.


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
      "<>"
      "\"\""
    ]
```
