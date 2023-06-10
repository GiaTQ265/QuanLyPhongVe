package hello.model;

/**
 * @author LoiPN1
 *
 */
public class DoanhThuTheoTuyenBayForm {
	private String maTuyenBay;
	private String sanBayDi;
	private String sanBayDen;
	private Integer doanhThuTheoTuyenBay;

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

	public Integer getDoanhThuTheoTuyenBay() {
		return doanhThuTheoTuyenBay;
	}

	public void setDoanhThuTheoTuyenBay(Integer doanhThuTheoTuyenBay) {
		this.doanhThuTheoTuyenBay = doanhThuTheoTuyenBay;
	}

	public DoanhThuTheoTuyenBayForm(String maTuyenBay, String sanBayDi, String sanBayDen,
			Integer doanhThuTheoTuyenBay) {
		super();
		this.maTuyenBay = maTuyenBay;
		this.sanBayDi = sanBayDi;
		this.sanBayDen = sanBayDen;
		this.doanhThuTheoTuyenBay = doanhThuTheoTuyenBay;
	}

	public DoanhThuTheoTuyenBayForm() {
		super();
	}

}
