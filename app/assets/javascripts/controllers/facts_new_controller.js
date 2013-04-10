Hw3.FactsNewController = Ember.ObjectController.extend({
  save: function() {
    this.content.addObserver('id', this, 'onSave');
    this.content.on('becameInvalid', this, 'onInvalid');
    this.store.commit();          
  },
 
  onSave: function() {
    this.set('content', Hw3.Fact.createRecord());
  },

  onInvalid: function() {
    // find a better way to do this 
    $('.errors').fadeIn();
  }
});
