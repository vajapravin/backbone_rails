#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.GrumblrApp =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: -> 
  	new GrumblrApp.Routers.GrumblersRouter()
  	Backbone.history.start()

 $(document).ready ->
 	GrumblrApp.init()