package hello.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DangNhapController {
	
	// Hiển thị màn hình Welcom
	@GetMapping(value = "/xin-chao")
	public String xinChao() {
		return "/chung/welcome";
	}
	
	// Hiển thị màn hình đăng nhập
	@GetMapping(value = "/dang-nhap")
	public String dangNhap (@RequestParam(name = "login-error", defaultValue = "false", required = false) boolean loginError, Model model) {
		if (loginError) {
			model.addAttribute("error", "Số điện thoại hoặc mật khẩu không đúng!!");
			return "/chung/dangNhap";		
		}
		return "/chung/dangNhap";
	}
	
	// Chức năng đăng xuất khi người dùng có đăng nhập và điều hướng về màn hình đăng nhập ban đầu
	@GetMapping(value = "/dang-xuat")
	public String dangXuat (HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		return "redirect:/dangNhap";
	}
	
	// Method này dùng để điều hướng theo phân quyền tới 2 trang khác nhau sau khi đăng nhập thành công
	@GetMapping(value = "/tra-cuu")
	public String hienThiTheoPhanQuyen() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		boolean isAdmin = authentication.getAuthorities().stream()
				.map(GrantedAuthority::getAuthority)
				.anyMatch(role -> role.equals("ROLE_ADMIN"));
		if (isAdmin) {
			return "redirect:/admin/tra-cuu";
		}
		return "redirect:/user/tra-cuu";
	}
}
