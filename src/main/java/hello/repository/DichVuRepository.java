package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.DichVu;
import hello.page.PageAble;

@Repository
public class DichVuRepository {
	@Autowired
	SessionFactory sessionFactory;

	public List<DichVu> findAll() {
		String hql = "SELECT d FROM DichVu d";
		return sessionFactory.getCurrentSession().createQuery(hql, DichVu.class).getResultList();
	}

	public void saveOrUpdate(DichVu x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public DichVu findById(String Id) {
		return sessionFactory.getCurrentSession().find(DichVu.class, Id);
	}

	public void delete(DichVu x) {
		sessionFactory.getCurrentSession().delete(x);
	}

	public List<DichVu> search(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		Query<DichVu> createQuery = session.createQuery("SELECT d FROM DichVu d where d.tenDichVu like :searchKey",
				DichVu.class);
		createQuery.setParameter("searchKey", "%" + searchKey + "%");
		List<DichVu> listRS = createQuery.getResultList();
		return listRS;
	}


	public void save(DichVu dichVu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(dichVu);
	}

	public void update(final DichVu dichVu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(dichVu);
	}

	public void delete(String id) {
		DichVu dichVu = findById(id);
		sessionFactory.getCurrentSession().delete(dichVu);
	}

	// phan trang dich vu
	public List<DichVu> findWithPageAble_Minh(PageAble pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<DichVu> DichVus = session.createQuery("SELECT m FROM DichVu m", DichVu.class)
				.setFirstResult(pageAble.getOffset())// Offset
				.setMaxResults(pageAble.getSize()) // limit
				.getResultList();
		return DichVus;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM DichVu m", Long.class).getSingleResult();
	}
}
