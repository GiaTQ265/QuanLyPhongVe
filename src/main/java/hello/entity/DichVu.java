package hello.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
public class DichVu {

	@Id
	@Pattern(regexp = "^DV[0-9]{3}", message = "Vui lòng nhập đúng định dạng VD: DV001")
	private String maDichVu;

	@NotBlank(message = "Vui lòng nhập thông tin!")
	@Column(columnDefinition = "Nvarchar(255)")
	private String tenDichVu;

	@NotNull(message = "Vui lòng nhập thông tin!")
	@Min(value = 1, message = "Giá phải lớn hơn 0!")
	private Integer giaDichVu;

	@Column(columnDefinition = "int")
	private String trangThai;
	
	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "dichVu")
	private Set<ThongTinVe> thongTinVes;

	public String getMaDichVu() {
		return maDichVu;
	}

	public void setMaDichVu(String maDichVu) {
		this.maDichVu = maDichVu;
	}

	public String getTenDichVu() {
		return tenDichVu;
	}

	public void setTenDichVu(String tenDichVu) {
		this.tenDichVu = tenDichVu;
	}

	public Integer getGiaDichVu() {
		return giaDichVu;
	}

	public void setGiaDichVu(Integer giaDichVu) {
		this.giaDichVu = giaDichVu;
	}

	public Set<ThongTinVe> getThongTinVes() {
		return thongTinVes;
	}

	public void setThongTinVes(Set<ThongTinVe> thongTinVes) {
		this.thongTinVes = thongTinVes;
	}



	public DichVu(@Pattern(regexp = "^DV[0-9]{3}", message = "Vui lòng nhập đúng định dạng VD: DV001") String maDichVu,
			@NotBlank(message = "Vui lòng nhập thông tin!") String tenDichVu,
			@NotNull(message = "Vui lòng nhập thông tin!") @Min(value = 1, message = "Giá phải lớn hơn 0!") Integer giaDichVu,
			String trangThai, Set<ThongTinVe> thongTinVes) {
		super();
		this.maDichVu = maDichVu;
		this.tenDichVu = tenDichVu;
		this.giaDichVu = giaDichVu;
		this.trangThai = trangThai;
		this.thongTinVes = thongTinVes;
	}

	public DichVu() {
		super();
	}

}
