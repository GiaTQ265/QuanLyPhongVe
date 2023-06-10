package hello.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Pattern;

@Entity
public class TuyenBay {
	@Id
	@Pattern(regexp = "^TB[0-9]{2}$")
	private String maTuyenBay;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maSanBayDi", referencedColumnName = "maSanBay")
	private SanBay sanBayDi;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "maSanBayDen", referencedColumnName = "maSanBay")
	private SanBay sanBayDen;

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	@Column(columnDefinition = "int")
	private String trangThai;

	public String getMaTuyenBay() {
		return maTuyenBay;
	}

	public void setMaTuyenBay(String maTuyenBay) {
		this.maTuyenBay = maTuyenBay;
	}

	public SanBay getSanBayDi() {
		return sanBayDi;
	}

	public void setSanBayDi(SanBay sanBayDi) {
		this.sanBayDi = sanBayDi;
	}

	public SanBay getSanBayDen() {
		return sanBayDen;
	}

	public void setSanBayDen(SanBay sanBayDen) {
		this.sanBayDen = sanBayDen;
	}

	public TuyenBay(@Pattern(regexp = "^TB[0-9]{2}$") String maTuyenBay, SanBay sanBayDi, SanBay sanBayDen,
			String trangThai) {
		super();
		this.maTuyenBay = maTuyenBay;
		this.sanBayDi = sanBayDi;
		this.sanBayDen = sanBayDen;
		this.trangThai = trangThai;
	}

	public TuyenBay() {
		super();
	}

}
