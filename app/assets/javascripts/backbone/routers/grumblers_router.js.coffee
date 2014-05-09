class GrumblrApp.Routers.GrumblersRouter extends Backbone.Router
  initialize: (options) ->
    @grumblers = new GrumblrApp.Collections.GrumblersCollection()
    @grumblers.reset options.grumblers

  routes:
    "new"      : "newGrumbler"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newGrumbler: ->
    @view = new GrumblrApp.Views.Grumblers.NewView(collection: @grumblers)
    $("#grumblers").html(@view.render().el)

  index: ->
    @view = new GrumblrApp.Views.Grumblers.IndexView(grumblers: @grumblers)
    $("#grumblers").html(@view.render().el)

  show: (id) ->
    grumbler = @grumblers.get(id)

    @view = new GrumblrApp.Views.Grumblers.ShowView(model: grumbler)
    $("#grumblers").html(@view.render().el)

  edit: (id) ->
    grumbler = @grumblers.get(id)

    @view = new GrumblrApp.Views.Grumblers.EditView(model: grumbler)
    $("#grumblers").html(@view.render().el)
