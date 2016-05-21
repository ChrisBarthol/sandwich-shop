@RenderMethod = React.createClass

  render: ->
    React.DOM.div
      className:" wrapper first-component text-center"
      React.DOM.p
        className:"paragraph"
        "We define the name of the component with an @ symbol and set it to be defined
        as a new React Class."
      React.DOM.p
        className:"paragraph"
        "Every component must have a render method.  It is what gets rendered to the page.
        The render method can only render a single item so we usually define a wrapper div."
      React.DOM.p
        className:"paragraph"
        "In our view we can simple call our new component with:
        <%= react_component(\"One\") %>"
