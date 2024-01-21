const express = require("express");
const router = express.Router();

const DBcontroller = require("../app/controllers/DBcontroller");

router.get("/", DBcontroller.index);

module.exports = router;
