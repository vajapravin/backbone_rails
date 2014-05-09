var Grumblr = Backbone.Model.extend({
	constructor: function() {
		this.books = new GrumblrModel();
		Backbone.Model.apply(this, arguments);
	}
});