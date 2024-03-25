const trangchurouter = require("./trangchu");
const loginrouter = require("./login");
const thanhvienrouter = require("./thanhvien");
const loprouter = require("./lop");
const nhomrouter = require("./nhom");
const thuvienrouter = require("./thuvien");
const DBrouter = require("./DB");
const gtrouter = require("./gioithieu");
const capnhatrouter = require("./cap_nhat");
const thiduarouter = require("./thi_dua");
const tailieurouter = require("./tai_lieu");

function route(app) {
  app.use("/trang_chu", trangchurouter);

  app.use("/thanh_vien", thanhvienrouter);

  app.use("/lop", loprouter);

  app.use("/nhom", nhomrouter);

  app.use("/thu_vien", thuvienrouter);

  app.use("/tai_lieu", tailieurouter);

  app.use("/gioi_thieu", gtrouter);

  app.use("/cap_nhat", capnhatrouter);

  app.use("/thi_dua", thiduarouter);

  // app.use("/DB", DBrouter);

  app.use("/login", loginrouter);

  app.use("/", loginrouter);
}

module.exports = route;
