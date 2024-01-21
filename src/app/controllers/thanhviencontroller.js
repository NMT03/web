const jwt = require("jsonwebtoken");
const thanhvien_Data = require("../model/thanhvien");

class thanhvienController {
  // [get] /
  index(req, res) {
    let token = req.cookies.token_;
    let user_infor = jwt.verify(token, "03");
thanhvien_Data.get_user_data(user_infor.tk)
    res.render("thanhvien", {
      layout: "using",
      status: user_infor.name,
    });
  }
}

module.exports = new thanhvienController();
