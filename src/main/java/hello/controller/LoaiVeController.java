package hello.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import hello.entity.LoaiVe;
import hello.page.SettingPage;
import hello.service.LoaiVeService;
import hello.service.ThongTinThanhToanService;
import hello.service.ThongTinVeService;

/**
 * author GiaTQ
 */

@Controller
@RequestMapping(value = "/admin/loai-ve")
public class LoaiVeController {

	@Autowired
	ThongTinThanhToanService thongTinThanhToanService;

	@Autowired
	LoaiVeService loaiVeService;

	@Autowired
	ThongTinVeService thongTinVeService;

	// Tới trang thêm loại vé
	@GetMapping(value = "/man-hinh-them-loai-ve")
	public String themLoaiVe(Model model) {
		model.addAttribute("LoaiVe", new LoaiVe());
		return "/admin/manHinhThemLoaiVe";
	}

	// Thêm dữ liệu vào database
	@PostMapping(value = "/man-hinh-them-loai-ve")
	public String save(@ModelAttribute("LoaiVe") @Valid LoaiVe loaiVe, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "/admin/manHinhThemLoaiVe";
		}

		// kiểm tra tồn tại
		String checkMaLoaiVe = loaiVe.getMaLoaiVe();
		LoaiVe checkLoaiVe = loaiVeService.maLoaiVe(checkMaLoaiVe);
		if (checkLoaiVe == null) {
			loaiVe.setTrangThai("1");
			loaiVeService.save(loaiVe);
			model.addAttribute("LoaiVe", loaiVeService.findAll());
			return "redirect:/admin/loai-ve/danh-sach-loai-ve";
		} else {
			model.addAttribute("maLoaiVe", "Đã tồn tại mã loại vé trong hệ thống");
			return "/admin/manHinhThemLoaiVe";
		}

	}

	// Hiển thị dữ liệu loại vé
	@RequestMapping(value = "/danh-sach-loai-ve", method = RequestMethod.GET)
	public String danhSachLoaiVe(Model model, @RequestParam(defaultValue = "1") Integer page) {
		SettingPage settingPage = new SettingPage(page);
		List<LoaiVe> loaiVe = loaiVeService.findWithPageAble(settingPage);
		model.addAttribute("LoaiVe", loaiVe);
		model.addAttribute("totalPages", loaiVeService.totalPages(settingPage));
		model.addAttribute("currentPage", page);
		return "admin/danhSachLoaiVe";
	}

	// Xóa loại vé
	@GetMapping("/xoa-loai-ve/{maLoaiVe}")
	public String delete_Gia(@PathVariable(name = "maLoaiVe") String maLoaiVe, Model model) {
		LoaiVe loaiVe = loaiVeService.findById(maLoaiVe);
		loaiVe.setTrangThai("0");
		loaiVeService.save(loaiVe);
		return "redirect:/admin/loai-ve/danh-sach-loai-ve";
	}

	// Tới trang chỉnh sửa loại vé
	@RequestMapping(value = "/chinh-sua/{maLoaiVe}")
	public String chinhSua(@PathVariable(name = "maLoaiVe") String maLoaiVe, Model model) {
		LoaiVe loaiVe = loaiVeService.findById(maLoaiVe);
		model.addAttribute("LoaiVe", loaiVe);
		return "admin/chinhSuaLoaiVe";
	}

	// Chỉnh sửa loại vé
	@PostMapping(value = "/chinh-sua")
	public String chinhSua(@ModelAttribute("LoaiVe") @Valid LoaiVe loaiVe, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "admin/chinhSuaLoaiVe";
		}
		loaiVe.setTrangThai("1");
		loaiVeService.save(loaiVe);
		model.addAttribute("LoaiVe", loaiVeService.findAll());
		model.addAttribute("message", "Cập nhật thành công");
		return "admin/danhSachLoaiVe";
	}

	// Tìm kiếm loại vé
	@GetMapping("/tim-kiem")
	public String timKiem(@RequestParam(name = "searchKey") String searchKey, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		SettingPage settingPage = new SettingPage(page);
		List<LoaiVe> loaiVe = loaiVeService.findWithPageAble(settingPage, searchKey);
		model.addAttribute("LoaiVe", loaiVe);
		model.addAttribute("totalPages", loaiVeService.totalPages(settingPage, searchKey));
		model.addAttribute("currentPage", page);
		model.addAttribute("key1", searchKey);
		if (loaiVe.size() == 0) {
			model.addAttribute("timKiems", "Không có kết quả tìm kiếm (Vui lòng tìm kiếm theo mã loại vé hoặc tên loại vé)");
		}
		return "admin/danhSachLoaiVe2";
	}
}
