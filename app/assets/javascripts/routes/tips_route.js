Hw3.TipsRoute = Ember.Route.extend({
  model: function() {
    return Hw3.Tip.find();
  }
});
