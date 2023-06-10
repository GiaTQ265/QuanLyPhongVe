package hello.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.Valid;

@Entity
public class ThongTinVe {

	@Id
	private String maVe;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maChuyenBay")
	private ChuyenBay chuyenBay;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maKhachHang")
	@Valid
	private KhachHang khachHang;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maLoaiVe")
	private LoaiVe loaiVe;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maDichVu")
	private DichVu dichVu;

	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "thongTinVe")
	private ThongTinThanhToan thongTinThanhToan;

	public String getMaVe() {
		return maVe;
	}

	public void setMaVe(String maVe) {
		this.maVe = maVe;
	}

	public ChuyenBay getChuyenBay() {
		return chuyenBay;
	}

	public void setChuyenBay(ChuyenBay chuyenBay) {
		this.chuyenBay = chuyenBay;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public LoaiVe getLoaiVe() {
		return loaiVe;
	}

	public void setLoaiVe(LoaiVe loaiVe) {
		this.loaiVe = loaiVe;
	}

	public DichVu getDichVu() {
		return dichVu;
	}

	public void setDichVu(DichVu dichVu) {
		this.dichVu = dichVu;
	}

	public ThongTinThanhToan getThongTinThanhToan() {
		return thongTinThanhToan;
	}

	public void setThongTinThanhToan(ThongTinThanhToan thongTinThanhToan) {
		this.thongTinThanhToan = thongTinThanhToan;
	}

	public ThongTinVe(String maVe, ChuyenBay chuyenBay, KhachHang khachHang, LoaiVe loaiVe, DichVu dichVu,
			ThongTinThanhToan thongTinThanhToan) {
		super();
		this.maVe = maVe;
		this.chuyenBay = chuyenBay;
		this.khachHang = khachHang;
		this.loaiVe = loaiVe;
		this.dichVu = dichVu;
		this.thongTinThanhToan = thongTinThanhToan;
	}

	public ThongTinVe() {
		super();
	}

}
