const express = require("express");
const router = express.Router();

const gtcontroller = require("../app/controllers/gtcontroller");
const logincontroller = require("../app/controllers/logincontroller");


router.get("/",logincontroller.check_per, gtcontroller.index);

module.exports = router;
