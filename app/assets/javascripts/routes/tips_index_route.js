Hw3.TipsIndexRoute = Ember.Route.extend({
  model: function() {
    return Hw3.Tip.find();
  }
});
