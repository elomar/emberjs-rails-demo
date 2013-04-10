Hw3.UsersNewController = Ember.ObjectController.extend({
  save: function() {
    this.content.addObserver('id', this, 'onSave');
    this.content.on('becameInvalid', this, 'onInvalid');
    this.store.commit();          
  },
 
  onSave: function() {
    this.content.removeObserver('id', this, 'onSave');
    this.transitionToRoute('tips.index');
  },

  onInvalid: function() {
    // find a better way to do this 
    alert('Invalid sign up information!');
  }
});
