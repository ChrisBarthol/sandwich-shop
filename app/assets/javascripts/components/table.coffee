@Table=React.createClass
  getInitalState: ->
    data: @props.data

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
    jQuery.each @state.data, (i, ingredient) ->
      if substrRegex.test(ingredient.name)
        matches.push(ingredient)
    debugger
    @setState(data:matches)

  render: ->
    React.DOM.container
      className:"wrapper"
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
      React.DOM.input
        id: 'search-ingredients'
        type: 'text'
        className: 'search'
        onChange: @renderNewData
