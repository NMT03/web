class thuvienController {
  // [get] /
  index(req, res) {
    res.render("thuvien");
  }
}

module.exports = new thuvienController();
