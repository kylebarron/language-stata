module.exports = grammar({
  name: 'the_language_name',

  rules: {
    // The production rules of the context-free grammar
    source_file: $ => 'hello'
  }
});
