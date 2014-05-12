class GrumblrApp.Routers.Grumbles extends Backbone.Router
	routes:
		'': 'index'

	initialize: ->
		@collection = new GrumblrApp.Collections.Grumbles()
		@collection.fetch()		

	index: ->
		view = new GrumblrApp.Views.GrumblesIndex(collection: @collection)
		$('.content').html(view.render().el)

	show: (id)->
		alert "Enter #{id}"