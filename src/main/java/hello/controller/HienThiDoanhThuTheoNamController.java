package hello.controller;

import java.time.LocalDate;
import java.util.ArrayList;
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
@RequestMapping("/admin/doanh-thu-theo-nam")
public class HienThiDoanhThuTheoNamController {
	
	@Autowired
	ThongKeService thongKeService;

	@GetMapping
	public String doGetDoanhThuTheoNam(Model model) {
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), 1, 1);
		LocalDate ngayHienTai = LocalDate.now();
		model.addAttribute("ngayBatDau", ngayBatDau);
		model.addAttribute("ngayHienTai", ngayHienTai);
		double doanhThuNamHienTai = 0D;
		List<Object> doanhThus = thongKeService.timDoanhThuTheoThoiGian(ngayBatDau, ngayHienTai, "Da thanh toan");
		if (doanhThus.get(0) != null) {
			doanhThuNamHienTai = (double) doanhThus.get(0);
		}
		model.addAttribute("doanhThuNamHienTai", (int) doanhThuNamHienTai);

//		Tim doanh thu moi thang và add vào list doanh thu moi thang vs ten thang tuong ung 
		List<String[]> doanhThuTungThangs = new ArrayList<>();
		for (int i = 1; i <= 12; i++) {
			LocalDate ngayBatDau1 = LocalDate.of(LocalDate.now().getYear(), i, 1);
			LocalDate ngayKetThuc1 = null;
			if (i == 12) {
				ngayKetThuc1 = LocalDate.of(LocalDate.now().getYear(), i, 31);
			} else {
				ngayKetThuc1 = LocalDate.of(LocalDate.now().getYear(), i + 1, 1);
			}

			double doanhThuThang = 0D;
			List<Object> doanhThuThangs = thongKeService.timDoanhThuTheoMoiThang(ngayBatDau1, ngayKetThuc1,
					"Da thanh toan");
			if (doanhThuThangs.get(0) != null) {
				doanhThuThang = (double) doanhThuThangs.get(0);
			}
			int doanhThuThangTrieuVND = (int) ((doanhThuThang / 1000000));
			int doanhThuThangPhanTram = (int) (doanhThuThangTrieuVND * 100 / 1000);
			StringBuilder builder = new StringBuilder();
			builder.append(doanhThuThangPhanTram).append("%");
			String[] doanhThuMoiThangArray = { "Tháng " + i, builder.toString(),
					String.valueOf(doanhThuThangTrieuVND) };
			doanhThuTungThangs.add(doanhThuMoiThangArray);
		}
		model.addAttribute("doanhThuTungThangCuaNams", doanhThuTungThangs);
		return "/admin/doanhThuTheoNam";
	}

	@GetMapping("/doanh-thu-theo-thang/{thang}")
	public String doGetDoanhThuTheoThang(Model model, @PathVariable("thang") String thang) {
		int thangInt = Integer.parseInt(thang.substring(thang.indexOf(" ") + 1, thang.length()));
		model.addAttribute("thang", thangInt);
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), thangInt, 1);

		LocalDate ngayKetThuc = (LocalDate.of(LocalDate.now().getYear(), thangInt + 1, 1)).minusDays(1);
		if (LocalDate.now().isBefore(ngayKetThuc)) {
			ngayKetThuc = LocalDate.now();
			model.addAttribute("ngayKetThuc", ngayKetThuc);
		} else {
			model.addAttribute("ngayKetThuc", ngayKetThuc);
		}
		model.addAttribute("ngayBatDau", ngayBatDau);

		double doanhThuThangHienTai = 0D;
		List<Object> doanhThus = thongKeService.timDoanhThuTheoThoiGian(ngayBatDau, ngayKetThuc, "Da thanh toan");
		if (doanhThus.size() > 0) {
			doanhThuThangHienTai = (double) doanhThus.get(0);
		}

		model.addAttribute("doanhThuThangHienTai", (int) doanhThuThangHienTai);
