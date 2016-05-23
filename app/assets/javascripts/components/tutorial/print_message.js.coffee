@PrintMessage = React.createClass
  getInitialState: ->
    enteredText: "Please enter some text"

  console: ->
    text = jQuery("#first-text-field").val()
    @setState(enteredText: text)

  _renderEnteredText: ->
    # place code here!

  render: ->
    React.DOM.div
      className:"wrapper"
      React.createElement('hr', {className: "main-hr"})
      React.DOM.div
        className:"main-content text-center"
        "Let's take this one step further. Refactor so that we dont need the initial state.
        Make the text change on enter rather than onchange."
      React.createElement('hr', {className: "main-hr"})
      React.DOM.div
        className:"text-field text-center"
        React.DOM.input
          id: "first-text-field"
          type: 'text'
          className: 'text-input'
          onChange: @console
      React.createElement('br')
      React.DOM.div
        className:"text-center"
        @state.enteredText
