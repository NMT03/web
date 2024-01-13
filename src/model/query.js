const DB = require("./DBconnect");

DB.connect(function (err) {
  if (err) console.log(err);
});

// class get_data {
//   getData(SQL_statement) {
//     const promise = new Promise((resolve, reject) => {
//       DB.query(SQL_statement, function (err, result, fields) {
//         if (err) {
//           reject(err);
//         } else {
//           resolve(result);
//         }
//       });
//     });
//     promise
//       .then((Data) => {
//         this.data = Data.map((row) => {
//           return {
//             uname: String(row.uname),
//             psw: String(row.psw),
//           };
//         });
//         // console.log(this.data.uname);
//       })
//       .catch((err) => {
//         console.error("Error querying database: ", err);
//       });
//   }
// }
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
// let SQL_statement_ = "SELECT * FROM nick";

// DB.end();

module.exports = new my_db();
