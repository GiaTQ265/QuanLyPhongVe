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
import org.springframework.web.bind.annotation.RequestParam;

import hello.entity.TuyenBay;
import hello.page.PageAble;
import hello.service.SanBayService;
import hello.service.TuyenBayService;

@Controller
@RequestMapping(value = "/admin/tuyen-bay")
public class TuyenBayController {

	/**
	 * author HoangHDA
	 */
	@Autowired
	SanBayService sanBayService;
	@Autowired
	TuyenBayService tuyenBayService;
	
	@RequestMapping("/them-tuyen-bay")
	public String themTuyenBay(Model model) {
		model.addAttribute("tuyenbay", new TuyenBay());
		model.addAttribute("sanbays", sanBayService.findAll());
		return "/admin/themTuyenBay";
	}

	@PostMapping(value = "/luu-tuyen-bay")
	public String saveTuyenBay(@ModelAttribute("tuyenbay") @Valid TuyenBay tuyenBay, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			return "/admin/themTuyenBay";
		}

		if (tuyenBay.getSanBayDen().getMaSanBay().equals(tuyenBay.getSanBayDi().getMaSanBay())) {
			model.addAttribute("msg", "Mã sân bay đến không được trùng với mã sân bay đi");
			return "/admin/themTuyenBay";
		}
		String checkMaTuyenBay = tuyenBay.getMaTuyenBay();
		TuyenBay checkTuyenBay = tuyenBayService.maTuyenBay(checkMaTuyenBay);
		if (checkTuyenBay == null) {
			tuyenBayService.save(tuyenBay);
			model.addAttribute("tuyenbays", tuyenBayService.findAll());
			return "redirect:/admin/tuyen-bay/hien-thi-tuyen-bay";

		} else {
			model.addAttribute("maTuyenBayError", "Đã tồn tại mã tuyến bay trong hệ thống");
			return "/admin/themTuyenBay";
		}

	}

	@GetMapping(value = "/hien-thi-tuyen-bay")
	public String getAllmayWithPageAble(Model model, @RequestParam(defaultValue = "1") Integer page) {
		PageAble pageAble = new PageAble(page);
		List<TuyenBay> TuyenBays = tuyenBayService.findWithPageAble(pageAble);
		model.addAttribute("tuyenbays", TuyenBays);
		model.addAttribute("totalPages", tuyenBayService.totalPages(pageAble));
		model.addAttribute("currentPage", page);

		return "/admin/hienThiTuyenBay";
	}

	@GetMapping("/update/{maTuyenBay}")
	public String doGetXeUpdate(Model model, @PathVariable("maTuyenBay") String id) {
		model.addAttribute("TuyenBayForm", tuyenBayService.findById(id));
		model.addAttribute("sanbays", sanBayService.findAll());
		return "/admin/manHinhCapNhatTuyenBay";

	}

	@PostMapping(value = "/luu-cap-nhat")
	public String update(@ModelAttribute("TuyenBayForm") @Valid TuyenBay tuyenBay, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "/admin/manHinhCapNhatTuyenBay";
		}
		tuyenBayService.saveOrUpdate(tuyenBay);
//		model.addAttribute("tuyenbays", tuyenBayService.findAll());
//		model.addAttribute("update", "Đã cập nhật thành công");
		return "redirect:/admin/tuyenbay/hien-thi-tuyen-bay";
	}

	@GetMapping("/tim-kiem")
	public String doGetXeSearch(Model model, @RequestParam("search") String keySearch) {
		model.addAttribute("tuyenbays", tuyenBayService.search(keySearch));
		if (tuyenBayService.search(keySearch).size() == 0) {
			model.addAttribute("message", "Không có kết quả nào được tìm kiếm!");
		}
		return "/admin/hienThiTuyenBay";

	}

	@GetMapping("/delete/{maTuyenBay}")
	public String delete(@PathVariable("maTuyenBay") String maTuyenBay, Model model) {
		tuyenBayService.delete1(tuyenBayService.findById(maTuyenBay));
		return "redirect:/admin/tuyen-bay/hien-thi-tuyen-bay";
	}
}
