package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.MayBay;
import hello.page.SettingPage;

@Repository
public class MayBayRepository {

	@Autowired
	SessionFactory sessionFactory;

	public List<MayBay> findAll() {
		String hql = "SELECT d FROM MayBay d where d.trangThai <> '0'";
		return sessionFactory.getCurrentSession().createQuery(hql, MayBay.class).getResultList();
	}

	public List<MayBay> findAllWithAble(SettingPage pageAble) {
		String hql = "SELECT d FROM MayBay d where d.trangThai <> '0'";
		return sessionFactory.getCurrentSession().createQuery(hql, MayBay.class)
				.setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM MayBay m where m.trangThai <> '0' ", Long.class)
				.getSingleResult();
	}

	public long count(String search) {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery(
				"SELECT COUNT(*) FROM MayBay d where d.trangThai <> '0' and (d.maMayBay like:search1 or d.tenMayBay like : search2)",
				Long.class).setParameter("search1", search);
		return query.setParameter("search2", search).getSingleResult();
	}

	public List<MayBay> findAllSearch(String search, SettingPage pageAble) {
		String hql = "SELECT d FROM MayBay d where d.trangThai <> '0'and ( d.maMayBay like:search1 or d.tenMayBay like : search2)";
		Query<MayBay> query = sessionFactory.getCurrentSession().createQuery(hql, MayBay.class).setParameter("search1",
				"%" + search + "%");

		return query.setParameter("search2", "%" + search + "%").setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();
	}

	public void saveOrUpdate(MayBay x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public MayBay findById(String Id) {
		return sessionFactory.getCurrentSession().find(MayBay.class, Id);
	}

	public void delete(MayBay x) {
		x.setTrangThai("0");
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}
}
