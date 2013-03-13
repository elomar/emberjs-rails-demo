Hw3.PicturesRoute = Ember.Route.extend({
  model: function() {
    return Hw3.Picture.find();
  }
});
