const { TRUE } = require("node-sass");
const DB = require("./DBconnect");
const util = require("util");

DB.query = util.promisify(DB.query);

class check_acc {
  async checkAccount(tk, mk) {
    let sql =
      "SELECT * FROM `super_admin_acc` WHERE `ma_super_admin` = ? AND `pass` = ?";
    let results = await DB.query(sql, [tk, mk]);

    if (results.length > 0) {
      this.per = results[0].permission;
      this.username = "super_admin";
    } else {
      sql = "SELECT * FROM `normal_acc` WHERE `ma_tk` = ? AND `pass` = ?";
      results = await DB.query(sql, [tk, mk]);

      if (results.length > 0) {
        this.per = results[0].permission;
        sql = "SELECT ho_ten FROM thanh_vien WHERE ma_tv = ?";
        results = await DB.query(sql, [tk]);
        // console.log(results[0].ho_ten);
        this.username = results[0].ho_ten;
      } else {
        this.per = 0;
      }
    }
  }
}

module.exports = new check_acc();
