Hw3.TipsNewRoute = Ember.Route.extend({
  model: function() {
    return Hw3.Tip.createRecord();
  },

  setupController: function(controller, model) {
    controller.set('content', model);
  }
});
