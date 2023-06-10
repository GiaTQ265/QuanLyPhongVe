package hello.model;

/**
 * @author LoiPN1
 *
 */
public class DoanhThuThangChiTietTheoChuyenBayForm {
	private String maTuyenBay;
	private String sanBayDi;
	private String sanBayDen;
	private String maChuyenBay;
	private String ngayKhoiHanh;
	private Integer doanhThuVeThuongGia;
	private Integer doanhThuVePhoThong;
	private Integer doanhThuTuDichVuThem;
	private Integer tongDoanhThu;

	public String getMaTuyenBay() {
		return maTuyenBay;
	}

	public void setMaTuyenBay(String maTuyenBay) {
		this.maTuyenBay = maTuyenBay;
	}

	public String getSanBayDi() {
		return sanBayDi;
	}

	public void setSanBayDi(String sanBayDi) {
		this.sanBayDi = sanBayDi;
	}

	public String getSanBayDen() {
		return sanBayDen;
	}

	public void setSanBayDen(String sanBayDen) {
		this.sanBayDen = sanBayDen;
	}

	public String getMaChuyenBay() {
		return maChuyenBay;
	}

	public void setMaChuyenBay(String maChuyenBay) {
		this.maChuyenBay = maChuyenBay;
	}

	public String getNgayKhoiHanh() {
		return ngayKhoiHanh;
	}

	public void setNgayKhoiHanh(String ngayKhoiHanh) {
		this.ngayKhoiHanh = ngayKhoiHanh;
	}

	public Integer getDoanhThuVeThuongGia() {
		return doanhThuVeThuongGia;
	}

	public void setDoanhThuVeThuongGia(Integer doanhThuVeThuongGia) {
		this.doanhThuVeThuongGia = doanhThuVeThuongGia;
	}

	public Integer getDoanhThuVePhoThong() {
		return doanhThuVePhoThong;
	}

	public void setDoanhThuVePhoThong(Integer doanhThuVePhoThong) {
		this.doanhThuVePhoThong = doanhThuVePhoThong;
	}

	public Integer getDoanhThuTuDichVuThem() {
		return doanhThuTuDichVuThem;
	}

	public void setDoanhThuTuDichVuThem(Integer doanhThuTuDichVuThem) {
		this.doanhThuTuDichVuThem = doanhThuTuDichVuThem;
	}

	public Integer getTongDoanhThu() {
		return tongDoanhThu;
	}

	public void setTongDoanhThu(Integer tongDoanhThu) {
		this.tongDoanhThu = tongDoanhThu;
	}

	public DoanhThuThangChiTietTheoChuyenBayForm(String maTuyenBay, String sanBayDi, String sanBayDen,
			String maChuyenBay, String ngayKhoiHanh, Integer doanhThuVeThuongGia, Integer doanhThuVePhoThong,
			Integer doanhThuTuDichVuThem, Integer tongDoanhThu) {
		super();
		this.maTuyenBay = maTuyenBay;
		this.sanBayDi = sanBayDi;
		this.sanBayDen = sanBayDen;
		this.maChuyenBay = maChuyenBay;
		this.ngayKhoiHanh = ngayKhoiHanh;
		this.doanhThuVeThuongGia = doanhThuVeThuongGia;
		this.doanhThuVePhoThong = doanhThuVePhoThong;
		this.doanhThuTuDichVuThem = doanhThuTuDichVuThem;
		this.tongDoanhThu = tongDoanhThu;
	}

	public DoanhThuThangChiTietTheoChuyenBayForm() {
		super();
	}

}
