package hello.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class ThongTinTaiKhoan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maTTTaiKhoan;

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

	private String email;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "soDienThoai")
	private TaiKhoan taiKhoan;

	public Integer getMaTTTaiKhoan() {
		return maTTTaiKhoan;
	}

	public void setMaTTTaiKhoan(Integer maTTTaiKhoan) {
		this.maTTTaiKhoan = maTTTaiKhoan;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public ThongTinTaiKhoan(Integer maTTTaiKhoan, @NotBlank(message = "vui long nhap Ho") String ho,
			@NotBlank(message = "vui long nhap Ten") String ten,
			@NotBlank(message = "vui long chon gioi tinh") String gioiTinh, String diaChi, LocalDate ngaySinh,
			String email, TaiKhoan taiKhoan) {
		super();
		this.maTTTaiKhoan = maTTTaiKhoan;
		this.ho = ho;
		this.ten = ten;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.ngaySinh = ngaySinh;
		this.email = email;
		this.taiKhoan = taiKhoan;
	}

	public ThongTinTaiKhoan() {
		super();
	}

}
