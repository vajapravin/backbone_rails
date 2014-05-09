GrumblrApp.Views.Grumblers ||= {}

class GrumblrApp.Views.Grumblers.EditView extends Backbone.View
  template : JST["backbone/templates/grumblers/edit"]

  events :
    "submit #edit-grumbler" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (grumbler) =>
        @model = grumbler
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
