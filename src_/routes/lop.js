const express = require("express");
const router = express.Router();

const lopcontroller = require("../app/controllers/lopcontroller");

router.get("/", lopcontroller.index);

module.exports = router;
