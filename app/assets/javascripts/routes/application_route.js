Hw3.ApplicationRoute = Ember.Route.extend({
  setupController: function() {
    this.controllerFor('facts').set('model', Hw3.Fact.find());
    this.controllerFor('facts.new').set('content', Hw3.Fact.createRecord());
  }
});
