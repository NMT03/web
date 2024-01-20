class logincontroller {
  //home
  index(req, res) {
    res.render("login");
  }
}

module.exports = new logincontroller();
