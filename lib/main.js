var functions = require('./functions.json');
var _ = require('lodash');

module.exports = {
  config: {
    autocomplete: {
      type: 'boolean',
      default: true,
      description: 'Use enhanced function autocompletion.'
    }
  },

  activate () {},
  provide() {
    if (atom.config.get("language-stata.autocomplete") === true) {
      return provider;
    }
    return null;
  }
};

const provider = {
  selector: ".source.stata",
  disableForSelector: ".comment",

  // `excludeLowerPriority: false` won't suppress providers with lower
  // priority.
  // The default provider has a priority of 0.
  inclusionPriority: 1,
  excludeLowerPriority: false,

  // suggestionPriority: 2,
  filterSuggestions: true,

  getSuggestions({
    editor,
    bufferPosition,
    prefix
  }) {
    const line = editor.getTextInBufferRange([
      [bufferPosition.row, 0],
      bufferPosition
    ]);

    // return if cursor is at whitespace
    if (prefix.trimRight().length < prefix.length) {
      return null;
    }

    // return if fewer characters typed than minimumWordLength
    let minimumWordLength = atom.config.get(
      "autocomplete-plus.minimumWordLength"
    );
    if (typeof minimumWordLength !== "number") {
      minimumWordLength = 3;
    }

    if (prefix.trim().length < minimumWordLength) {
      return null;
    }

    var matches = _.pickBy(functions, function(value, key) {
      return _.startsWith(key, prefix);
    });

    var test = _.map(_.toPairs(matches), d => _.fromPairs([d]));
    return _.map(test, x => ({
      text: _.keys(x)[0],
      type: 'function',
      descriptionMarkdown: _.values(x)[0],
      descriptionMoreURL: 'https://stata.com/help.cgi?f_' + _.keys(x)[0]
    }));
  },

  onDidInsertSuggestion ({editor, suggestion}) {
    if (suggestion.type === 'attribute') {
      setTimeout(this.triggerAutocomplete.bind(this, editor), 1)
    }
  },

  triggerAutocomplete (editor) {
    atom.commands.dispatch(
      editor.getElement(),
      'autocomplete-plus:activate',
      {activatedManually: false}
    )
  }
}
