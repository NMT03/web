class logincontroller {
  //home
  index(req, res) {
    res.render("login");
  }
  posttest(req, res) {
    res.json("post");
  }
}

module.exports = new logincontroller();
