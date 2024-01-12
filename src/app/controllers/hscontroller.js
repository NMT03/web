class hsController {
  // [get] /
  index(req, res) {
    res.render("hs");
  }
}

module.exports = new hsController();
