const express = require("express");
const router = express.Router();

const thuviencontroller = require("../app/controllers/thuviencontroller");
const logincontroller = require("../app/controllers/logincontroller");


router.get("/", logincontroller.check_per,thuviencontroller.index);

module.exports = router;
