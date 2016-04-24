@Text = React.createClass

  console: ->
    text = jQuery("##{this.props.element}").val()
    console.log(text)

  render: ->
    React.DOM.div
      className:"text-field"
      React.DOM.label
        @props.label
      React.DOM.input
        id: @props.element
        type: 'text'
        className: 'text-input'
        onChange: @console
