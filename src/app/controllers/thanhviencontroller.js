const jwt = require("jsonwebtoken");
const Data_ = require("../model/thanhvien");
const Data = new Data_();

class thanhvienController {
  // [get] /
  async index(req, res) {
    let token = req.cookies.token_;
    // let user_infor = jwt.verify(token, "03");
    // const userData = await Data.get_user_data(user_infor.tk);
    res.render("thanhvien", {
      layout: "using",
      // status: user_infor.name,
      // userData,
    });
    // console.log(userData);
  }
}

module.exports = new thanhvienController();