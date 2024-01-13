const trangchurouter = require("./trangchu");
const homerouter = require("./home");
const hsrouter = require("./hs");
const loprouter = require("./lop");
const nhomrouter = require("./nhom");
const thuvienrouter = require("./thuvien");
const DBrouter = require("./DB");

function route(app) {
  app.use("/trangchu", trangchurouter);

  app.use("/thong_tin_hs", hsrouter);

  app.use("/thong_tin_lop", loprouter);

  app.use("/thong_tin_clb", nhomrouter);

  app.use("/thu_vien", thuvienrouter);

  app.use("/DB", DBrouter);

  app.use("/", homerouter);
}

module.exports = route;
