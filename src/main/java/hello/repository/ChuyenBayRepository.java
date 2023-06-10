package hello.repository;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.ChuyenBay;
import hello.entity.MayBay;
import hello.entity.TuyenBay;
import hello.page.PhanTrang;
import hello.page.SettingPage;

@Repository
public class ChuyenBayRepository {

	@Autowired
	SessionFactory sessionFactory;

	public List<ChuyenBay> findAll() {
		String hql = "SELECT d FROM ChuyenBay d";
		return sessionFactory.getCurrentSession().createQuery(hql, ChuyenBay.class).getResultList();
	}

	public void saveOrUpdate(ChuyenBay x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public ChuyenBay findById(String Id) {
		return sessionFactory.getCurrentSession().find(ChuyenBay.class, Id);
	}

	public void delete(ChuyenBay x) {
		sessionFactory.getCurrentSession().delete(x);
	}

	public List<ChuyenBay> search(String searchKey1, String searchKey2, LocalDate searchKey3) {
		Session session = sessionFactory.getCurrentSession();
		Query<ChuyenBay> createQuery = session.createQuery(
				"FROM ChuyenBay m where m.tuyenBay.sanBayDi.maSanBay = :searchKey1"
						+ "and m.tuyenBay.sanBayDi.maSanBay = :searchKey2" + "and m.ngayKhoiHanh=:searchKey3",
				ChuyenBay.class);
		createQuery.setParameter("searchKey1", searchKey1);
		createQuery.setParameter("searchKey2", searchKey2);
		createQuery.setParameter("searchKey3", "'" + searchKey3 + "'");
		List<ChuyenBay> listRS = createQuery.getResultList();
		return listRS;
	}

	public List<Object[]> findAllCB(String tim, LocalDate x, String y, SettingPage pageAble) {
		String hql = "FROM ChuyenBay d JOIN d.tuyenBay tb JOIN tb.sanBayDi sb JOIN d.mayBay where d.tuyenBay.sanBayDi.maSanBay=:z and d.ngayKhoiHanh=:x and d.tuyenBay.sanBayDen.maSanBay=:y";
		Query<Object[]> query = sessionFactory.openSession().createQuery(hql).setParameter("z", tim);
		query.setParameter("x", x);
		query.setParameter("y", y);
		return query.setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();
	}

	public List<Object[]> findAllCB(String tim, String y, SettingPage pageAble) {
		String hql = "FROM ChuyenBay d JOIN d.tuyenBay tb JOIN tb.sanBayDi sb JOIN d.mayBay where d.tuyenBay.sanBayDi.maSanBay=:z and d.tuyenBay.sanBayDen.maSanBay=:y";
		Query<Object[]> query = sessionFactory.openSession().createQuery(hql).setParameter("z", tim);
		query.setParameter("y", y);
		return query.setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();
	}

	public long count(List<Object[]> lit) {
		return lit.size();
	}

	public List<ChuyenBay> timTatCaChuyenBay() {
		String hql = "SELECT d FROM ChuyenBay d WHERE d.trangThai = '1'";
		return sessionFactory.getCurrentSession().createQuery(hql, ChuyenBay.class).getResultList();
	}

	public List<ChuyenBay> timKiemChuyenBayTheoMaChuyenBay(String timKiem) {
		String hql = "SELECT d FROM ChuyenBay d WHERE d.trangThai = '1' AND d.maChuyenBay like : timKiem";
		return sessionFactory.getCurrentSession().createQuery(hql, ChuyenBay.class)
				.setParameter("timKiem", "%" + timKiem + "%").getResultList();
	}

	public List<ChuyenBay> timChuyenBayTheoTrang(PhanTrang phanTrang) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT d FROM ChuyenBay d WHERE d.trangThai = '1'";
		List<ChuyenBay> list = session.createQuery(hql, ChuyenBay.class).setFirstResult(phanTrang.getSoRecordsOff())// Offset
				.setMaxResults(phanTrang.getSoRecordsMoiTrang()) // limit
				.getResultList();
		return list;
	}

	public List<ChuyenBay> timKiemChuyenBayTheoMaChuyenBayTheoTrang(PhanTrang phanTrang, String timKiem) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT d FROM ChuyenBay d WHERE d.trangThai = '1' AND d.maChuyenBay like : timKiem";
		List<ChuyenBay> list = session.createQuery(hql, ChuyenBay.class).setParameter("timKiem", "%" + timKiem + "%")
				.setFirstResult(phanTrang.getSoRecordsOff())// Offset
				.setMaxResults(phanTrang.getSoRecordsMoiTrang()) // limit
				.getResultList();
		return list;
	}

	public List<ChuyenBay> search(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		Query<ChuyenBay> createQuery = session
				.createQuery("SELECT d FROM ChuyenBay d where d.tenChuyenBay like :searchKey", ChuyenBay.class);
		createQuery.setParameter("searchKey", "%" + searchKey + "%");
		List<ChuyenBay> listRS = createQuery.getResultList();
		return listRS;
	}

	public List<TuyenBay> timTuyenBay() {
		String hql = "SELECT d FROM TuyenBay d WHERE d.trangThai = '1'";
		return sessionFactory.getCurrentSession().createQuery(hql, TuyenBay.class).getResultList();
	}

	public List<MayBay> timMayBay() {
		String hql = "SELECT d FROM MayBay d WHERE d.trangThai =: trangThai";
		return sessionFactory.getCurrentSession().createQuery(hql, MayBay.class).setParameter("trangThai", "San sang")
				.getResultList();
	}

	public TuyenBay timTuyenBayTheoId(String id) {
		return sessionFactory.getCurrentSession().find(TuyenBay.class, id);
	}

	public MayBay timMayBayTheoId(String id) {
		return sessionFactory.getCurrentSession().find(MayBay.class, id);
	}
}
