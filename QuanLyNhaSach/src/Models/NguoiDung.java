/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author Chau Thinh
 */
public class NguoiDung {
    public int ND_ID;
    public String TenDangNhap;
    public String MatKhau;
    public String HoTen;
    public String Email;
    public String DiaChi;
    public Date NgaySinh;
    public String GioiTinh;

    public NguoiDung() {
    }

    
    public NguoiDung(int ND_ID, String TenDangNhap, String MatKhau, String HoTen, String Email, String DiaChi, Date NgaySinh, String GioiTinh) {
        this.ND_ID = ND_ID;
        this.TenDangNhap = TenDangNhap;
        this.MatKhau = MatKhau;
        this.HoTen = HoTen;
        this.Email = Email;
        this.DiaChi = DiaChi;
        this.NgaySinh = NgaySinh;
        this.GioiTinh = GioiTinh;
    }
    
    public String getTest() {
        return "ID: " + ND_ID + ", Tên đăng nhập: " + TenDangNhap + ", Mật khẩu: " + MatKhau + ", Họ tên: " + HoTen +
                ", Email: " + Email + ", Địa chỉ: " + DiaChi + ", Ngày sinh: " + NgaySinh.toString() + ", Giới tính: " + GioiTinh;
    }
}
