@Table=React.createClass
  getInitialState: ->
    ata: @props.data

  _renderColumnHeaders: ->
    for header in @props.headers
      React.createElement 'th', {className:'col-xs-4', key:header}, header

  _renderData: ->
    for item in @state.data
      React.DOM.tr
        className: "col-xs-16 separated"
        key: item.id
        React.createElement 'td', {className:'col-xs-4'}, item.name
        React.createElement 'td', {className:'col-xs-4'}, item.description
        React.createElement 'td', {className:'col-xs-4'}, item.category

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

  render: ->
    React.DOM.div
      className:"wrapper"
      @renderSearchFields()
      React.DOM.table
        className:"table"
        React.DOM.thead
          className:"fake-class"
          React.DOM.tr
            className:"col-xs-16 table-header"
            @_renderColumnHeaders()
        React.DOM.tbody
          className:"fake-class"
          @_renderData()
