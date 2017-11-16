# Stata language support in Atom
[![Installs!](https://img.shields.io/apm/dm/language-stata.svg?style=flat-square)](https://atom.io/packages/language-stata)
[![Version!](https://img.shields.io/apm/v/language-stata.svg?style=flat-square)](https://atom.io/packages/language-stata)
[![License](https://img.shields.io/apm/l/language-stata.svg?style=flat-square)](https://github.com/kylebarron/language-stata/blob/master/LICENSE)

[![GitHub stars](https://img.shields.io/github/stars/kylebarron/language-stata.svg?style=social&label=Star)](https://github.com/kylebarron/language-stata)
[![GitHub forks](https://img.shields.io/github/forks/kylebarron/language-stata.svg?style=social&label=Fork)](https://github.com/kylebarron/language-stata)

## News:
The [stata-exec](https://atom.io/packages/stata-exec) package has been updated and now makes it extremely easy to run code in Stata on macOS.

Also [available for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=kylebarron.stata-enhanced).

<img src="./img/stata.png" alt="stata" style="width: 500px;"/>

<!-- ![stata](./img/stata.png) -->
Code snippet (mostly) from [Gtools](https://github.com/mcaceresb/stata-gtools), a faster implementation of Stata's collapse and egen using C plugins. Shown with the [Atom Material Syntax](https://github.com/atom-material/atom-material-syntax) theme and [Fira Code](https://github.com/tonsky/FiraCode) font.

## Features

This package highlights:
- System commands, functions, and function arguments
- Macros, both global and local
    - Accurately colors nested macros and escaped macros in strings when you want the inner macro to evaluate at runtime
    - Colors macro extended functions inside `` `: ... '`` as well as after `local lname:`
- Regular expressions
    - Colors both the limited syntax provided through the `regexr()` and `regexm()` functions, as well as the vastly expanded regex syntax provided in Stata 14 and 15 through the `ustrregexm()`, `ustrregexrf()`, and `ustrregexra()` functions.

Other nice features:
- Autocomplete for built-in commands and functions, and for your macros as you write them.
- Alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars, starts with a number, or is a reserved name.
- Alerts you if you have any text other than } on a line ending a foreach/forvalues/if/else command
- Local macro back tick autocompletion. When you write a `, Atom automatically fills in a ' after your cursor
- Makes it easy to spot incorrect nesting of compound quotes
- Support for programming ligatures for all valid Stata syntax for fonts that support them, like the [Fira Code](https://github.com/tonsky/FiraCode) font.
- Highlights SQL queries used in the [`odbc`](https://www.stata.com/help.cgi?odbc) command. (The `language-sql` base package must be active.)
- Highlights [Docblockr](https://atom.io/packages/docblockr)-style keywords inside comments (anything like `@Note`)

## Installation

To install, do one of the following:
- Go to Preferences/Settings > Install > Packages; and then search for "language-stata-plus"
- At the command line, type `apm install language-stata-plus`

The local macro back tick autocompletion won't function until you fully restart Atom. Do `ctrl-shift-P` or `cmd-shift-P` to bring up the command palette, type `Window: Reload`, and click enter.

## Running Code

Check out the `script` or `stata-exec` packages. If you're using Linux, you can use my [scripts](https://github.com/kylebarron/stata-autokey) with the [Autokey](https://github.com/autokey-py3/autokey) automation utility to quickly run selections of your files in a graphical session of Stata.

