class thanhvienController {
  // [get] /
  index(req, res) {
    res.render("thanhvien");
  }
}

module.exports = new thanhvienController();
