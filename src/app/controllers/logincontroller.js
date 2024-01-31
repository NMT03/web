const checklogin = require("../model/login");
const jwt = require("jsonwebtoken");
// const cookies = require("cookiesjs");

class logincontroller {
  //login
  index(req, res) {
    res.cookie("token_", "");
    res.render("login");
  }

  async login(req, res, next) {
    let tk = req.body.tk;
    let mk = req.body.mk;
    console.log(tk, mk);
    next();
  }

  check_per(req, res, next) {
    next();
  }
}

module.exports = new logincontroller();
