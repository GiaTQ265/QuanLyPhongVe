package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.LoaiVe;
import hello.page.SettingPage;

@Repository
public class LoaiVeRepository {

	@Autowired
	SessionFactory sessionFactory;

	public void save(LoaiVe loaiVe) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(loaiVe);
	}

	public List<LoaiVe> findAll() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From LoaiVe LV Where LV.trangThai='1' ";
		List<LoaiVe> list = session.createQuery(hql, LoaiVe.class).getResultList();
		return list;
	}

	public LoaiVe findById(String maLoaiVe) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(LoaiVe.class, maLoaiVe);
		
	}

	public LoaiVe maLoaiVe(String maLoaiVe) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From LoaiVe where maLoaiVe =: maLoaiVe";
		Query query = session.createQuery(hql, LoaiVe.class);
		query.setParameter("maLoaiVe", maLoaiVe);
		if (query.getResultList().size() == 0) {
			return null;
		} else {
			LoaiVe loaiVe = (LoaiVe) query.getResultList().get(0);
			return loaiVe;
		}
	}

	public void delete(LoaiVe loaiVe) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(loaiVe);
	}

	// Phân trang hiển thị thông tin thanh toán
	public List<LoaiVe> findWithPageAble(SettingPage settingPage) {
		Session session = sessionFactory.getCurrentSession();
		List<LoaiVe> loaiVe = session.createQuery("SELECT LV FROM LoaiVe LV where LV.trangThai='1'", LoaiVe.class)
				.setFirstResult(settingPage.getFirstRecord())// Offset
				.setMaxResults(settingPage.getPageSize()) // limit
				.getResultList();
		return loaiVe;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM LoaiVe LV where LV.trangThai = '1'", Long.class)
				.getSingleResult();
	}

	// Phân trang khi tìm kiếm
	public List<LoaiVe> findWithPageAble(SettingPage settingPage, String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From LoaiVe as LV where  LV.trangThai ='1'and (LV.tenLoaiVe like :tenLoaiVe or LV.maLoaiVe like :maLoaiVe)";
		org.hibernate.query.Query<LoaiVe> createQuery = session.createQuery(hql, LoaiVe.class);
		createQuery.setParameter("tenLoaiVe", "%" + searchKey + "%");
		createQuery.setParameter("maLoaiVe", "%" + searchKey + "%");
		return createQuery.setFirstResult(settingPage.getFirstRecord())// Offset
				.setMaxResults(settingPage.getPageSize())// limit
				.getResultList();
	}

	public long countSearch(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select Count(*) From LoaiVe as LV where LV.trangThai ='1'and ( LV.tenLoaiVe like :tenLoaiVe or LV.maLoaiVe like :maLoaiVe )";
		org.hibernate.query.Query<Long> createQuery = session.createQuery(hql, Long.class);
		createQuery.setParameter("tenLoaiVe", "%" + searchKey + "%");
		createQuery.setParameter("maLoaiVe", "%" + searchKey + "%");
		return createQuery.getSingleResult();

	}
}
