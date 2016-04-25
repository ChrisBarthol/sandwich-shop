@Search = React.createClass
  getInitialstate: ->
    ingredients: @props.data

  _ingredientNames: =>
    names=[]
    jQuery.each @props.data, (i, ingredient) ->
      names.push ingredient.name
    return names

  _stringMatcher: (data) ->
    matches = []
    text = jQuery('#typeahead-ingredients').val()
    debugger
    substrRegex = new RegExp(text, 'i')
    jQuery.each data, (i, str) ->
      if substrRegex.test(str)
        matches.push(str)
    return matches

  console: ->
    matches = []
    text = jQuery('#typeahead-ingredients').val()
    substrRegex = new RegExp(text, 'i')
    jQuery.each @props.data, (i, ingredient) ->
      if substrRegex.test(ingredient.name)
        matches.push(ingredient)
    debugger
    return matches

  render: ->
    React.DOM.div
      className:"text-field"
      React.DOM.label
        className:"fake-class"
        label: 'Search Ingredient Names'
      React.DOM.input
        id: 'typeahead-ingredients'
        type: 'text'
        className: 'typeahead'
        onChange: @console
