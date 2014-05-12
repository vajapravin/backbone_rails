window.GrumblrApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new GrumblrApp.Routers.Grumbles()
  	Backbone.history.start()

$(document).ready ->
  GrumblrApp.initialize()
