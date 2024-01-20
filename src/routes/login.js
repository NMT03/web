const express = require("express");
const router = express.Router();

const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.index);

module.exports = router;
