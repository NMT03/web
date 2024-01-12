const express = require("express");
const router = express.Router();

const trangchucontroller = require("../app/controllers/trangchucontroller");

router.get("/", trangchucontroller.index);

module.exports = router;
