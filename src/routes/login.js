const express = require("express");
const router = express.Router();

const logincontroller = require("../app/controllers/logincontroller");
const trangchucontroller = require("../app/controllers/trangchucontroller");

router.get("/", logincontroller.index);

router.post("/", logincontroller.login, trangchucontroller.index);

module.exports = router;
