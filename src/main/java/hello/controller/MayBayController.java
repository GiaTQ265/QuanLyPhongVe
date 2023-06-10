package hello.controller;

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

import hello.entity.MayBay;
import hello.page.SettingPage;
import hello.service.MayBayService;

@Controller
@RequestMapping(value = "/admin/may-bay")
public class MayBayController {

	@Autowired
	MayBayService mayBayService;
	
	@GetMapping(value = "/add-may-bay")
	public String addmaybay(Model model) {
		model.addAttribute("maybay", new MayBay());
		return "/admin/manHinhThemMayBay";
	}

	@GetMapping(value = "/danh-sach-may-bay")
	public String danhsachmaybay(Model model, @RequestParam(defaultValue = "1") Integer page) {
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("maybays", mayBayService.findAllWithAble(pageAble));
		model.addAttribute("totalPages", mayBayService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachMayBay";
	}

	@PostMapping(value = "/save-may-bay")
	public String savemaybay(@ModelAttribute("maybay") @Valid MayBay maybay, BindingResult rs, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		if (mayBayService.findById(maybay.getMaMayBay()) != null) {

			model.addAttribute("msg", "da ton tai ma may bay");
			return "/admin/manHinhThemMayBay";
		}
		if (rs.hasErrors()) {

			return "/admin/manHinhThemMayBay";
		}
		mayBayService.saveOrUpdate(maybay);
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("maybays", mayBayService.findAllWithAble(pageAble));
		model.addAttribute("totalPages", mayBayService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachMayBay";
	}

	@PostMapping(value = "/cap-nhat-may-bay")
	public String capnhatmaybay(@ModelAttribute("maybay") @Valid MayBay maybay, BindingResult rs, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		if (rs.hasErrors()) {

			return "/admin/manHinhThemMayBay";
		}
		mayBayService.saveOrUpdate(maybay);
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("maybays", mayBayService.findAllWithAble(pageAble));
		model.addAttribute("totalPages", mayBayService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachMayBay";
	}

	@GetMapping(value = "/sua-may-bay/{id}")
	public String suamaybay(@PathVariable("id") String id, Model model) {
		model.addAttribute("maybay", mayBayService.findById(id));
		return "/admin/manHinhThemMayBay2";
	}

	@GetMapping(value = "/xoa-may-bay/{id}")
	public String xoamaybay(@PathVariable("id") String id) {
		mayBayService.delete(mayBayService.findById(id));
		return "redirect:/admin/maybay/danhsachmaybay";
	}

	@GetMapping(value = "/tim-may-bay")
	public String timmaybay(@RequestParam("search") String search, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("maybays", mayBayService.findAllSearch(search, pageAble));
		model.addAttribute("totalPages", mayBayService.totalPages(pageAble,search));
		model.addAttribute("currentPage", page);
		model.addAttribute("key", search);
		return "/admin/danhSachMayBay2";
	}
}
