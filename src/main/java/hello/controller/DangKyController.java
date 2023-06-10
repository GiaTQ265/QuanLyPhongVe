package hello.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import hello.entity.TaiKhoan;
import hello.service.TaiKhoanService;

@Controller
public class DangKyController {

	@Autowired
	private TaiKhoanService taiKhoanService;

	@GetMapping(value = "/dang-ky")
	public String hienThiDangKyForm(Model model) {
		model.addAttribute("dangKyForm", new TaiKhoan());
		return "/chung/dangKy";
	}
	
	// Tới trang điều khoản
		@GetMapping(value = "/dieu-khoan")
		public String dieuKhoan(Model model) {
			return "chung/dieuKhoan";
		}
	
	@PostMapping(value = "/dang-ky")
	public String luuDangKyForm(@ModelAttribute("dangKyForm") @Valid TaiKhoan taiKhoan, BindingResult result, 
			HttpServletRequest request, Model model) {
		
		// Kiểm tra validate ở server
		if (result.hasFieldErrors("soDienThoai") && result.hasFieldErrors("matKhau")) {
			model.addAttribute("doiMau1", "border: 1px red solid");
			model.addAttribute("doiMau2", "border: 1px red solid");
			return "/chung/dangKy";
		}
		if (result.hasFieldErrors("soDienThoai")) {
			model.addAttribute("doiMau1", "border: 1px red solid");
			return "/chung/dangKy";
		}
		if (result.hasFieldErrors("matKhau")) {
			model.addAttribute("doiMau2", "border: 1px red solid");
			return "/chung/dangKy";
		}
		
		//Kiểm tra tồn tại trông database
		if (taiKhoanService.timTheoSoDT(taiKhoan.getSoDienThoai()) != null) {
			model.addAttribute("doiMau1", "border: 1px red solid");
			model.addAttribute("message", "Số điện thoại này đã tồn tại!!!");
			return "/chung/dangKy";
		}
		
		//Kiểm tra mật khẩu và xác nhận mật khẩu có trùng nhau không - Validate
		if (!taiKhoan.getMatKhau().equals(request.getParameter("xacNhanMatKhau"))) {
			model.addAttribute("error3", "Mật khẩu không khớp. Hãy thử lại!");
			model.addAttribute("doiMau3", "border: 1px red solid");
			return "/chung/dangky";
		}
		
		// Lưu thông tin vào databasep
		taiKhoanService.luuDangKyForm(taiKhoan);
		return "redirect:/dang-nhap";
	}
}
