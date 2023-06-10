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

import hello.entity.SanBay;
import hello.page.PageAbleHoang;
import hello.service.SanBayService;

@Controller
@RequestMapping(value = "/admin/san-bay")
public class SanBayController {

	@Autowired
	SanBayService sanBayService;
	
	/**
	 * @author HoangHDA
	 */
	@RequestMapping("/them-san-bay")
	public String themSanBay(Model model) {
		model.addAttribute("sanbay", new SanBay());
		return "/admin/themSanBay";
	}

	@PostMapping(value = "/luu-san-bay")
	public String save(@ModelAttribute("sanbay") @Valid SanBay sanBay, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "/admin/themSanBay";
		}

		String checkMaSanBay = sanBay.getMaSanBay();
		SanBay checkSanBay = sanBayService.maSanBay(checkMaSanBay);
		if (checkSanBay == null) {
			sanBayService.save(sanBay);
			model.addAttribute("sanbays", sanBayService.findAll());
			return "redirect:/admin/san-bay/hien-thi-san-bay";
		} else {
			model.addAttribute("maSanBayError", "Đã tồn tại mã sân bay trong hệ thống");
			return "/admin/themSanBay";
		}

	}

	@GetMapping(value = "/hien-thi-san-bay")
	public String getAllmayWithPageAble_Hoang(Model model, @RequestParam(defaultValue = "1") Integer page) {
		PageAbleHoang pageAble = new PageAbleHoang(page);
		List<SanBay> SanBays = sanBayService.findWithPageAble(pageAble);
		model.addAttribute("sanbays", SanBays);
		model.addAttribute("totalPages", sanBayService.totalPages(pageAble));
		model.addAttribute("currentPage", page);

		return "/admin/hienThiDSSanBayy";
	}

	@GetMapping("/update/{maSanBay}")
	public String doGetXeUpdate_Hoang(Model model, @PathVariable("maSanBay") String id) {
		model.addAttribute("SanBayForm", sanBayService.findById(id));
		return "/admin/manHinhCapNhatSanBay";

	}

	@PostMapping(value = "/luu-cap-nhat")
	public String update(@ModelAttribute("SanBayForm") @Valid SanBay sanBay, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "/admin/manHinhCapNhatSanBay";
		}
		sanBayService.saveOrUpdate(sanBay);
//		model.addAttribute("sanbays", sanBayService.findAll());
//		model.addAttribute("update", "Đã cập nhật thành công");
		return "redirect:/admin/sanbay/hienthisanbay";
	}

	@GetMapping("/tim-kiem")
	public String doGetXeSearch_Hoang(Model model, @RequestParam("search") String keySearch) {
		model.addAttribute("sanbays", sanBayService.search(keySearch));
		if (sanBayService.search(keySearch).size() == 0) {
			model.addAttribute("message", "Không có kết quả nào được tìm kiếm!");
		}
		return "/admin/hienThiDSSanBayy";

	}

	@GetMapping("/delete/{maSanBay}")
	public String delete_Hoang(@PathVariable(name = "maSanBay") String maSanBay, Model model) {
		sanBayService.delete(maSanBay);
		model.addAttribute("sanbays", sanBayService.findAll());
		return "redirect:/admin/san-bay/hien-thi-san-bay";
	}
}
