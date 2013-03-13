Hw3.ApplicationRoute = Ember.Route.extend({
  setupController: function() {
    this.controllerFor('facts').set('model', Hw3.Fact.find());
  }
});
