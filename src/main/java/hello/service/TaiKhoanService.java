package hello.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import hello.entity.TaiKhoan;
import hello.repository.TaiKhoanRepository;

@Service
public class TaiKhoanService {

	@Autowired
	TaiKhoanRepository taiKhoanRepository;
	
	@Autowired
	PasswordEncoder passEncoder;
	
	@Transactional
	public void luuDangKyForm(TaiKhoan taiKhoan) {
		taiKhoan.setVaiTro("ROLE_ADMIN");
		taiKhoan.setTrangThai("1");
		taiKhoan.setMatKhau(passEncoder.encode(taiKhoan.getMatKhau()));
		taiKhoanRepository.luuDangKyForm(taiKhoan);
	}
	
	public TaiKhoan timTheoSoDT(String soDienThoai) {
		return taiKhoanRepository.timTheoSoDT(soDienThoai);
	}
}
