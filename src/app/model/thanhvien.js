const DB = require("./DBconnect");
const util = require("util");

DB.query = util.promisify(DB.query);

class thanhvien_qr {
  async get_user_data(ma_tv) {
    this.user_data = {
      ho_ten: "",
      gioi_tinh: "",
      nam_sinh: "",
      doan_vien: "",
      vai_tro: "",
      sdt: "",
      email: "",
      lop: "",
      nhat_ki: "",
    };
    try {
      const sql = "SELECT * FROM thanh_vien WHERE ma_tv = ?";
      const result = await DB.query(sql, [ma_tv]);
      //   console.log(result);
      // this.
    } catch (error) {
      console.error("Lỗi khi truy xuất dữ liệu:", error);
      return null;
    }
  }
}

module.exports = new thanhvien_qr();
