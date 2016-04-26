@Table=React.createClass
  #@props.X are objects passed into the component.
  #@state.X is the current state of objects.  React monitors changes to @state
  #and re-renders sections of the DOM when @state changes.  State is not set
  #when the component loads.
  getInitialState: ->
    data: @props.data

  _renderColumnHeaders: ->
    #When looping through elements, React requires a unique key for each element
    #Check out the react ids in the DOM
    for header in @props.headers
      #React has a lot of html elements that it already knows.  You can pass in
      #elemnt options with a hash.  The last object is a string to be displayed.
      React.createElement 'th', {className:'col-xs-4', key:header}, header

  _renderData: ->
    #Only render the data in the state as it will change do to the search boxes
    for item in @state.data
      React.DOM.tr
        className: "col-xs-16 separated"
        key: item.id
        React.createElement 'td', {className:'col-xs-4'}, item.name
        React.createElement 'td', {className:'col-xs-4'}, item.description
        React.createElement 'td', {className:'col-xs-4'}, item.category

  #The following function monitors the search input and does a regex match
  #on the data that is passed into the component
  renderNewData: ->
    matches = []
    text = jQuery('#search-ingredients').val()
    substrRegex = new RegExp(text, 'i')
    jQuery.each @props.data, (i, ingredient) ->
      if substrRegex.test(ingredient.name)
        matches.push(ingredient)
    @setState(data:matches)

  renderSearchFields: ->
    React.DOM.div
      className:"container text-center"
      React.DOM.label
        className:"fake-class"
        "Search by Ingredient Name"
      React.DOM.br
        className:"fake-class"
      React.DOM.input
        id: 'search-ingredients'
        type: 'text'
        className: 'search'
        onChange: @renderNewData

  #The render function can only render only outter element (wrapper).  React
  #does not allow logic in the render method, but functions it call can.
  render: ->
    React.DOM.div
      className:"wrapper"
      #You can call functions here.  Easily separate out chuncks of code.
      @renderSearchFields()
      React.DOM.table
        className:"table"
        React.DOM.thead
          #React needs to have at least one element option declared or else it
          #renders it as a plain div even though you specified thead
          className:"fake-class"
          React.DOM.tr
            className:"col-xs-16 table-header"
            #Need to loop through the headers so we pull it out into a function
            @_renderColumnHeaders()
        React.DOM.tbody
          className:"fake-class"
          @_renderData()
