package hello.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Entity
public class SanBay {

	@Id
	@Pattern(regexp = "^SB[0-9]{3}$")
	private String maSanBay;

	@NotBlank(message = "Tên sân bay không được để trống")
	@Column(columnDefinition = "Nvarchar(255)")
	private String tenSanBay;

	@NotBlank(message = "Địa điểm sân bay không được để trống")
	@Column(columnDefinition = "Nvarchar(255)")
	private String diaDiem;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "sanBayDi")
	private Set<TuyenBay> tuyenBayDis;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "sanBayDen")
	private Set<TuyenBay> tuyenBayDens;

	@Column(columnDefinition = "int")
	private String trangThai;

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getMaSanBay() {
		return maSanBay;
	}

	public void setMaSanBay(String maSanBay) {
		this.maSanBay = maSanBay;
	}

	public String getTenSanBay() {
		return tenSanBay;
	}

	public void setTenSanBay(String tenSanBay) {
		this.tenSanBay = tenSanBay;
	}

	public String getDiaDiem() {
		return diaDiem;
	}

	public void setDiaDiem(String diaDiem) {
		this.diaDiem = diaDiem;
	}

	public Set<TuyenBay> getTuyenBayDis() {
		return tuyenBayDis;
	}

	public void setTuyenBayDis(Set<TuyenBay> tuyenBayDis) {
		this.tuyenBayDis = tuyenBayDis;
	}

	public Set<TuyenBay> getTuyenBayDens() {
		return tuyenBayDens;
	}

	public void setTuyenBayDens(Set<TuyenBay> tuyenBayDens) {
		this.tuyenBayDens = tuyenBayDens;
	}

	public SanBay(@Pattern(regexp = "^SB[0-9]{3}$") String maSanBay,
			@NotBlank(message = "Tên sân bay không được để trống") String tenSanBay,
			@NotBlank(message = "Địa điểm sân bay không được để trống") String diaDiem, Set<TuyenBay> tuyenBayDis,
			Set<TuyenBay> tuyenBayDens, String trangThai) {
		super();
		this.maSanBay = maSanBay;
		this.tenSanBay = tenSanBay;
		this.diaDiem = diaDiem;
		this.tuyenBayDis = tuyenBayDis;
		this.tuyenBayDens = tuyenBayDens;
		this.trangThai = trangThai;
	}

	public SanBay() {
		super();
	}

}
