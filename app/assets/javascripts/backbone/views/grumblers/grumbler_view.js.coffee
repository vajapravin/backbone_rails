GrumblrApp.Views.Grumblers ||= {}

class GrumblrApp.Views.Grumblers.GrumblerView extends Backbone.View
  template: JST["backbone/templates/grumblers/grumbler"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
