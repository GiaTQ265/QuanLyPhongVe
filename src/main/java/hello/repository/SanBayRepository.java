package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.SanBay;
import hello.page.PageAbleHoang;

@Repository
public class SanBayRepository {

	@Autowired
	SessionFactory sessionFactory;

	public List<SanBay> findAll() {
		String hql = "SELECT d FROM SanBay d";
		return sessionFactory.getCurrentSession().createQuery(hql, SanBay.class).getResultList();
	}

	public SanBay findById(String Id) {
		return sessionFactory.getCurrentSession().find(SanBay.class, Id);
	}

	public void save(SanBay sanBay) {
		Session session = sessionFactory.getCurrentSession();
		session.save(sanBay);
	}

	public void delete(SanBay sanBay) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(sanBay);
	}

	public void saveOrUpdate(SanBay sanBay) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(sanBay);
	}

	public SanBay maSanBay(String maSanBay) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From SanBay as m where maSanBay = :maSanBay";
		javax.persistence.Query query = session.createQuery(hql, SanBay.class);
		query.setParameter("maSanBay", maSanBay);
		if (query.getResultList().size() == 0) {
			return null;
		} else {
			SanBay sanbay = (SanBay) query.getResultList().get(0);
			return sanbay;
		}
	}

	public List<SanBay> findWithPageAble(PageAbleHoang pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<SanBay> DichVus = session.createQuery("SELECT m FROM SanBay m", SanBay.class)
				.setFirstResult(pageAble.getOffset())// Offset
				.setMaxResults(pageAble.getSize()) // limit
				.getResultList();

		return DichVus;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM SanBay m", Long.class).getSingleResult();
	}

	public List<SanBay> search(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		Query<SanBay> createQuery = session.createQuery(
				"SELECT d FROM SanBay d where d.maSanBay like :searchKey or d.tenSanBay like :searchKey or d.diaDiem like :searchKey",
				SanBay.class);
		createQuery.setParameter("searchKey", "%" + searchKey + "%");
		List<SanBay> listRS = createQuery.getResultList();
		return listRS;
	}
}
