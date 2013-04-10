Hw3.UsersNewRoute = Ember.Route.extend({
  model: function() {
    return Hw3.User.createRecord();
  },

  setupController: function(controller, model) {
    controller.set('content', model);
  }
});

