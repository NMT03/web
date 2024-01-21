const express = require("express");
const router = express.Router();

const nhomcontroller = require("../app/controllers/nhomcontroller");

router.get("/", nhomcontroller.index);

module.exports = router;
