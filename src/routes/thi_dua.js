const express = require("express");
const router = express.Router();

const thiduacontroller = require("../app/controllers/thiduacontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, thiduacontroller.index);

module.exports = router;
