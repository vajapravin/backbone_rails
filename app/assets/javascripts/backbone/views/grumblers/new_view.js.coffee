GrumblrApp.Views.Grumblers ||= {}

class GrumblrApp.Views.Grumblers.NewView extends Backbone.View
  template: JST["backbone/templates/grumblers/new"]

  events:
    "submit #new-grumbler": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (grumbler) =>
        @model = grumbler
        window.location.hash = "/#{@model.id}"

      error: (grumbler, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
