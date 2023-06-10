package hello.entity;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class ChuyenBay {

	@Id
	private String maChuyenBay;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maTuyenBay")
	private TuyenBay tuyenBay;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maMayBay")
	private MayBay mayBay;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngayKhoiHanh;

	@DateTimeFormat(pattern = "HH:mm")
	private LocalTime gioKhoiHanh;

	private Integer thoiGianBayDuKien;

	private Integer giaChuyenBay;

	@Column(columnDefinition = "int")
	private String trangThai;

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "chuyenBay")
	private Set<ThongTinVe> thongTinVes;

	public String getMaChuyenBay() {
		return maChuyenBay;
	}

	public void setMaChuyenBay(String maChuyenBay) {
		this.maChuyenBay = maChuyenBay;
	}

	public TuyenBay getTuyenBay() {
		return tuyenBay;
	}

	public void setTuyenBay(TuyenBay tuyenBay) {
		this.tuyenBay = tuyenBay;
	}

	public MayBay getMayBay() {
		return mayBay;
	}

	public void setMayBay(MayBay mayBay) {
		this.mayBay = mayBay;
	}

	public LocalDate getNgayKhoiHanh() {
		return ngayKhoiHanh;
	}

	public void setNgayKhoiHanh(LocalDate ngayKhoiHanh) {
		this.ngayKhoiHanh = ngayKhoiHanh;
	}

	public LocalTime getGioKhoiHanh() {
		return gioKhoiHanh;
	}

	public void setGioKhoiHanh(LocalTime gioKhoiHanh) {
		this.gioKhoiHanh = gioKhoiHanh;
	}

	public Integer getThoiGianBayDuKien() {
		return thoiGianBayDuKien;
	}

	public void setThoiGianBayDuKien(Integer thoiGianBayDuKien) {
		this.thoiGianBayDuKien = thoiGianBayDuKien;
	}

	public Integer getGiaChuyenBay() {
		return giaChuyenBay;
	}

	public void setGiaChuyenBay(Integer giaChuyenBay) {
		this.giaChuyenBay = giaChuyenBay;
	}

	public Set<ThongTinVe> getThongTinVes() {
		return thongTinVes;
	}

	public void setThongTinVes(Set<ThongTinVe> thongTinVes) {
		this.thongTinVes = thongTinVes;
	}



	public ChuyenBay(String maChuyenBay, TuyenBay tuyenBay, MayBay mayBay, LocalDate ngayKhoiHanh,
			LocalTime gioKhoiHanh, Integer thoiGianBayDuKien, Integer giaChuyenBay, String trangThai,
			Set<ThongTinVe> thongTinVes) {
		super();
		this.maChuyenBay = maChuyenBay;
		this.tuyenBay = tuyenBay;
		this.mayBay = mayBay;
		this.ngayKhoiHanh = ngayKhoiHanh;
		this.gioKhoiHanh = gioKhoiHanh;
		this.thoiGianBayDuKien = thoiGianBayDuKien;
		this.giaChuyenBay = giaChuyenBay;
		this.trangThai = trangThai;
		this.thongTinVes = thongTinVes;
	}

	public ChuyenBay() {
		super();
	}

}
