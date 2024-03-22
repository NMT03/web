const express = require("express");
const router = express.Router();

const capnhatttController = require("../app/controllers/capnhatttcontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, capnhatttController.index);

module.exports = router;
