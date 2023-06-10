
package hello.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import hello.entity.ChuyenBay;
import hello.entity.MayBay;
import hello.page.PhanTrang;
import hello.page.SettingPage;
import hello.service.ChuyenBayService;
import hello.service.LoaiVeService;
import hello.service.ThongTinThanhToanService;

/**
 * @author LoiPN1
 *
 */
@Controller
@RequestMapping("/admin/chuyen-bay")
public class ChuyenBayController {

	@Autowired
	ChuyenBayService chuyenBayService;
	@Autowired
	ThongTinThanhToanService thongTinThanhToanService;
	@Autowired
	LoaiVeService loaiVeService;

	@GetMapping
	public String hienThiFormChuyenBay(Model model) {
		model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
		model.addAttribute("mayBays", chuyenBayService.timMayBay());
		model.addAttribute("chuyenBayForm", new ChuyenBay());
		return "/admin/manHinhThemChuyenBay";
	}

	@PostMapping("/luu")
	public String luuFormChuyenBay(Model model, @ModelAttribute("chuyenBayForm") @Valid ChuyenBay chuyenBay,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "/admin/manHinhThemChuyenBay";
		}

//		Kiểm tra Mã chuyến bay có tồn tại trong Database
		if (chuyenBayService.findById(chuyenBay.getMaChuyenBay()) != null) {
			model.addAttribute("messageChuyenBay", "Mã chuyến bay đã tồn tại. Vui lòng chọn lại!");
			model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
			model.addAttribute("mayBays", chuyenBayService.timMayBay());
			return "/admin/manHinhThemChuyenBay";
		}
//		Check validate Mã chuyến bay đúng định dạng CBxxxxx
		if (!chuyenBay.getMaChuyenBay().matches("^CB[0-9]{5}$")) {
			model.addAttribute("messageChuyenBay", "Mã chuyến bay phải là dạng CBxxxxx (x là số từ 0 đến 9)");
			model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
			model.addAttribute("mayBays", chuyenBayService.timMayBay());
			return "/admin/manHinhThemChuyenBay";
		}
//		Check validate thời gian bay dự kiến phải là số nguyên dương
		if (!chuyenBay.getThoiGianBayDuKien().toString().matches("^[1-9][0-9]{0,}$")) {
			model.addAttribute("messageThoiGianBayDuKien", "Thời gian bay dự kiến phải là số nguyên dương");
			model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
			model.addAttribute("mayBays", chuyenBayService.timMayBay());
			return "/admin/manHinhThemChuyenBay";
		}
//		Check validate giá chuyến bay phải là số nguyên dương
		if (!chuyenBay.getThoiGianBayDuKien().toString().matches("^[1-9][0-9]{0,}$")) {
			model.addAttribute("messageGiaChuyenBay", "Giá chuyến bay phải là số nguyên dương");
			model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
			model.addAttribute("mayBays", chuyenBayService.timMayBay());
			return "/admin/manHinhThemChuyenBay";
		}
//		Kiểm tra ngày khởi hành có sau ngày hiện tại không?
		if (!chuyenBay.getNgayKhoiHanh().isAfter(LocalDate.now())) {
			model.addAttribute("messageNgayKhoiHanh", "Ngày khởi hành phải sau ngày hiện tại!");
			model.addAttribute("tuyenBays", chuyenBayService.timTuyenBay());
			model.addAttribute("mayBays", chuyenBayService.timMayBay());
			return "/admin/manHinhThemChuyenBay";
		}
		chuyenBay.setTrangThai("1");
		chuyenBayService.saveOrUpdate(chuyenBay);

