const checklogin = require("../model/login");
const jwt = require("jsonwebtoken");
// const cookies = require("cookiesjs");

class logincontroller {
  //login
  index(req, res) {
    res.cookie("token_", "");
    res.render("login");
  }

  async check_account(req, res, next) {
    let tk = req.body.tk;
    let mk = req.body.mk;
    console.log(tk, mk);
    try {
      await checklogin.checkAccount(tk, mk).catch(console.error);
      if (checklogin.per == 0) {
        res.render("login", { layout: "using", status: "chưa đăng nhập" });
      } else {
        let token = jwt.sign(
          { tk: tk, name: checklogin.username, per: checklogin.per },
          "03"
        );

        console.log("token:", token);

        if (checklogin.per != 0) {
          res.cookie("token_", token);
          res.render("trangchu", {
            layout: "using",
            status: checklogin.username,
          });
        }
      }
    } catch (err) {
      console.error("Có lỗi xảy ra:", err);
    }
  }

  check_per(req, res, next) {
    let token = req.cookies.token_;
    if (token == "") {
      res.render("login");
    } else {
      let user_infor = jwt.verify(token, "03");
      if (user_infor) {
        next();
      }
    }
  }
}

module.exports = new logincontroller();
