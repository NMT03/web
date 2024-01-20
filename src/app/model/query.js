const DB = require("./DBconnect");

// DB.connect(function (err) {
//   if (err) console.log(err);
// });

class my_db {
  async get_data(SQL_statement_) {
    try {
      const results = await new Promise((resolve, reject) => {
        DB.query(SQL_statement_, (err, results, fields) => {
          if (err) reject("Error querying database: " + err);
          resolve(results);
        });
      });
      console.log("Results: ", results);
      this.data = results.map((row) => ({
        uname: String(row.uname),
        psw: String(row.psw),
      }));
    } catch (error) {
      console.error(error);
    }
  }
}

module.exports = new my_db();
