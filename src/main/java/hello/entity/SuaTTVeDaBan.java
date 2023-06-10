package hello.entity;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

public class SuaTTVeDaBan {

	private String maVe;

	@Pattern(regexp = "^0[0-9]{9}", message = "Số điện thoại phải là 10 sô!")
	private String soDienThoai;
	@NotBlank(message = "Vui long nhap Ho!")
	private String ho;
	@NotBlank(message = "Vui long nhap Ten!")
	private String tenKhachHang;
	private String diaChi;
	private String gioiTinh;
	private String dichVu;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngaySinh;

	public SuaTTVeDaBan() {
        super();
    }

	public SuaTTVeDaBan(String maVe, String soDienThoai, String ho, String tenKhachHang, String diaChi, String gioiTinh,
            String dichVu, LocalDate ngaySinh) {
        super();
        this.maVe = maVe;
        this.soDienThoai = soDienThoai;
        this.ho = ho;
        this.tenKhachHang = tenKhachHang;
        this.diaChi = diaChi;
        this.gioiTinh = gioiTinh;
        this.dichVu = dichVu;
        this.ngaySinh = ngaySinh;
    }

	public String getMaVe() {
		return maVe;
	}

	public void setMaVe(String maVe) {
		this.maVe = maVe;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDichVu() {
		return dichVu;
	}

	public void setDichVu(String dichVu) {
		this.dichVu = dichVu;
	}

	public LocalDate getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(LocalDate ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
}
