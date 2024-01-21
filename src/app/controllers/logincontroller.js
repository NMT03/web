const checklogin = require("../model/login");
const jwt = require("jsonwebtoken");
// const cookies = require("cookiesjs");

class logincontroller {
  //home
  index(req, res) {
    res.render("login");
  }

  async check_account(req, res, next) {
    // let tkad = req.body.tkad;
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
        console.log(jwt.verify(token, "03"));
        console.log(token);
        console.log("cookie:", req.cookies);
        if (checklogin.per == 3) {
          res.render("login", { layout: "using", status: checklogin.username });
        } else {
          res.render("login", {
            layout: "using",
            status: checklogin.username,
          });
        }
        // res.json(token);
      }
    } catch (err) {
      // Xử lý lỗi
      console.error("Có lỗi xảy ra:", err);
    }
  }
}

module.exports = new logincontroller();
