package hello.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hello.entity.KhachHang;
import hello.page.PageAble;
import hello.service.KhachHangService;

@Controller
@RequestMapping(value = "/admin/khach-hang")
public class KhachHangController {

	@Autowired
	KhachHangService khachHangService;
	
	/**
	 * author MinhMH
	 */
	
	@GetMapping("/ds-khach-hang")
	public String getAllmayWithPageAble2(Model model, @RequestParam(defaultValue = "1") Integer page) {
		PageAble pageAble = new PageAble(page);
		List<KhachHang> dsKhachHang = khachHangService.findWithPageAble(pageAble);
		model.addAttribute("dsKhachHang", dsKhachHang);
		model.addAttribute("totalPages", khachHangService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachNguoiDung";
	}
}
