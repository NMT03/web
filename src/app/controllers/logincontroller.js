const check = require("../model/login");

class logincontroller {
  //home
  index(req, res) {
    res.render("login", { b: false });
  }
  async check_account(req, res, next) {
    let tkad = req.body.tkad;
    let tk = req.body.tk;
    let mk = req.body.mk;
    console.log(tk, mk);
    try {
      await check.check_super_admin(tk, mk);
      console.log(check.ok);
      if (check.ok) {
        res.render("hs");
      } else {
        res.redirect("login");
      }
    } catch (err) {
      // Xử lý lỗi
      console.error("Có lỗi xảy ra:", err);
    }
  }
}

module.exports = new logincontroller();
