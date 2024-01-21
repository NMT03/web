const express = require("express");
const router = express.Router();

const thanhviencontroller = require("../app/controllers/thanhviencontroller");

router.get("/", thanhviencontroller.index);

module.exports = router;
