package hello.entity;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class ThongTinThanhToan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maTTThanhToan;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maVe")
	private ThongTinVe thongTinVe;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngayThanhToan;

	@DateTimeFormat(pattern = "HH:mm")
	private LocalTime gioThanhToan;

	private Double tongTien;

	private String trangThai;

	public Integer getMaTTThanhToan() {
		return maTTThanhToan;
	}

	public void setMaTTThanhToan(Integer maTTThanhToan) {
		this.maTTThanhToan = maTTThanhToan;
	}

	public ThongTinVe getThongTinVe() {
		return thongTinVe;
	}

	public void setThongTinVe(ThongTinVe thongTinVe) {
		this.thongTinVe = thongTinVe;
	}

	public LocalDate getNgayThanhToan() {
		return ngayThanhToan;
	}

	public void setNgayThanhToan(LocalDate ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}

	public LocalTime getGioThanhToan() {
		return gioThanhToan;
	}

	public void setGioThanhToan(LocalTime gioThanhToan) {
		this.gioThanhToan = gioThanhToan;
	}

	public Double getTongTien() {
		return tongTien;
	}

	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public ThongTinThanhToan(Integer maTTThanhToan, ThongTinVe thongTinVe, LocalDate ngayThanhToan,
			LocalTime gioThanhToan, Double tongTien, String trangThai) {
		super();
		this.maTTThanhToan = maTTThanhToan;
		this.thongTinVe = thongTinVe;
		this.ngayThanhToan = ngayThanhToan;
		this.gioThanhToan = gioThanhToan;
		this.tongTien = tongTien;
		this.trangThai = trangThai;
	}

	public ThongTinThanhToan() {
		super();
	}

}
