const { TRUE } = require("node-sass");
const DB = require("./DBconnect");

class check_acc {
  async check_super_admin(tk, mk) {
    let sql =
      "SELECT * FROM `super_admin_acc` WHERE `ma_super_admin` = ? AND `pass` = ?";
    try {
      const results = await new Promise((resolve, reject) => {
        DB.query(sql, [tk, mk], function (err, results) {
          if (err) {
            reject(err);
          } else {
            resolve(results);
          }
        });
      });
      if (results.length == 0) {
        this.ok = 0;
      } else {
        this.ok = 1;
      }
    } catch (err) {
      // Xử lý lỗi
      console.error("Có lỗi xảy ra:", err);
    }
  }
  async check_admin(tkad, tk, mk) {
    let sql =
      "SELECT * FROM `admin_acc` WHERE `ma_super_admin` = ? AND `pass` = ?";
    try {
      const results = await new Promise((resolve, reject) => {
        DB.query(sql, [tk, mk], function (err, results) {
          if (err) {
            reject(err);
          } else {
            resolve(results);
          }
        });
      });
      if (results.length == 0) {
        this.ok = false;
      } else {
        this.ok = true;
      }
    } catch (err) {
      // Xử lý lỗi
      console.error("Có lỗi xảy ra:", err);
    }
  }
}

module.exports = new check_acc();
