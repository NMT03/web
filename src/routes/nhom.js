const express = require("express");
const router = express.Router();

const nhomcontroller = require("../app/controllers/nhomcontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, nhomcontroller.index);

module.exports = router;
