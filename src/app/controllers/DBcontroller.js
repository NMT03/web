const DB = require("../../model/DBconnect");
const db = require("../../model/query");

class DBController {
  async index(req, res) {
    try {
      await db.get_data("SELECT * FROM nick");
      res.json(db.data[2].uname);
    } catch (err) {
      console.error(err);
      res.status(500).send("Internal Server Error");
    }
  }
}

module.exports = new DBController();
