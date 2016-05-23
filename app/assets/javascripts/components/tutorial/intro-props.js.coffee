@IntroProps = React.createClass
  console: ->
    text = jQuery("#first-text-field").val()
    @setState(enteredText: text)

  render: ->
    React.DOM.div
      className:"wrapper"
      React.createElement('hr', {className: "main-hr"})
      React.DOM.div
        className:"main-content text-center"
        "Instead of defining an initial state in the component we can generalize and pass in any string
        we want as placeholder text.  Pass in another string for the input placeholder"
      React.createElement('hr', {className: "main-hr"})
      React.DOM.div
        className:"text-field text-center"
        React.DOM.input
          id: "first-text-field"
          type: 'text'
          placeholder: @props.text
          className: 'text-input'
          onChange: @console
      React.createElement('br')
      React.DOM.div
        className:"text-center"
        @props.text
