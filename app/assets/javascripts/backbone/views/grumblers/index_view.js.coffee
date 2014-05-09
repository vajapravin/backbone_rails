GrumblrApp.Views.Grumblers ||= {}

class GrumblrApp.Views.Grumblers.IndexView extends Backbone.View
  template: JST["backbone/templates/grumblers/index"]

  initialize: () ->
    @options.grumblers.bind('reset', @addAll)

  addAll: () =>
    @options.grumblers.each(@addOne)

  addOne: (grumbler) =>
    view = new GrumblrApp.Views.Grumblers.GrumblerView({model : grumbler})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(grumblers: @options.grumblers.toJSON() ))
    @addAll()

    return this
