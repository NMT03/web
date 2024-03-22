const express = require("express");
const router = express.Router();

const thanhviencontroller = require("../app/controllers/thanhviencontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, thanhviencontroller.index);

module.exports = router;
