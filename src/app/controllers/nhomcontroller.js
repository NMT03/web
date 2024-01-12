class nhomController {
  // [get] /
  index(req, res) {
    res.render("nhom");
  }
}

module.exports = new nhomController();
