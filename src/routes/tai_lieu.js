const express = require("express");
const router = express.Router();

const tailieuController = require("../app/controllers/tailieucontroller");
const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.check_per, tailieuController.index);

module.exports = router;
