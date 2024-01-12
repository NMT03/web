class lopController {
  // [get] /
  index(req, res) {
    res.render("lop");
  }
}

module.exports = new lopController();
