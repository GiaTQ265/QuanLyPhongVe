package hello.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.model.DoanhThuThangChiTietTheoChuyenBayForm;
import hello.model.DoanhThuTheoTuyenBayForm;
import hello.page.PhanTrang;
import hello.repository.ThongKeRepository;

/**
 * @author LoiPN1
 *
 */

@Service
@Transactional
public class ThongKeService {
	@Autowired
	ThongKeRepository repository;

	public List<Object> timDoanhThuTheoThoiGian(LocalDate ngayBatDau, LocalDate ngayHienTai, String trangThai) {
		return repository.timDoanhThuTheoThoiGian(ngayBatDau, ngayHienTai, trangThai);
	}

	public List<Object> timDoanhThuTheoMoiThang(LocalDate ngayBatDau, LocalDate ngayKetThuc, String trangThai) {
		return repository.timDoanhThuTheoMoiThang(ngayBatDau, ngayKetThuc, trangThai);
	}

	public List<Object[]> timDTTheoTuyenBayTheoThoiGian(LocalDate ngayBatDau, LocalDate ngayHienTai) {
		return repository.timDTTheoTuyenBayTheoThoiGian(ngayBatDau, ngayHienTai);
	}

	public List<Object[]> timDTTheoTuyenBayTheoThoiGianTimKiem(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String timKiem) {
		return repository.timDTTheoTuyenBayTheoThoiGianTimKiem(ngayBatDau, ngayHienTai, timKiem);
	}

	public List<Object[]> timSanBayTheoSQL(String id) {
		return repository.timSanBayTheoSQL(id);

	}

	public List<Object[]> timTuyenBayTheoSQL(String id) {
		return repository.timTuyenBayTheoSQL(id);

	}

