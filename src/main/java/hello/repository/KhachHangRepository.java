package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.KhachHang;
import hello.page.PageAble;

@Repository
public class KhachHangRepository {
	@Autowired
	SessionFactory sessionFactory;

//	public List<KhachHang> findAll() {
//		String hql = "SELECT d FROM KhachHang d";
//		return sessionFactory.getCurrentSession().createQuery(hql, KhachHang.class).getResultList();
//	}

	public void saveOrUpdate(KhachHang x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public List<KhachHang> findAll() {
		String hql = "SELECT t FROM ThongTinThanhToan t";
		return sessionFactory.getCurrentSession().createQuery(hql, KhachHang.class).getResultList();
	}

	public KhachHang findKH(String sDT) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "SELECT t FROM KhachHang t WHERE t.soDienThoai=:sdt";
		Query<KhachHang> query = session.createQuery(hql, KhachHang.class);
		query.setParameter("sdt", sDT);
		List<KhachHang> list = query.getResultList();
		return list.get(0);
	}

	public void update(final KhachHang thanhToan) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(thanhToan);
	}

	public KhachHang findById(int Id) {
		return sessionFactory.getCurrentSession().find(KhachHang.class, Id);
	}

	public void delete(int id) {
		KhachHang ttThanhToan = findById(id);
		sessionFactory.getCurrentSession().delete(ttThanhToan);
	}

	// phan trang khach hang

	public List<KhachHang> findWithPageAble_Minh(PageAble pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<KhachHang> khachHangs = session.createQuery("SELECT m FROM KhachHang m", KhachHang.class)
				.setFirstResult(pageAble.getOffset())// Offset
				.setMaxResults(pageAble.getSize()) // limit
				.getResultList();

		return khachHangs;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM KhachHang m", Long.class).getSingleResult();
	}
}
