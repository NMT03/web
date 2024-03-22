const express = require("express"); // Sử dụng framework Express.js cho server-side development
const morgan = require("morgan"); // Sử dụng thư viện Morgan để ghi log các request và response
const handlebars = require("express-handlebars"); // Sử dụng thư viện handlebars để render template HTML
const path = require("path"); // Sử dụng module 'path' để thao tác với đường dẫn file
const bodyParser = require("body-parser"); // Sử dụng middleware bodyParser để parse dữ liệu từ body request
const cookieParser = require("cookie-parser"); // Sử dụng middleware cookieParser để parse cookie từ request


const app = express();
const port = 3000;

// Sử dụng middleware cookieParser để xử lý cookie
app.use(cookieParser());

// Sử dụng middleware express.static để phục vụ file tĩnh từ thư mục "public"
app.use(express.static(path.join(__dirname, "public")));

// Sử dụng middleware morgan để ghi log truy cập HTTP theo định dạng "combined"
app.use(morgan("combined"));

// Cấu hình Handlebars:
// - Đăng ký engine Handlebars với tên "handlebars"
app.engine("handlebars", handlebars.engine());
// - Thiết lập Handlebars là view engine mặc định
app.set("view engine", "handlebars");
// - Thiết lập thư mục mặc định cho template Handlebars
app.set("views", path.join(__dirname, "resources\\views"));

// Sử dụng middleware bodyParser để xử lý dữ liệu POST:
// - Xử lý dữ liệu POST dạng "application/x-www-form-urlencoded"
app.use(bodyParser.urlencoded({ extended: true }));
// - Xử lý dữ liệu POST dạng "application/json"
app.use(bodyParser.json());

// Khai báo các route cho ứng dụng (được bình luận)
// // route(app);

// Khởi động ứng dụng trên port đã khai báo
app.listen(port);
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