const jwt = require("jsonwebtoken");

class tailieuController {
  // [get] /
  index(req, res) {
    let token = req.cookies.token_;
    // let user_infor = jwt.verify(token, "03");
    res.render("tai_lieu", {
      layout: "blank",
      // status: user_infor.name,
    });
  }
}

module.exports = new tailieuController();