package hello.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import hello.entity.ChuyenBay;
import hello.entity.TaiKhoan;
import hello.service.LoaiVeService;
import hello.service.SanBayService;
import hello.service.TaiKhoanService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	TaiKhoanService taiKhoanService;

	@Autowired
	SanBayService sanBayService;

	@Autowired
	LoaiVeService loaiVeService;

	@GetMapping(value = "/tra-cuu")
	public String hienThiManhinhUser(Model model) {
		model.addAttribute("timChuyenBay", new ChuyenBay());
		model.addAttribute("listSanBay", sanBayService.findAll());
		model.addAttribute("loaiVe", loaiVeService.findAll());
		return "/user/traCuu-User";
	}

	// Tới trang hỗ trợ
	@GetMapping(value = "/ho-tro")
	public String hoTro(Model model) {
		return "/user/hoTro";
	}

	@GetMapping(value = "/doi-mat-khau")
	public String hienThiDoiMatKhauForm(Model model) {
		model.addAttribute("doiMatKhauForm", new TaiKhoan());
		return "/user/doiMatKhau-User";
	}

	@PostMapping(value = "/doi-mat-khau")
	public String luuDoiMatKhauForm(@ModelAttribute(name = "doiMatKhauForm") @Valid TaiKhoan taiKhoan,
			BindingResult result, Model model, HttpServletRequest request, Principal principal) {

		// Kiểm tra mật khẩu cũ
		String passWordDB = taiKhoanService.timTheoSoDT(principal.getName()).getMatKhau(); // Mật khẩu trong database
		String passWordInput = request.getParameter("matKhauCu"); // Mật khẩu nhập vào

		if (!passwordEncoder.matches(passWordInput, passWordDB)) {
			model.addAttribute("doiMau1", "border: 1px red solid");
			model.addAttribute("message1", "Mật khẩu không đúng!");
			return "/user/doiMatKhau-User";
		}

		if (result.hasFieldErrors("matKhau")) {
			model.addAttribute("doiMau2", "border: 1px red solid");
			return "/user/doiMatKhau-User";
		}

		// Kiểm tra trùng lặp mật khẩu mới
		if (!taiKhoan.getMatKhau().equals(request.getParameter("xacNhanMatKhauMoi"))) {
			model.addAttribute("message3", "Mật khẩu không khớp. Hãy thử lại!");
			model.addAttribute("doiMau3", "border: 1px red solid");
			return "/user/doiMatKhau-User";
		}

		// Lưu mật khẩu mới
		taiKhoan.setSoDienThoai(principal.getName());
		taiKhoanService.luuDangKyForm(taiKhoan);

		return "redirect:/user/tra-cuu";
	}

}
