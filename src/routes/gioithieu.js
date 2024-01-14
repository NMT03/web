const express = require("express");
const router = express.Router();

const gtcontroller = require("../app/controllers/gtcontroller");

router.get("/", gtcontroller.index);

module.exports = router;
