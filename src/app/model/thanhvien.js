const DB = require("./DBconnect");
const util = require("util");

DB.query = util.promisify(DB.query);

class thanhvien_qr {
  constructor() {
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
  }

  async get_user_data(ma_tv) {
    try {
      const sql = "SELECT * FROM thanh_vien WHERE ma_tv = ?";
      const sql_lop = "SELECT ten_lop FROM lop WHERE ma_lop = ?;";
      const result = await DB.query(sql, [ma_tv]);
      console.log(result[0]);
      this.user_data.ho_ten = result[0].ho_ten;
      this.user_data.gioi_tinh = result[0].gioi_tinh;
      this.user_data.nam_sinh = result[0].nam_sinh;
      this.user_data.doan_vien = result[0].doan_vien;
      this.user_data.vai_tro = result[0].vai_tro;
      this.user_data.sdt = result[0].sdt;
      this.user_data.email = result[0].email;
      this.user_data.nhat_ki = result[0].nhat_ki;
      const lop = await DB.query(sql_lop, [result[0].ma_lop]);
      this.user_data.lop = lop;
      return this.user_data; // Trả về dữ liệu
    } catch (error) {
      console.error("Lỗi khi truy xuất dữ liệu:", error);
      return null;
    }
  }
}

module.exports = thanhvien_qr;
