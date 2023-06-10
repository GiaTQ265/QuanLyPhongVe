package hello.entity;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class KhachHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maKhachHang;

	@Column(name = "ho", columnDefinition = "nvarchar(255)", nullable = false)
	@NotBlank(message = "vui long nhap Ho")
	private String ho;

	@Column(name = "ten", columnDefinition = "nvarchar(255)", nullable = false)
	@NotBlank(message = "vui long nhap Ten")
	private String ten;

	@Column(name = "gioiTinh", columnDefinition = "nvarchar(255)", nullable = false)
	@NotBlank(message = "vui long chon gioi tinh")
	private String gioiTinh;

	private String diaChi;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngaySinh;

	@Column(columnDefinition = "nvarchar(255)", nullable = false)
	@NotBlank(message = "vui long nhap So Dien Thoai")
	private String soDienThoai;

	private String email;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "khachHang")
	private Set<ThongTinVe> thongTinVes;

	public Integer getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(Integer maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public LocalDate getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(LocalDate ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<ThongTinVe> getThongTinVes() {
		return thongTinVes;
	}

	public void setThongTinVes(Set<ThongTinVe> thongTinVes) {
		this.thongTinVes = thongTinVes;
	}

	public KhachHang(Integer maKhachHang, @NotBlank(message = "vui long nhap Ho") String ho,
			@NotBlank(message = "vui long nhap Ten") String ten,
			@NotBlank(message = "vui long chon gioi tinh") String gioiTinh, String diaChi, LocalDate ngaySinh,
			@NotBlank(message = "vui long nhap So Dien Thoai") String soDienThoai, String email,
			Set<ThongTinVe> thongTinVes) {
		super();
		this.maKhachHang = maKhachHang;
		this.ho = ho;
		this.ten = ten;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.ngaySinh = ngaySinh;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.thongTinVes = thongTinVes;
	}

	public KhachHang() {
		super();
	}

}
