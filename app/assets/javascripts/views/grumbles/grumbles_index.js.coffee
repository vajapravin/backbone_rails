class GrumblrApp.Views.GrumblesIndex extends Backbone.View

	template: JST['grumbles/index']

	initialize: ->
		# @collection.on('add', this.addOne, this)
		@collection.on('remove', this.addAll, this)
		@collection.on('sync', this.addAll, this)

	events:
		'submit #new_grumble': 'addOne'
		'click .deleteGrumble': 'removeOne'

	render: ->
		$(@el).html(@template(grumbles: @collection))
		this

	addAll: ->
		$(@el).html(@template(grumbles: @collection))

	addOne: ->
		@collection.create author: $('#grumble_author').val(), content: $('#grumble_content').val(), title: $('#grumble_title').val(), image: $('#grumble_image').val(), avatar: $('#grumble_avatar').val()

	removeOne: (event) ->
		event.preventDefault()
		@collection.remove @collection.at(0)