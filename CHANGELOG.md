# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

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
