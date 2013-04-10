Hw3.User = DS.Model.extend({
  email: DS.attr('string'),
  admin: DS.attr('boolean'),
  password: DS.attr('string'),
  password_confirmation: DS.attr('string')
});

