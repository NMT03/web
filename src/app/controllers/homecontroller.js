class homecontroller {
  //home
  index(req, res) {
    res.render("home");
  }
}

module.exports = new homecontroller();
