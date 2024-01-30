const { TRUE } = require("node-sass");
const DB = require("./DBconnect");
const util = require("util");

DB.query = util.promisify(DB.query);

class check_acc {}

module.exports = new check_acc();
