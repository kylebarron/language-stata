# Changelog

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
- 