class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<img width="120px" height="167px" src="img/cards/<%=rankName%>-<%=suitName%>.png"/>'
  #template: _.template '<%=rankName%> of <%=suitName%>'
  initialize: ->
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    # @el.removeClass 'card' if @model.get
    @$el.addClass 'covered' unless @model.get 'revealed'

