package hello.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Range;

@Entity
public class MayBay {
	@Id
	@Pattern(regexp = "^MB[0-9]{3}$",message = "vui lòng nhập đúng định dạng : MB và 5 chữ số")
	private String maMayBay;
	
	@Column(columnDefinition = "Nvarchar(255)")
	private String tenMayBay;
	@Range(min = 1,message = "so luong ghế nhỏ nhất = 1")
	@NotNull(message = "không được để trống")
	private Integer soLuongGhe;
	@Range(min = 1,message = "so luong ghế nhỏ nhất = 1")
	@NotNull(message = "không được để trống")
	private Integer soLuongGheThuongGia;
	
	private String trangThai;
	
	@OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "mayBay")
	private Set<ChuyenBay> chuyenBays;

	public String getMaMayBay() {
		return maMayBay;
	}

	public void setMaMayBay(String maMayBay) {
		this.maMayBay = maMayBay;
	}

	public String getTenMayBay() {
		return tenMayBay;
	}

	public void setTenMayBay(String tenMayBay) {
		this.tenMayBay = tenMayBay;
	}

	public Integer getSoLuongGhe() {
		return soLuongGhe;
	}

	public void setSoLuongGhe(Integer soLuongGhe) {
		this.soLuongGhe = soLuongGhe;
	}

	public Integer getSoLuongGheThuongGia() {
		return soLuongGheThuongGia;
	}

	public void setSoLuongGheThuongGia(Integer soLuongGheThuongGia) {
		this.soLuongGheThuongGia = soLuongGheThuongGia;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public Set<ChuyenBay> getChuyenBays() {
		return chuyenBays;
	}

	public void setChuyenBays(Set<ChuyenBay> chuyenBays) {
		this.chuyenBays = chuyenBays;
	}

	public MayBay(String maMayBay, String tenMayBay, Integer soLuongGhe, Integer soLuongGheThuongGia, String trangThai,
			Set<ChuyenBay> chuyenBays) {
		super();
		this.maMayBay = maMayBay;
		this.tenMayBay = tenMayBay;
		this.soLuongGhe = soLuongGhe;
		this.soLuongGheThuongGia = soLuongGheThuongGia;
		this.trangThai = trangThai;
		this.chuyenBays = chuyenBays;
	}

	public MayBay() {
		super();
	}
	
	
}