		return "redirect:/admin/chuyen-bay/danh-sach-chuyen-bay";
	}

	@GetMapping("/cap-nhat/{maChuyenBay}")
	public String doGetChuyenBayCapNhat(Model model, @PathVariable("maChuyenBay") String maChuyenBay,
			RedirectAttributes redirectAttributes) {
		ChuyenBay chuyenBay = chuyenBayService.findById(maChuyenBay);

//		Check validate Chuyến bay chỉ dành cho chuyến bay chưa qua ngày khởi hành
		if (chuyenBay.getNgayKhoiHanh().isBefore(LocalDate.now())) {
			redirectAttributes.addFlashAttribute("messageCapNhat",
					"Chuyến bay " + chuyenBay.getMaChuyenBay() + " đã qua thời gian khởi hành nên không thể cập nhật!");
			return "redirect:/admin/chuyen-bay/danh-sach-chuyen-bay";
		}
		model.addAttribute("chuyenBayForm", chuyenBay);
		model.addAttribute("maTuyenBay", chuyenBay.getTuyenBay().getMaTuyenBay());
		model.addAttribute("maMayBay", chuyenBay.getMayBay().getMaMayBay());
		return "/admin/manHinhChuyenBayCapNhat";
	}

	@PostMapping("/cap-nhat")
	public String doPostChuyenBayCapNhat(Model model, @ModelAttribute("chuyenBayForm") @Valid ChuyenBay chuyenBay,
			BindingResult bindingResult, @RequestParam("maTuyenBay") String maTuyenBay,
			@RequestParam("maMayBay") String maMayBay, RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return "/admin/manHinhChuyenBayCapNhat";
		}

		chuyenBay.setTuyenBay(chuyenBayService.timTuyenBayTheoId(maTuyenBay));
		chuyenBay.setMayBay(chuyenBayService.timMayBayTheoId(maMayBay));
		chuyenBay.setTrangThai("1");
		chuyenBayService.saveOrUpdate(chuyenBay);
		redirectAttributes.addFlashAttribute("messageSauCapNhat",
				"Đã cập nhật thành công chuyến bay " + chuyenBay.getMaChuyenBay());
		return "redirect:/admin/chuyen-bay/danh-sach-chuyen-bay";
	}

	@GetMapping("/xoa/{maChuyenBay}")
	public String doGetXoaChuyenBay(Model model, @PathVariable("maChuyenBay") String maChuyenBay,
			RedirectAttributes redirectAttributes) {
		ChuyenBay chuyenBay = chuyenBayService.findById(maChuyenBay);
		chuyenBay.setTrangThai("0");
		chuyenBayService.saveOrUpdate(chuyenBay);
		model.addAttribute("messageSauXoa", "Đã xóa thành công chuyến bay " + maChuyenBay + " !");
		return "/admin/danh-sach-chuyen-bay";
	}

	@GetMapping(value = "/danh-sach-chuyen-bay")
	public String doGetDanhSachChuyenBay(Model model, @RequestParam(defaultValue = "1") Integer page) {
//		Lấy danh sách tất cả các Chuyến Bay
		List<ChuyenBay> tongData = chuyenBayService.timTatCaChuyenBay();
		PhanTrang phanTrang = new PhanTrang();
//		Tính tổng trang trong phân trang
		Integer totalPages = (int) Math.ceil((double) tongData.size() / phanTrang.getSoRecordsMoiTrang());
		model.addAttribute("totalPages", totalPages);
		phanTrang.setThuTuTrang(page);
		model.addAttribute("currentPage", page);
//		Tim Data theo trang
		List<ChuyenBay> dataTheoTrang = chuyenBayService.timChuyenBayTheoTrang(phanTrang);
		model.addAttribute("chuyenBays", dataTheoTrang);
		return "/admin/danhSachChuyenBay";
	}

	@GetMapping(value = "/danh-sach-chuyen-bay/tim-kiem")
	public String doGetTimKiemChuyenBay(Model model, @RequestParam("search") String timKiem,
			@RequestParam(defaultValue = "1") Integer page) {
//		Thêm Attribute từ khóa tìm kiếm
		model.addAttribute("timKiem", timKiem);
//		Tính tổng trang trong phân trang
		List<ChuyenBay> tongDataSauTimKiem = chuyenBayService.timKiemChuyenBayTheoMaChuyenBay(timKiem);
		PhanTrang phanTrang = new PhanTrang();
		Integer totalPages = (int) Math.ceil((double) tongDataSauTimKiem.size() / phanTrang.getSoRecordsMoiTrang());
		model.addAttribute("totalPages", totalPages);
		phanTrang.setThuTuTrang(page);
		model.addAttribute("currentPage", page);
//		Lấy danh sách các chuyến bay sau khi tìm kiếm theo trang nhất định
		List<ChuyenBay> dataTheoTrang = chuyenBayService.timKiemChuyenBayTheoMaChuyenBayTheoTrang(phanTrang, timKiem);
		model.addAttribute("chuyenBays", dataTheoTrang);
		return "/admin/danhSachChuyenBaySauTimKiem";
	}
	
	//=================================================================================================
	/**
	 * @author TuanNHD
	 */
	@PostMapping(value = "/tim-chuyen-bay")
	public String timve(@ModelAttribute("timve") ChuyenBay cb, @RequestParam(name = "loaive") String loaive,
			ModelMap model, @RequestParam(defaultValue = "1") Integer page) {
		SettingPage pageAble = new SettingPage(page);
		String a = cb.getTuyenBay().getSanBayDi().getMaSanBay();
		String b = cb.getTuyenBay().getSanBayDen().getMaSanBay();
		LocalDate c = cb.getNgayKhoiHanh();
		List<Object[]> lit = new ArrayList<Object[]>();
		if (c == null) {
			List<Object[]> lit1 = chuyenBayService.findAllCB(a, b, pageAble);
			lit.addAll(lit1);
		} else {
			List<Object[]> lit1 = chuyenBayService.findAllCB(a, c, b, pageAble);
			lit.addAll(lit1);
		}
		for (int i = 0; i < lit.size(); i++) {
			ChuyenBay chuyenBay = (ChuyenBay) lit.get(i)[0];
			MayBay mayBay = (MayBay) lit.get(i)[3];
			int dem = thongTinThanhToanService.findCB(chuyenBay.getMaChuyenBay(), loaive).size();
			int soghethuong = mayBay.getSoLuongGhe() - mayBay.getSoLuongGheThuongGia();
			if (loaive.equals("lv001")) {
				if (dem >= mayBay.getSoLuongGheThuongGia()) {
					lit.remove(i);
				}
			} else if (dem >= soghethuong) {
				lit.remove(i);
			}
		}

		if (lit.size() == 0) {
			model.addAttribute("msg",
					"không có chuyến bay nào bạn cần tìm còn ghế trống hoặc thời điểm bạn chọn không có chuyến bay");
		}

		model.addAttribute("totalPages", chuyenBayService.totalPages(pageAble, lit));
		model.addAttribute("currentPage", page);
		model.addAttribute("list", lit);
		model.addAttribute("lv", loaiVeService.findById(loaive));
		return "/admin/hienThiDanhSachChuyenBay";
	}
}
