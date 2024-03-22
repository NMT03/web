const jwt = require("jsonwebtoken");

class gtcontroller {
  //home
  index(req, res) {
    let token = req.cookies.token_;
    // let user_infor = jwt.verify(token, "03");
    res.render("gioi_thieu", {
      layout: "using",
      // status: user_infor.name,
    });
  }
}

module.exports = new gtcontroller();
