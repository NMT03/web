const express = require("express");
const morgan = require("morgan"); //Thư viện MORGAN giúp thể hiện các req, res
const handlebars = require("express-handlebars");//Thư viện template HANDLEBARS
const exp = require("constants");
const path = require("path");
// const route = require("./routes");
const bodyParser = require("body-parser");
const { log } = require("console");
var cookieParser = require("cookie-parser");


const app = express();
const port = 3000;

app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));


app.use(morgan("combined")); //Thiết lập thư viện morgan vào web
app.engine("handlebars", handlebars.engine()); //Thiết lập engine handlebars
app.set("view engine", "handlebars"); //Thiết lập view engine handlebars
app.set("views", path.join(__dirname, "resources\\views")); //Chỉnh sửa cấu hình đường dẫn

// Phân tích cú pháp cho dữ liệu application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));
// Phân tích cú pháp cho dữ liệu application/json
app.use(bodyParser.json());
// route(app);
app.listen(port);
console.log(port);

const route = (url='/', lout='using', hbar=url.slice(1)) =>{
    console.log(hbar);
    app.get(url, (req, res) => {
        res.render(hbar, {
            layout: `${lout}`
        })
    });
}

route("/", "main", "login")
route("/login", "main");
route("/trang_chu", "using");
route("/thanh_vien", "using");
route("/nhom", "using");
route("/lop", "using");
route("/thi_dua", "using");
route("/thu_vien", "using");
route("/gioi_thieu", "using");
route("/cap_nhat", "using");

app.post("/login", (req, res)=>{
    console.log(`GET account: ${req.body.tk} || pass: ${req.body.pass}`);
    res.render("trang_chu", {
        layout: "using",
    })
})