	public List<DoanhThuTheoTuyenBayForm> timDTTheoTuyenBayForm(List<Object[]> doanhThuTheoTuyenBays,
			LocalDate ngayBatDau, LocalDate ngayHienTai) {
		List<DoanhThuTheoTuyenBayForm> doanhThuTheoTuyenBayForms = new ArrayList<>();
//		Lay du lieu tu Database gom MaTuyenBay va DoanhThuTheoTuyenBay de add vao Form va add vao list Form
		for (Object[] x : doanhThuTheoTuyenBays) {
			DoanhThuTheoTuyenBayForm doanhThuTheoTuyenBayForm = new DoanhThuTheoTuyenBayForm();
			String maTuyenBay = String.valueOf(x[0]);
			doanhThuTheoTuyenBayForm.setMaTuyenBay(maTuyenBay);

			String maSanBayDi = (String) repository.timTuyenBayTheoSQL(maTuyenBay).get(0)[0];
			String maSanBayDen = (String) repository.timTuyenBayTheoSQL(maTuyenBay).get(0)[1];
			doanhThuTheoTuyenBayForm.setSanBayDi((String) repository.timSanBayTheoSQL(maSanBayDi).get(0)[2]);
			doanhThuTheoTuyenBayForm.setSanBayDen((String) repository.timSanBayTheoSQL(maSanBayDen).get(0)[2]);

			double doanhThuTheoTuyenBay = (double) x[1];
			doanhThuTheoTuyenBayForm.setDoanhThuTheoTuyenBay((int) doanhThuTheoTuyenBay);

			doanhThuTheoTuyenBayForms.add(doanhThuTheoTuyenBayForm);
		}
		return doanhThuTheoTuyenBayForms;
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay */
	public List<Object[]> timDoanhThuTheoChuyenBay(LocalDate ngayBatDau, LocalDate ngayHienTai, String trangThai,
			String maTuyenBay) {
		return repository.timDoanhThuThangChiTietTheoChuyenBay(ngayBatDau, ngayHienTai, trangThai, maTuyenBay);
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay theo trang */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBayTheoTrang(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay, PhanTrang phanTrang) {

		return repository.timDoanhThuThangChiTietTheoChuyenBayTheoTrang(ngayBatDau, ngayHienTai, trangThai, maTuyenBay,
				phanTrang);
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay : chuc nang tim Kiem */
	public List<Object[]> timDoanhThuTheoChuyenBayTimKiem(LocalDate ngayBatDau, LocalDate ngayHienTai, String trangThai,
			String maTuyenBay, String timKiem) {
		return repository.timDoanhThuThangChiTietTheoChuyenBayTimKiem(ngayBatDau, ngayHienTai, trangThai, maTuyenBay,
				timKiem);
	}

	/*
	 * Tim Doanh thu thang chi tiet theo chuyen bay : chuc nang tim Kiem theo trang
	 */
	public List<Object[]> timDoanhThuTheoChuyenBayTimKiemTheoTrang(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay, String timKiem, PhanTrang phanTrang) {
		return repository.timDoanhThuThangTheoChuyenBayTimKiemTheoTrang(ngayBatDau, ngayHienTai, trangThai, maTuyenBay,
				timKiem, phanTrang);
	}

	public List<DoanhThuThangChiTietTheoChuyenBayForm> timDoanhThuTheoChuyenBayForm(
			List<Object[]> doanhThuThangTheoChuyenBays, LocalDate ngayBatDau, LocalDate ngayHienTai, String trangThai,
			String maTuyenBay) {
		List<DoanhThuThangChiTietTheoChuyenBayForm> doanhThuThangChiTietTheoChuyenBayForms = new ArrayList<>();

		for (Object[] x : doanhThuThangTheoChuyenBays) {
			DoanhThuThangChiTietTheoChuyenBayForm form = new DoanhThuThangChiTietTheoChuyenBayForm();

			form.setMaTuyenBay(maTuyenBay);

			String maSanBayDi = (String) repository.timTuyenBayTheoSQL(maTuyenBay).get(0)[0];
			String maSanBayDen = (String) repository.timTuyenBayTheoSQL(maTuyenBay).get(0)[1];
			form.setSanBayDi((String) repository.timSanBayTheoSQL(maSanBayDi).get(0)[2]);
			form.setSanBayDen((String) repository.timSanBayTheoSQL(maSanBayDen).get(0)[2]);

			String maChuyenBay = String.valueOf(x[1]);
			form.setMaChuyenBay(maChuyenBay);
			form.setNgayKhoiHanh(String.valueOf(x[2]));
			double tongDoanhThuDouble = (double) x[3];
			form.setTongDoanhThu((int) tongDoanhThuDouble);

			/* Tim Doanh thu theo chuyen bay theo loai dich vu */
			Integer doanhThuDichVu = 0;
			for (Object[] y : repository.timDoanhThuThangChiTietTheoChuyenBayTheoDichVu(ngayBatDau, ngayHienTai,
					trangThai, maChuyenBay)) {
				doanhThuDichVu = doanhThuDichVu + (int) y[3];
			}
			form.setDoanhThuTuDichVuThem(doanhThuDichVu);

			/* Tim Doanh thu theo chuyen bay theo loai ve */
			double doanhThuVePhoThong = 0D;
			double doanhThuVeThuongGia = 0D;
			String maVePhoThong = "LV01";
			String maVeThuongGia = "LV02";

			for (Object[] y : repository.timDoanhThuThangChiTietTheoChuyenBayTheoLoaiVe(ngayBatDau, ngayHienTai,
					trangThai, maChuyenBay)) {

				if (maVePhoThong.equals(String.valueOf(y[1]))) {
					doanhThuVePhoThong = doanhThuVePhoThong + (double) y[2];
				} else if (maVeThuongGia.equals(String.valueOf(y[1]))) {
					doanhThuVeThuongGia = doanhThuVeThuongGia + (double) y[2];
				}
			}

			form.setDoanhThuVePhoThong((int) doanhThuVePhoThong);
			form.setDoanhThuVeThuongGia((int) doanhThuVeThuongGia);

			doanhThuThangChiTietTheoChuyenBayForms.add(form);
		}
		return doanhThuThangChiTietTheoChuyenBayForms;
	}

}
