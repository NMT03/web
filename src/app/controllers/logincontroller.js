class logincontroller {
  //home
  index(req, res) {
    res.render("login");
  }
  posttest(req, res) {
    // let tk= req.body.
    res.json("post");
  }
}

module.exports = new logincontroller();
