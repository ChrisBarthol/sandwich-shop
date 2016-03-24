@Text = React.createClass

  console: ->
    text = jQuery("##{this.props.element}").val()
    console.log(text)

  render: ->
    React.DOM.div
      class:"text-field"
      React.DOM.input
        id: @props.element
        type: 'text'
        class: 'text-inpt'
        onChange: @console
