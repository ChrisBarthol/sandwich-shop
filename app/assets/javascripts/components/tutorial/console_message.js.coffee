@ConsoleMessage = React.createClass

  console: ->
    text = jQuery("#first-text-field").val()
    console.log(text)

  render: ->
    React.DOM.div
      className:"text-field text-center"
      React.DOM.input
        id: "first-text-field"
        type: 'text'
        className: 'text-input'
        onChange: @console
