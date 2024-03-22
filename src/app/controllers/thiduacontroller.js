const jwt = require("jsonwebtoken");

class thiduaController {
  // [get] /
  index(req, res) {
    let token = req.cookies.token_;
    // let user_infor = jwt.verify(token, "03");
    res.render("thi_dua", {
      layout: "using",
      // status: user_infor.name,
    });
  }
}

module.exports = new thiduaController();
