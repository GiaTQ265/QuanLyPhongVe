package hello.page;

/**
 * @author LoiPN1
 *
 */
public class PhanTrang {
	private Integer soRecordsMoiTrang = 10;
	private Integer thuTuTrang;

	public PhanTrang() {
		super();
	}

	public PhanTrang(Integer soRecordsMoiTrang, Integer thuTuTrang) {
		super();
		this.soRecordsMoiTrang = soRecordsMoiTrang;
		this.thuTuTrang = thuTuTrang;
	}

	public Integer getSoRecordsMoiTrang() {
		return soRecordsMoiTrang;
	}

	public void setSoRecordsMoiTrang(Integer soRecordsMoiTrang) {
		this.soRecordsMoiTrang = soRecordsMoiTrang;
	}

	public Integer getThuTuTrang() {
		return thuTuTrang;
	}

	public void setThuTuTrang(Integer thuTuTrang) {
		this.thuTuTrang = thuTuTrang;
	}

	public Integer getSoRecordsOff() {
		return (thuTuTrang - 1) * soRecordsMoiTrang;
	}

}
