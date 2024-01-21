class TrangChuController {
  // [get] /
  index(req, res) {
    res.render("trangchu");
  }
}

module.exports = new TrangChuController();
