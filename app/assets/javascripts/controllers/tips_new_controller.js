Hw3.TipsNewController = Ember.ObjectController.extend({
  save: function() {
    this.content.addObserver('id', this, 'onSave');
    this.content.on('becameInvalid', this, 'onInvalid');
    this.store.commit();          
  },
 
  cancel: function() {
    this.content.deleteRecord();
    this.transitionToRoute('tips.index');
  },

  onSave: function() {
    this.content.removeObserver('id', this, 'onSave');
    this.transitionToRoute('tips.index');
  },

  onInvalid: function() {
    // find a better way to do this 
    $('.errors').fadeIn();
  }
});
