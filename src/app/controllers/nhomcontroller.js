const jwt = require("jsonwebtoken");

class nhomController {
  // [get] /
  index(req, res) {
    let token = req.cookies.token_;
    // let user_infor = jwt.verify(token, "03");
    res.render("nhom", {
      layout: "using",
      // status: user_infor.name,
    });
  }
}

module.exports = new nhomController();
