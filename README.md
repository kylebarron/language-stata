# language-stata package
Stata syntax highlighting, built from the ground up

## Features

This package highlights:
- System commands, functions, and function arguments
- Macros, both global and local
- Regular expressions

Other nice features:
- Autocomplete for built-in commands and functions, and for macros as you write them.
- Alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars, starts with a number, or is a reserved name.
- Support for programming ligatures for all valid Stata syntax for fonts that support them, like the [Fira Code](https://github.com/tonsky/FiraCode) font.
- Local macro back tick autocompletion. When you write a `, atom automatically fills in a ' after your cursor

## Installation

To install, do one of the following:
    - Go to Preferences/Settings > Install > Packages; and then search for "language-stata-plus"
    - At the command line, type `apm install language-stata-plus`

## Running Code

Check out the `script` or `stata-exec` packages. If you're on Linux, you can use my [scripts](https://github.com/kylebarron/stata-autokey) to automatically run your files in a graphical session of Stata.

