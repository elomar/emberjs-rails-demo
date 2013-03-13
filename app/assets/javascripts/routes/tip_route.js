Hw3.TipRoute = Ember.Route.extend({
  model: function() {
    return Hw3.Tip.find();
  }
});
