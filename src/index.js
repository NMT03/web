const path = require("path");
const express = require("express");
const morgan = require("morgan");
const hbs = require("express-handlebars");
const exp = require("constants");
const app = express();
const port = 3000;
const route = require("./routes");
const bodyParser = require("body-parser");
const { log } = require("console");
var cookieParser = require("cookie-parser");
const XLSX = require("xlsx");

// // Đọc file Excel
// let workbook = XLSX.readFile("testfile.xlsx");

// // Chuyển đổi trang tính đầu tiên thành JSON
// let jsonData = XLSX.utils.sheet_to_json(
//   workbook.Sheets[workbook.SheetNames[1]]
// );

// console.log(jsonData);

app.use(cookieParser());

app.use(express.static(path.join(__dirname, "public")));
app.use(morgan("combined"));

app.engine("handlebars", hbs.engine());
app.set("view engine", "handlebars");
app.set("views", path.join(__dirname, "resources\\views"));

// Phân tích cú pháp cho dữ liệu application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// Phân tích cú pháp cho dữ liệu application/json
app.use(bodyParser.json());

route(app);

app.listen(port);

console.log(port);
