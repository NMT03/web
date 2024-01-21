const jwt = require("jsonwebtoken");

class thuvienController {
  // [get] /
  index(req, res) {
    let token = req.cookies.token_;
    let user_infor = jwt.verify(token, "03");
    res.render("thuvien", {
      layout: "using",
      status: user_infor.name,
    });
  }
}

module.exports = new thuvienController();
