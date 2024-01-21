const express = require("express");
const router = express.Router();

const thuviencontroller = require("../app/controllers/thuviencontroller");

router.get("/", thuviencontroller.index);

module.exports = router;
