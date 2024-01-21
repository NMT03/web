const express = require("express");
const router = express.Router();

const trangchucontroller = require("../app/controllers/trangchucontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, trangchucontroller.index);

module.exports = router;
