Hw3.AuthSignOutView = Ember.View.extend
  templateName: 'auth/sign-out'

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Auth.signOut()
