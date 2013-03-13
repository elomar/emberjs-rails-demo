Hw3.Router.map(function() {
  this.route("map", { path : "/map" });
  this.resource("tips", function() {
    this.route("new");
  })
});
