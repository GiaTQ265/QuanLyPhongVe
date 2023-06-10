package hello.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

@Entity
public class TaiKhoan {
	
	@Id
	@Pattern(regexp = "^0[0-9]{9}$", 
	message = "Sai định dạng. Vui lòng nhập số điện thoại của ban!")
	private String soDienThoai;

	@Pattern(regexp = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*=+]).{8,}$", 
		message = "Mật khẩu phải có ít nhất 8 ký tự gồm chữ hoa, chữ thường, số và ký tự đặc biệt!!")
	private String matKhau;

	private String vaiTro;
	
	private String trangThai;

	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "taiKhoan")
	private ThongTinTaiKhoan thongTinTaiKhoan;

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(String vaiTro) {
		this.vaiTro = vaiTro;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public ThongTinTaiKhoan getThongTinTaiKhoan() {
		return thongTinTaiKhoan;
	}

	public TaiKhoan(String soDienThoai, String matKhau, String vaiTro, String trangThai) {
		super();
		this.soDienThoai = soDienThoai;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
		this.trangThai = trangThai;
	}

	public TaiKhoan() {
		super();
	}

}
