# Changelog

## [1.6.4] - upcoming

- Fix `foldEndPattern` in the settings to work better with Hydrogen
- Fix `merge` to not discolor everything after it when typing. Fixes #45
- Update snippets. Change `forv` to `forvalues`; `fore` to `foreach`. Change tabs to spaces.
- Fix global macro errors within strings; See #91.
- Attempt to color literal backticks better within strings.
- Fix `<</dd_do>>` not ending Stata block in dyndoc

## [1.6.3] - 2018-06-13

- Bug fix for using parentheses inside a local macro. See #90

## [1.6.2] - 2018-06-13

- Bugfixes for defining globals with extended functions

## [1.6.1] - 2018-06-13

- Bugfixes for `syntax` command

## [1.6.0] - 2018-06-11

- Update for Unicode identifiers. You should be able to use unicode anywhere it's legal now and have it be correctly colored. #84
- Fix bug with multiple expressions in parentheses. #46
- Fix comments inside locals, and fix comments inside globals used with `${...}`. #90
- Color macros better in list extended function. #75
- Allow macros within subscripts. #74 and #57

## [1.5.0] - 2018-06-11

- Make comment highlighting stubbornly accurate. See [this Statalist post](https://www.statalist.org/forums/forum/general-stata-discussion/general/1448244-understanding-stata-s-comment-hierarchy) for more information about how Stata highlights in practice, and [go here for an example](examples/comments.md).

## [1.4.1] - 2018-06-01

- Add note to README that language-latex and language-markdown must be installed for dynamic documents syntax highlighting to work

## [1.4.0] - 2018-06-01

- Update to highlight dynamic documents in Markdown and LaTeX
- Add more snippets (i.e. `if`, `else`, `program`)
- Add highlighting for Python-like docstrings in block comments

## [1.3.1] - 2018-02-26
- Don't alert for error around braces (`{}`) inside function calls

## [1.3.0] - 2017-12-06
- Add support for factor variables. Fixes #70
- Fix coloring for macro functions that take multiple new macros as arguments, i.e. `tempvar`, `tempfile`, and `tempname`. Fixes #71
- Add regex functions to autocomplete. Fixes #69
- Alert when variable labels are >80 characters. Fixes #72

## [1.2.8] - 2017-11-28
- Fix syntax command. Fixes #61
- Add some user-written commands. Fixes #64

## [1.2.7] - 2017-11-20
- allow there to be no spaces before = in gen command. Fixes https://github.com/kylebarron/language-stata/issues/59.

## [1.2.6] - 2017-11-18
- No changes

## [1.2.5] - 2017-11-18
- allow /* to start a comment block anywhere, not just after whitespace. Fixes https://github.com/kylebarron/language-stata/issues/55

## [1.2.4] - 2017-11-18
- Fix `gen` command
- Fix global macro coloring when using `\` as a path delimiter in strings. (i.e. `"$datadir\file.dta"`). Fixes [#52](https://github.com/kylebarron/language-stata/issues/52).
- Allow for markdown code block in strings to not apply "macro" tags in specific situations. Allows e.g. `di "```stata"` as long as there's no `'` character in the text. Fixes [#53](https://github.com/kylebarron/language-stata/issues/53).

## [1.2.3] - 2017-11-11
- Fix bugs created in 1.2.1
    - Namely, fix the list of macro reserved names

## [1.2.2] - 2017-11-11
- Fix bugs created in 1.2.1

## [1.2.1] - 2017-11-10
- Fix macro extended function bugs
- Add macro checking to `foreach` and `syntax`
- Restore name checking to `gen`
- Fix bug for brackets before comma in the `syntax` command
- Add `\` as an operator for use with matrices
- Allow functions to be embedded within subscripts

## [1.2.0] - 2017-11-03
- Color SQL queries used in the `odbc` command. (The `language-sql` base package must be active.)
- Regex bug fixes and enhancements:
  - Color parentheses forming capture groups
  - In regular `regexm()`, color as illegal any group starting with `*`, `?`, or `+`.
  - Color lookaheads and lookbehinds in `ustrregexm()`
  - Fix highlighting of enclosed functions in `regexm()` and `ustrregexm()`
- Standardize highlighting for `regress` and other "model commands". (Had been colored as _functions_, should be colored as _commands_.)

## [1.1.2] - 2017-10-12
- Color `==` as illegal in `replace var == 0`
- Fix `log` coloring so that `filename.log` isn't colored
- Bugfixes with `drop` and `keep` commands
- Allow embedded macros in extended macro functions
- Miscellaneous bugs fixed by adding `\\b` so that something like `if_yes` doesn't color `if`

## [1.1.1] - 2017-10-11
- Fixed bug where, e.g. only `label vari` was colored of `label variable ...`. There were many instances of code that could have been affected that were fixed.

## [1.1.0] - 2017-10-10
- Improved `syntax` command to correctly color across multiple lines. Solves https://github.com/kylebarron/language-stata/issues/19
- Colors extended macro functions inside local macros as well as during macro instantiation.
- Allow macros in `forvalues` loop statement, like ``forval i = `start_num' / `end_num' {``
- Allow for local and global macros within regular expression match strings
- Color `_all` as a constant
- Include Mata functions from old [atom-language-stata](https://github.com/benwhalley/atom-language-stata) package
- `drop` and `keep` alert you if you type `drop varlist if` or `drop varlist in`. (It's only legal to use `if` or `in` without a _varlist_).

## [1.0.4] - 2017-10-02
- Fix highlighting for global macro with braces inside loop
- Now the `}` line can only be colored as error if there's text on that line and if there's at least one space before the `}`.
- Remove some deprecated functions
- Turn off docblockr tag if appears immediately after word character
- Show error for `gen var == 5`

## [1.0.3] - 2017-10-02
- Fix comment bug created in 1.0.2.
  - Disallow star-comments inside block-comments

## [1.0.2] - 2017-10-02
- Fix bug to allow nested comment blocks
- Fix docblockr tag coloring

## [1.0.1] - 2017-10-01
- Fix `*regexr*()` functions to color regex before typing the second comma

## [1.0.0] - 2017-09-30
### Added
- Unicode regex support. This includes support for the entire (or at least most) of the ICU regex engine.
- Colors invalid escapes as illegal in the standard regex parser, like \w or \s.

### Fixed
- color regex functions within other functions
- Don't color as illegal the {} within the `spacebef` and `spaceaft` functions in the outreg package.

## [0.5.16] - 2017-09-22
### Added
- Autocomplete support in general for all words
- `gen` and `egen` now color a new tempvar as a macro. I.e.:
  ```
  tempvar new_variable
  gen `new_variable' = ...
  ```
- Now colors `@ERROR` and `@error` in comments as illegal/invalid
- Started CHANGELOG! Hopefully will go back and fill out previous revisions' edits.

### Fixed
- Regex highlighting error that colored capturing groups wrong
