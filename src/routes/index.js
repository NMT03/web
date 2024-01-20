const trangchurouter = require("./trangchu");
const loginrouter = require("./login");
const hsrouter = require("./hs");
const loprouter = require("./lop");
const nhomrouter = require("./nhom");
const thuvienrouter = require("./thuvien");
const DBrouter = require("./DB");
const gtrouter = require("./gioithieu");

function route(app) {
  app.use("/trang_chu", trangchurouter);

  app.use("/thanh_vien", hsrouter);

  app.use("/lop", loprouter);

  app.use("/nhom", nhomrouter);

  app.use("/thu_vien", thuvienrouter);

  app.use("/login", loginrouter);

  app.use("/gioi_thieu", gtrouter);

  app.use("/DB", DBrouter);

  app.use("/login", loginrouter);

  app.use("/", loginrouter);
}

module.exports = route;
