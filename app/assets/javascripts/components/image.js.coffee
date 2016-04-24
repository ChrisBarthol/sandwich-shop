@Image = React.createClass
  getInitialState: ->
    image_path: @props.image
    debugger
    image: 'Thing'

  switchImage: ->
    @set(image_path, '/assets/Goosey-3.jpg')

  image: ->
    React.DOM.image
      src: @state.image_path

  render: ->
    React.DOM.div
      className:"image-scroller"
      @image
