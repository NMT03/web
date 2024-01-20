const express = require("express");
const router = express.Router();

const logincontroller = require("../app/controllers/logincontroller");

router.get("/", logincontroller.index);

router.post("/", logincontroller.posttest);

module.exports = router;
