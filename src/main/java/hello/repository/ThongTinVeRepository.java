package hello.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.DichVu;
import hello.entity.ThongTinVe;

@Repository
public class ThongTinVeRepository {
	@Autowired
	SessionFactory sessionFactory;

	public List<ThongTinVe> findAll() {
		String hql = "SELECT d FROM ThongTinVe d";
		return sessionFactory.getCurrentSession().createQuery(hql, ThongTinVe.class).getResultList();
	}
	public List<Object[]> findAllByID(String id) {
		String hql = "FROM ChuyenBay d"
				+ " JOIN d.tuyenBay tb"
				+ " JOIN tb.sanBayDi sb"
				+ " JOIN d.mayBay "
				+ " JOIN tb.sanBayDen sbd"
				+ " where d.maChuyenBay =:id";
		Query<Object[]> query =  sessionFactory.getCurrentSession().createQuery(hql).setParameter("id", id);
		return query.getResultList();
	}

	public void saveOrUpdate(ThongTinVe x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public ThongTinVe findById(String Id) {
		return sessionFactory.getCurrentSession().find(ThongTinVe.class, Id);
	}

	public void delete(ThongTinVe x) {
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
}