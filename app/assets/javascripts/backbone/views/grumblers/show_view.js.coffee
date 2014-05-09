GrumblrApp.Views.Grumblers ||= {}

class GrumblrApp.Views.Grumblers.ShowView extends Backbone.View
  template: JST["backbone/templates/grumblers/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
