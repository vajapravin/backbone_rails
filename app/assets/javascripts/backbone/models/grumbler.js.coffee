class GrumblrApp.Models.Grumbler extends Backbone.Model
  paramRoot: 'grumbler'

  defaults:

class GrumblrApp.Collections.GrumblersCollection extends Backbone.Collection
  model: GrumblrApp.Models.Grumbler
  url: '/grumblers'
