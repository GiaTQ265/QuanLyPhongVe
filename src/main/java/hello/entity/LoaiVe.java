package hello.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Range;

@Entity
public class LoaiVe {
	@Id
	@Pattern(regexp = "LV[0-9]{2}", message = "vui lòng nhập đúng định dạng LV**")
	private String maLoaiVe;

	@NotBlank(message = "Vui lòng không được để trống")
	@Column(columnDefinition = "Nvarchar(255)")
	private String tenLoaiVe;

	@NotNull(message = "Vui lòng không được để trống")
	@Range(min = 0, max = 5, message = "Vui lòng nhập trong khoảng 0-5")
	private Double heSoGia;

	@Column(columnDefinition = "int")
	private String trangThai;
	
	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "loaiVe")
	private Set<ThongTinVe> thongTinVes;

	public String getMaLoaiVe() {
		return maLoaiVe;
	}

	public void setMaLoaiVe(String maLoaiVe) {
		this.maLoaiVe = maLoaiVe;
	}

	public String getTenLoaiVe() {
		return tenLoaiVe;
	}

	public void setTenLoaiVe(String tenLoaiVe) {
		this.tenLoaiVe = tenLoaiVe;
	}

	public Double getHeSoGia() {
		return heSoGia;
	}

	public void setHeSoGia(Double heSoGia) {
		this.heSoGia = heSoGia;
	}

	public Set<ThongTinVe> getThongTinVes() {
		return thongTinVes;
	}

	public void setThongTinVes(Set<ThongTinVe> thongTinVes) {
		this.thongTinVes = thongTinVes;
	}



	public LoaiVe(@Pattern(regexp = "LV[0-9]{3}", message = "vui lòng nhập đúng định dạng LV***") String maLoaiVe,
			@NotBlank(message = "Vui lòng không được để trống") @Pattern(regexp = "^[A-Za-z ]*", message = "vui lòng nhập đúng định dạng") String tenLoaiVe,
			@NotNull(message = "Vui lòng không được để trống") @Range(min = 0, max = 5, message = "Vui lòng nhập trong khoảng 0-5") Double heSoGia,
			String trangThai, Set<ThongTinVe> thongTinVes) {
		super();
		this.maLoaiVe = maLoaiVe;
		this.tenLoaiVe = tenLoaiVe;
		this.heSoGia = heSoGia;
		this.trangThai = trangThai;
		this.thongTinVes = thongTinVes;
	}

	public LoaiVe() {
		super();
	}

}
