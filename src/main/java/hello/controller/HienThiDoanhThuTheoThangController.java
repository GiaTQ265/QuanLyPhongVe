package hello.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hello.model.DoanhThuThangChiTietTheoChuyenBayForm;
import hello.model.DoanhThuTheoTuyenBayForm;
import hello.page.PhanTrang;
import hello.service.ThongKeService;

/**
 * @author LoiPN1
 *
 */

@Controller
@RequestMapping("/admin/doanh-thu-theo-thang")
public class HienThiDoanhThuTheoThangController {

	@Autowired
	ThongKeService thongKeService;

	@GetMapping
	public String doGetDoanhThuTheoThang(Model model) {
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1);
		LocalDate ngayHienTai = LocalDate.now();
		model.addAttribute("ngayBatDau", ngayBatDau);
		model.addAttribute("ngayHienTai", ngayHienTai);
		double doanhThuThangHienTai = 0D;
		List<Object> doanhThus = thongKeService.timDoanhThuTheoThoiGian(ngayBatDau, ngayHienTai, "Da thanh toan");
		if (doanhThus.get(0) != null) {
			doanhThuThangHienTai = (double) doanhThus.get(0);
		}

		model.addAttribute("doanhThuThangHienTai", (int) doanhThuThangHienTai);
//		Tim doanh thu theo tuyen bay
		List<Object[]> doanhThuTheoTuyenBays = thongKeService.timDTTheoTuyenBayTheoThoiGian(ngayBatDau, ngayHienTai);
		List<DoanhThuTheoTuyenBayForm> doanhThuTheoTuyenBayForms = thongKeService
				.timDTTheoTuyenBayForm(doanhThuTheoTuyenBays, ngayBatDau, ngayHienTai);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoTuyenBays", doanhThuTheoTuyenBayForms);
		return "/admin/doanhThuTheoThang";
	}

	@GetMapping("/tim-kiem")
	public String doGetSearch(Model model, @RequestParam(name = "searchKey") String searchKey) {
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1);
		LocalDate ngayHienTai = LocalDate.now();
		model.addAttribute("ngayBatDau", ngayBatDau);
		model.addAttribute("ngayHienTai", ngayHienTai);
		double doanhThuThangHienTai = 0D;
		List<Object> xxx = thongKeService.timDoanhThuTheoThoiGian(ngayBatDau, ngayHienTai, "Da thanh toan");
		if (xxx.get(0) != null) {
			doanhThuThangHienTai = (double) xxx.get(0);
		}

		model.addAttribute("doanhThuThangHienTai", (int) doanhThuThangHienTai);

//		Tim doanh thu theo tuyen bay
		List<Object[]> doanhThuTheoTuyenBays = thongKeService.timDTTheoTuyenBayTheoThoiGianTimKiem(ngayBatDau,
				ngayHienTai, searchKey);
		List<DoanhThuTheoTuyenBayForm> doanhThuTheoTuyenBayForms = thongKeService
				.timDTTheoTuyenBayForm(doanhThuTheoTuyenBays, ngayBatDau, ngayHienTai);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoTuyenBays", doanhThuTheoTuyenBayForms);
		return "/admin/doanhThuTheoThang";
	}

	@GetMapping("/chi-tiet/{maTuyenBay}")
	public String doGetDoanhThuTheoThangChiTietTheoChuyenBay(Model model, @PathVariable("maTuyenBay") String maTuyenBay,
			@RequestParam(defaultValue = "1") Integer page) {
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1);
		LocalDate ngayKetThuc = LocalDate.now();

//		Tính tổng trang trong phân trang
		List<Object[]> tongData = thongKeService.timDoanhThuTheoChuyenBay(ngayBatDau, ngayKetThuc, "Da thanh toan",
				maTuyenBay);
		PhanTrang phanTrang = new PhanTrang();
		Integer totalPages = (int) Math.ceil((double) tongData.size() / phanTrang.getSoRecordsMoiTrang());
		model.addAttribute("totalPages", totalPages);
		phanTrang.setThuTuTrang(page);
		model.addAttribute("currentPage", page);
//		Tim Data theo trang
		List<Object[]> dataTheoTrang = thongKeService.timDoanhThuThangChiTietTheoChuyenBayTheoTrang(ngayBatDau,
				ngayKetThuc, "Da thanh toan", maTuyenBay, phanTrang);

//		Xu ly Data theo trang chuyen vao list Form hien thi
		List<DoanhThuThangChiTietTheoChuyenBayForm> doanhThuTheoChuyenBayForms = thongKeService
				.timDoanhThuTheoChuyenBayForm(dataTheoTrang, ngayBatDau, ngayKetThuc, "Da thanh toan", maTuyenBay);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoChuyenBays", doanhThuTheoChuyenBayForms);
		model.addAttribute("maTuyenBay", maTuyenBay);
		return "/admin/doanhThuTheoThangChiTiet";
	}

	@GetMapping("/chi-tiet/tim-kiem/{maTuyenBay}")
	public String doGetDoanhThuTheoChuyenBayTimKiem(Model model, @PathVariable("maTuyenBay") String maTuyenBay,
			@RequestParam("searchKey") String timKiem, @RequestParam(defaultValue = "1") Integer page) {
		model.addAttribute("searchKeyPagination", timKiem);
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1);
		LocalDate ngayKetThuc = LocalDate.now();
//		Tính tổng trang trong phân trang
		List<Object[]> tongData = thongKeService.timDoanhThuTheoChuyenBayTimKiem(ngayBatDau, ngayKetThuc,
				"Da thanh toan", maTuyenBay, timKiem);
		PhanTrang phanTrang = new PhanTrang();
		Integer totalPages = (int) Math.ceil((double) tongData.size() / phanTrang.getSoRecordsMoiTrang());
		model.addAttribute("totalPages", totalPages);
		phanTrang.setThuTuTrang(page);
		model.addAttribute("currentPage", page);

//		Tim Data theo trang
		List<Object[]> dataTheoTrang = thongKeService.timDoanhThuTheoChuyenBayTimKiemTheoTrang(ngayBatDau, ngayKetThuc,
				"Da thanh toan", maTuyenBay, timKiem, phanTrang);
		List<DoanhThuThangChiTietTheoChuyenBayForm> doanhThuTheoChuyenBayForms = thongKeService
				.timDoanhThuTheoChuyenBayForm(dataTheoTrang, ngayBatDau, ngayKetThuc, "Da thanh toan", maTuyenBay);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoChuyenBays", doanhThuTheoChuyenBayForms);
		return "/admin/doanhThuTheoThangChiTietTimKiem";
	}
}
