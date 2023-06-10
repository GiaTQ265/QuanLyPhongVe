package hello.repository;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.TaiKhoan;

@Repository
public class TaiKhoanRepository {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void luuDangKyForm(TaiKhoan taiKhoan) {
		sessionFactory.getCurrentSession().saveOrUpdate(taiKhoan);
	}
	
	@Transactional
	public TaiKhoan timTheoSoDT(String soDienThoai) {
		return sessionFactory.getCurrentSession().find(TaiKhoan.class, soDienThoai);
	}
}