//		Tim doanh thu theo tuyen bay
		List<Object[]> doanhThuTheoTuyenBays = thongKeService.timDTTheoTuyenBayTheoThoiGian(ngayBatDau, ngayKetThuc);
		List<DoanhThuTheoTuyenBayForm> doanhThuTheoTuyenBayForms = thongKeService
				.timDTTheoTuyenBayForm(doanhThuTheoTuyenBays, ngayBatDau, ngayKetThuc);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoTuyenBays", doanhThuTheoTuyenBayForms);
		return "/admin/doanhThuTungThang";
	}

	@GetMapping("/doanh-thu-theo-thang/tim-kiem/{thang}")
	public String doGetSearch(Model model, @RequestParam(name = "searchKey") String searchKey,
			@PathVariable("thang") Integer thangInt) {
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), thangInt, 1);
		LocalDate ngayKetThuc = (LocalDate.of(LocalDate.now().getYear(), thangInt + 1, 1)).minusDays(1);
		if (LocalDate.now().isBefore(ngayKetThuc)) {
			ngayKetThuc = LocalDate.now();
		}
		model.addAttribute("ngayBatDau", ngayBatDau);
		model.addAttribute("ngayKetThuc", ngayKetThuc);
		double doanhThuThangHienTai = 0D;
		List<Object> doanhThus = thongKeService.timDoanhThuTheoThoiGian(ngayBatDau, ngayKetThuc, "Da thanh toan");
		if (doanhThus.get(0) != null) {
			doanhThuThangHienTai = (double) doanhThus.get(0);
		}

		model.addAttribute("doanhThuThangHienTai", (int) doanhThuThangHienTai);

//		Tim doanh thu theo tuyen bay
		List<Object[]> doanhThuTheoTuyenBays = thongKeService.timDTTheoTuyenBayTheoThoiGianTimKiem(ngayBatDau,
				ngayKetThuc, searchKey);
		List<DoanhThuTheoTuyenBayForm> doanhThuTheoTuyenBayForms = thongKeService
				.timDTTheoTuyenBayForm(doanhThuTheoTuyenBays, ngayBatDau, ngayKetThuc);
//		Thêm modelAttribute cho danh sach Doanh Thu theo Tuyen Bay
		model.addAttribute("doanhThuTheoTuyenBays", doanhThuTheoTuyenBayForms);
		return "/admin/doanhThuTungThang";
	}

	@GetMapping("/doanh-thu-theo-thang/chi-tiet/{thang}/{maTuyenBay}")
	public String doGetDoanhThuTheoThangChiTietTheoChuyenBay(Model model, @PathVariable("maTuyenBay") String maTuyenBay,
			@PathVariable("thang") Integer thangInt, @RequestParam(defaultValue = "1") Integer page) {
		model.addAttribute("thang", thangInt);
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), thangInt, 1);
		LocalDate ngayKetThuc = (LocalDate.of(LocalDate.now().getYear(), thangInt + 1, 1)).minusDays(1);
		if (LocalDate.now().isBefore(ngayKetThuc)) {
			ngayKetThuc = LocalDate.now();
		}

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

		return "/admin/doanhThuTungThangChiTiet";
	}

	@GetMapping("/doanh-thu-theo-thang/chi-tiet/tim-kiem/{thang}/{maTuyenBay}")
	public String doGetDoanhThuTheoChuyenBayTimKiem(Model model, @PathVariable("maTuyenBay") String maTuyenBay,
			@PathVariable("thang") Integer thangInt, @RequestParam("searchKey") String timKiem,
			@RequestParam(defaultValue = "1") Integer page) {
		model.addAttribute("searchKeyPagination", timKiem);
		LocalDate ngayBatDau = LocalDate.of(LocalDate.now().getYear(), thangInt, 1);
		LocalDate ngayKetThuc = (LocalDate.of(LocalDate.now().getYear(), thangInt + 1, 1)).minusDays(1);
		if (LocalDate.now().isBefore(ngayKetThuc)) {
			ngayKetThuc = LocalDate.now();
		}

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
		return "/admin/doanhThuTungThangChiTietTimKiem";
	}
}
