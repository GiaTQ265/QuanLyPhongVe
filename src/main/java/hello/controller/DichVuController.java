package hello.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hello.entity.DichVu;
import hello.page.PageAble;
import hello.service.DichVuService;

@Controller
@RequestMapping(value = "/admin/dich-vu")
public class DichVuController {

	@Autowired
	DichVuService dichVuService;
	/**
	 * author MinhMH
	 */

	// -- Quản lý dịch vụ ---

	@GetMapping(value = "/them-dich-vu")
	public String themDichVu(Model model) {
		model.addAttribute("dichvuForm", new DichVu());
		return "/admin/manHinhThemDichVu";
	}

	// thêm mới dịch vụ
	@PostMapping("/luu-dich-vu")
	public String luuDichVu(@ModelAttribute("dichvuForm") @Valid DichVu dichVu, BindingResult result, Model model) {
		// check id trung
		DichVu dichVu1 = dichVuService.findById(dichVu.getMaDichVu());
		if (dichVu1 != null) {
			model.addAttribute("msg", "Đã tồn tại mã dịch vụ!");
			return "/admin/manHinhThemDichVu";
		}
		// check validate
		if (result.hasErrors()) {
			return "/admin/manHinhThemDichVu";
		}
		// lưu xuong db
		dichVuService.save(dichVu);
		return "redirect:/admin/dich-vu/ds-dich-vu";
	}

	// xóa dịch vụ
	@GetMapping(value = "/xoa-dich-vu")
	public String xoaDV(@RequestParam("maDichVu") String id) {
		dichVuService.delete(id);
		return "redirect:/admin/dich-vu/ds-dich-vu";
	}

	// Chỉnh sửa dịch vụ
	@GetMapping("/sua-dich-vu")
	public String suaDV(@RequestParam("maDichVu") String id, Model model) {
		model.addAttribute("sua-dichvuForm", new DichVu());
		model.addAttribute("maDichVu", id);
		return "/admin/manHinhSuaDichVu";
	}

	// Lưu sau khi chỉnh sửa dịch vụ
	@PostMapping("/sua-dich-vu")
	public String suaDichVu(@ModelAttribute("sua-dichvuForm") @Valid DichVu dichVu, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "/admin/manHinhSuaDichVu";
		}
		dichVuService.update(dichVu);
		return "redirect:/admin/dich-vu/ds-dich-vu";
	}

	// tìm kiếm theo tên dịch vụ
	@GetMapping(value = "/tim-kiem-dv")
	public String timKiemDV(@RequestParam("search") String name, Model model) {
		List<DichVu> timDV = dichVuService.search(name);
		if (timDV.size() == 0) {
			model.addAttribute("msg", "Không tìm thấy!");
			return "/admin/danhSachDichVu";
		}
		model.addAttribute("dsDichVu", timDV);
		return "/admin/danhSachDichVu";
	}

	// phan trang
	@GetMapping("/ds-dich-vu")
	public String getAllmayWithPageAble_Minh(Model model, @RequestParam(defaultValue = "1") Integer page) {
		PageAble pageAble = new PageAble(page);
		List<DichVu> dsDichVu = dichVuService.findWithPageAble_Minh(pageAble);
		model.addAttribute("dsDichVu", dsDichVu);
		model.addAttribute("totalPages", dichVuService.totalPages_Minh(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachDichVu";
	}



}
