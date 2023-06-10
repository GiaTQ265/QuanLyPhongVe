package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.TuyenBay;
import hello.page.PageAble;

@Repository

public class TuyenBayRepository {

	@Autowired
	SessionFactory sessionFactory;
	
	public List<TuyenBay> findAll() {
		String hql = "SELECT d FROM TuyenBay d";
		return sessionFactory.getCurrentSession().createQuery(hql, TuyenBay.class).getResultList();
	}

	public TuyenBay findById(String Id) {
		return sessionFactory.getCurrentSession().find(TuyenBay.class, Id);
	}

	public void save(TuyenBay TuyenBay) {
		Session session = sessionFactory.getCurrentSession();
		session.save(TuyenBay);
	}

	public void delete(TuyenBay TuyenBay) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(TuyenBay);
	}

	public void saveOrUpdate(TuyenBay TuyenBay) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(TuyenBay);
	}

	public TuyenBay maTuyenBay(String maTuyenBay) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From TuyenBay as m where maTuyenBay = :maTuyenBay";
		javax.persistence.Query query = session.createQuery(hql, TuyenBay.class);
		query.setParameter("maTuyenBay", maTuyenBay);
		if (query.getResultList().size() == 0) {
			return null;
		} else {
			TuyenBay TuyenBay = (TuyenBay) query.getResultList().get(0);
			return TuyenBay;
		}
	}

	public List<TuyenBay> findWithPageAble(PageAble pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<TuyenBay> DichVus = session.createQuery("SELECT m FROM TuyenBay m", TuyenBay.class)
				.setFirstResult(pageAble.getOffset())// Offset
				.setMaxResults(pageAble.getSize()) // limit
				.getResultList();

		return DichVus;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM TuyenBay m", Long.class).getSingleResult();
	}

	public List<TuyenBay> search(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		Query<TuyenBay> createQuery = session.createQuery("SELECT d FROM TuyenBay d where d.maTuyenBay like :searchKey",
				TuyenBay.class);
		createQuery.setParameter("searchKey", "%" + searchKey + "%");
		List<TuyenBay> listRS = createQuery.getResultList();
		return listRS;
	}
}
