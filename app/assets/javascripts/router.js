Hw3.Router.map(function() {
  this.route("map");
  this.route("pictures");
  this.resource("tips", function() {
    this.route("new");
  });
  this.resource("users", function() {
    this.route("new");
  });
});
