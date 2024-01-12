const express = require("express");
const router = express.Router();

const hscontroller = require("../app/controllers/hscontroller");

router.get("/", hscontroller.index);

module.exports = router;
