# Stata language support in Atom
[![Installs!](https://img.shields.io/apm/dm/language-stata.svg?style=flat-square)](https://atom.io/packages/language-stata)
[![Version!](https://img.shields.io/apm/v/language-stata.svg?style=flat-square)](https://atom.io/packages/language-stata)
[![License](https://img.shields.io/apm/l/language-stata.svg?style=flat-square)](https://github.com/kylebarron/language-stata/blob/master/LICENSE)

[![GitHub stars](https://img.shields.io/github/stars/kylebarron/language-stata.svg?style=social&label=Star)](https://github.com/kylebarron/language-stata)
[![GitHub forks](https://img.shields.io/github/forks/kylebarron/language-stata.svg?style=social&label=Fork)](https://github.com/kylebarron/language-stata)

- [News](#news)
- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running Code](#running-code)
- [Dynamic Documents](#dynamic-documents)

## News

Use the new [Stata Jupyter kernel](https://kylebarron.github.io/stata_kernel/) with Atom's [Hydrogen package](https://atom.io/packages/Hydrogen) to show Stata results inline. It works with Windows, macOS, and Linux. Example gif uses the [Atom Material Syntax](https://github.com/atom-material/atom-material-syntax) theme and [Fira Code](https://github.com/tonsky/FiraCode) font.

![](./img/stata_kernel_example.gif)

## Features

This package highlights:

- System commands, functions, and function arguments
- Macros, both global and local
    - Accurately colors nested macros and escaped macros in strings when you want the inner macro to evaluate at runtime
    - Colors macro extended functions inside `` `: ... '`` as well as after `local lname:`
- Comments, [more accurately than Stata's Do-file Editor](examples/comments.md).
- Regular expressions
    - Colors both the limited syntax provided through the `regexr()` and `regexm()` functions, as well as the vastly expanded regex syntax provided in Stata 14 and 15 through the `ustrregexm()`, `ustrregexrf()`, and `ustrregexra()` functions.
- Dynamic Markdown and LaTeX documents. [Instructions below.](#dynamic-documents)

Other nice features:

- Works with unicode identifiers. Use unicode anywhere it's legal Stata syntax.
- Autocomplete for functions with a drop-down help menu. (This can be turned off in the settings).
- Autocomplete for commands and macros.
- Alerts you if your variable name is illegal, i.e. if your variable name is more than 32 chars, starts with a number, or is a reserved name.
- Alerts you if you have any text other than } on a line ending a foreach/forvalues/if/else command
- Local macro back tick autocompletion. When you write a `, Atom automatically fills in a ' after your cursor
- Makes it easy to spot incorrect nesting of compound quotes
- Support for programming ligatures for all valid Stata syntax for fonts that support them, like the [Fira Code](https://github.com/tonsky/FiraCode) font.
- Highlights SQL queries used in the [`odbc`](https://www.stata.com/help.cgi?odbc) command. (The `language-sql` base package must be active.)
- Highlights [Docblockr](https://atom.io/packages/docblockr)-style keywords inside comments (anything like `@Note`)

## Installation

To install, do one of the following:

- Go to Preferences/Settings > Install > Packages; and then search for `language-stata`
- At the command line, type `apm install language-stata`

The local macro back tick autocompletion won't function until you fully restart Atom. Do `ctrl-shift-P` or `cmd-shift-P` to bring up the command palette, type `Window: Reload`, and click enter.

## Configuration

Atom allows you to toggle whether a line is commented using <kbd>ctrl</kbd>+<kbd>/</kbd>. As of version 1.6.5, the comment character this uses is `// ` by default. You can change this to use `/* */` or `*` characters to comment lines.

To change to `/* */` comments, you can put the following in your [`config.cson`](https://flight-manual.atom.io/using-atom/sections/basic-customization/) file.

```cson
'.source.stata':
  editor:
    commentStart: '/* '
    commentEnd: ' */'
```

To change to `*` comments, use the following. However I don't recommend using this character<sup>[1](#myfootnote1)</sup>.

```cson
'.source.stata':
  editor:
    commentStart: '* '
```

Note that in your `config.cson` file there can only be a single `'.source.stata'` top-level key, and only a single `editor` key under `'.source.stata'`. If you customize some other settings within the Stata grammar, you might already have a `'.source.stata'` key, and thus you would add the `commentStart` key to it.

## Running Code

There are three ways to run code in Stata from Atom

1. The [Hydrogen](https://atom.io/packages/Hydrogen) package in conjunction with the new [Stata Jupyter kernel](https://kylebarron.github.io/stata_kernel/) shows Stata results inside Atom next to your code. The gif at the top of the page is an example of this setup. A few features:

    - Works with Windows, macOS, and Linux. Has an easier install on Windows than `stata-exec`.
    - Use a different session of Stata for each file, or connect them all to the same session.
    - Autocompletions as you type based on the variables and macros in memory
    - Use any type of comments in your code
    - Low-latency connections with remote sessions of Stata. Possible to reconnect to a running remote session if you get disconnected.
    - Use `#delimit ;` interactively with your code

    As of the next release of Hydrogen (>2.6.0), you'll also be able to run code
    blocks within a Stata [dynamic document](#dynamic-documents) using the Stata
    Jupyter kernel.

2. The [`stata-exec`](https://atom.io/packages/stata-exec) package sends selected Stata code to an open Stata GUI window on Windows, macOS, and Linux. This differs from Hydrogen because it allows you to still interact with the Stata GUI. This might be easier for users who are new to Stata. However, it can be difficult to successfully install this on Windows.
3. The [script](https://atom.io/packages/script) package will run code in the Stata console, but has the limitations 1) each command is run in a separate session of Stata, 2) it currently doesn't work with selections; you have to run the entire file, 3) it doesn't work on Windows.


## Dynamic Documents

![](img/dyntext_domd.png)

Stata 15 brought new features for working with dynamic documents. The [`dyndoc`](https://www.stata.com/help.cgi?dyndoc) command lets you write in Markdown and converts your file and code to HTML for viewing in a web browser.

It also added the [`dyntext`](https://www.stata.com/help.cgi?dyntext) command, which fills in Stata output for any text file, without touching the text itself. This lets you then use third-party document generators like [Pandoc](https://pandoc.org/) and [LaTeX](https://www.latex-project.org/) to generate documents.

This package now provides syntax highlighting for Stata code written inside Stata's [dynamic tags](https://www.stata.com/help.cgi?dynamic+tags) for Markdown and LaTeX documents.

By default, this package's Markdown and LaTeX syntax highlighting will be applied for files ending in `.domd` and `.dotex` respectively. **The [language-markdown](https://atom.io/packages/language-markdown) and [language-latex](https://atom.io/packages/language-latex) packages must be installed for the highlighting to work.**

If you name your file with a different extension, you can manually set the highlighting by clicking on the "Plain Text" button on the bottom right of the screen (or by pressing <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>L</kbd>) and then selecting `Stata Dyndoc (Markdown)` or `Stata Dyndoc (LaTeX)` from the drop-down menu.

### Examples

An example of the PDF output of using `dyntext` and Pandoc is in the examples folder: [`dyntext.pdf`](examples/dyntext.pdf).

That file was created by running

```stata
dyntext dyntext.domd, saving(dyntext.md) replace
```
from inside Stata 15, and then with

```
pandoc dyntext.md -o dyntext.pdf
```

on the command line using [Pandoc](https://pandoc.org/).

The file [`dyntext.dotex`](examples/dyntext.dotex) is a proof-of-concept and should compile with LaTeX but the output is not shown here.

### Webdoc support

If you use the user-created command
[webdoc](http://repec.sowi.unibe.ch/stata/webdoc/getting-started.html), you can
add highlighting by using a `.dowd` file extension or by manually selecting the
language of the current file to be "Stata Webdoc".


#### Footnotes

<a name="myfootnote1">1</a>: The following code is legal Stata code, but Atom will confuse the `*` used as multiplication with the `*` used for a comment. So if your cursor is on the second line and you press <kbd>ctrl</kbd>+<kbd>/</kbd>, Atom will remove the `*` symbol and the semantic meaning of the multiplication will be lost. Thus using `// ` as the comment symbol is safer.

```stata
display 2 ///
  * 2
```
