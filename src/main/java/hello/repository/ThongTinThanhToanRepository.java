package hello.repository;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.entity.ThongTinThanhToan;
import hello.page.PageAble;
import hello.page.SettingPage;

@Repository
public class ThongTinThanhToanRepository {
	@Autowired
	SessionFactory sessionFactory;

	public List<ThongTinThanhToan> findAll() {
		String hql = "SELECT d FROM ThongTinThanhToan d";
		return sessionFactory.getCurrentSession().createQuery(hql, ThongTinThanhToan.class).getResultList();
	}

	public List<Object[]> findAllByJoinByID(String id) {
		String hql = "FROM ThongTinThanhToan tt" + " JOIN tt.thongTinVe ttv" + " JOIN ttv.chuyenBay d "
				+ " JOIN d.tuyenBay tb" + " JOIN tb.sanBayDi sb" + " JOIN d.mayBay " + " JOIN tb.sanBayDen sbd "
				+ " JOIN ttv.khachHang kh" + " JOIN ttv.loaiVe lv" + " where ttv.maVe =:id";
		Query<Object[]> query = sessionFactory.getCurrentSession().createQuery(hql).setParameter("id", id);
		return query.getResultList();
	}

	public List<ThongTinThanhToan> findChuyenBay(String maChuyenBay) {
		String hql = "SELECT t FROM ThongTinThanhToan t where t.thongTinVe.chuyenBay.maChuyenBay=:mcb";
		Query<ThongTinThanhToan> query = sessionFactory.getCurrentSession().createQuery(hql, ThongTinThanhToan.class)
				.setParameter("mcb", maChuyenBay);
		return query.getResultList();
	}

	public List<ThongTinThanhToan> findCB(String mcb, String mlv) {
		String hql = "SELECT t FROM ThongTinThanhToan t where t.thongTinVe.chuyenBay.maChuyenBay=:mcb and t.thongTinVe.loaiVe.maLoaiVe=:mlv";
		Query<ThongTinThanhToan> query = sessionFactory.getCurrentSession().createQuery(hql, ThongTinThanhToan.class)
				.setParameter("mcb", mcb);
		query.setParameter("mlv", mlv);
		return query.getResultList();
	}

	public void saveOrUpdate(ThongTinThanhToan x) {
		sessionFactory.getCurrentSession().saveOrUpdate(x);
	}

	public ThongTinThanhToan findById(int maTTThanhToan) {
		return sessionFactory.getCurrentSession().find(ThongTinThanhToan.class, maTTThanhToan);
	}

	public void delete(ThongTinThanhToan x) {
		sessionFactory.getCurrentSession().delete(x);
	}

	public List<ThongTinThanhToan> findWithPageAble(SettingPage pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<ThongTinThanhToan> As = session.createQuery("SELECT m FROM ThongTinThanhToan m", ThongTinThanhToan.class)
				.setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();

		return As;
	}

	public List<ThongTinThanhToan> findWithPageAble(SettingPage pageAble, String key) {
		Session session = sessionFactory.getCurrentSession();
		Query<ThongTinThanhToan> query = session.createQuery(
				"SELECT m FROM ThongTinThanhToan m where m.thongTinVe.khachHang.ten like :key or m.thongTinVe.khachHang.soDienThoai like :key1 ",
				ThongTinThanhToan.class);
		query.setParameter("key", "%" + key + "%");
		query.setParameter("key1", "%" + key + "%");
		List<ThongTinThanhToan> As = query.setFirstResult(pageAble.getFirstRecord())// Offset
				.setMaxResults(pageAble.getPageSize()) // limit
				.getResultList();

		return As;
	}

	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM ThongTinThanhToan m", Long.class).getSingleResult();
	}

	// =========================================MINH================================
	public List<ThongTinThanhToan> findByTrangThai() {
		String hql = "SELECT t FROM ThongTinThanhToan t WHERE trangThai = 'Đã thanh toán'";
		return sessionFactory.getCurrentSession().createQuery(hql, ThongTinThanhToan.class).getResultList();
	}

	public void update(final ThongTinThanhToan thanhToan) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(thanhToan);
	}

	public void delete(int id) {
		ThongTinThanhToan ttThanhToan = findById(id);
		sessionFactory.getCurrentSession().delete(ttThanhToan);
	}

	public List<ThongTinThanhToan> search_Minh(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		Query<ThongTinThanhToan> createQuery = session.createQuery(
				"SELECT  d FROM ThongTinThanhToan d where trangThai = 'Đã thanh toán' and  d.thongTinVe.khachHang.soDienThoai like :searchKey",
				ThongTinThanhToan.class);
		createQuery.setParameter("searchKey", "%" + searchKey + "%");
		List<ThongTinThanhToan> listRs = createQuery.getResultList();
		return listRs;
	}

	public List<ThongTinThanhToan> findWithPageAble_Minh(PageAble pageAble) {
		Session session = sessionFactory.getCurrentSession();
		List<ThongTinThanhToan> thanhtoan = session
				.createQuery("SELECT t FROM ThongTinThanhToan t", ThongTinThanhToan.class)
				.setFirstResult(pageAble.getOffset())// Offset
				.setMaxResults(pageAble.getSize()) // limit
				.getResultList();

		return thanhtoan;
	}

	public long count_Minh() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT COUNT(*) FROM ThongTinThanhToan m ", Long.class).getSingleResult();
	}

	// ============================================GIA==============================================

	// Cập nhật trạng thái
//	public void capNhatTT(int maTTThanhToan) {
//		ThongTinThanhToan tt = findById(maTTThanhToan);
//		tt.setTrangThai("Da thanh toan");
//		update(tt);
//	}
//
//	// Hiển thị thông tin thanh toán với trạng thái chưa thanh toán
//	public List<ThongTinThanhToan> thongTinTTDanhSachTheoTrangThai() {
//		Session session = sessionFactory.getCurrentSession();
//		String sql = "select * from ThongTinThanhToan where trangThai = 'Chua thanh toan'";
//		List<ThongTinThanhToan> list = session.createSQLQuery(sql).getResultList();
//		return list;
//	}
//
//	// Hiển thị thông tin thanh toán với trạng thái chưa thanh toán
//	public List<Object[]> findAllByJoin() {
//		LocalDate ngayHienTai = LocalDate.now();
//		LocalDate date = LocalDate.now().minusDays(1);
//		LocalTime time = LocalTime.now();
//		String sql = "Select ttv.maVe,ttv.maChuyenBay,kh.soDienThoai,lv.maLoaiVe,dv.maDichVu,tt.gioThanhToan,tt.ngayThanhToan,tt.trangThai,tt.maTTThanhToan \r\n"
//				+ "from ThongTinThanhToan tt\r\n" + "inner join ThongTinVe ttv on tt.maVe = ttv.maVe \r\n"
//				+ "inner join DichVu dv on ttv.maDichVu = dv.maDichVu\r\n"
//				+ "inner join LoaiVe lv on ttv.maLoaiVe = lv.maLoaiVe\r\n"
//				+ "inner join KhachHang kh on ttv.maKhachHang = kh.maKhachHang\r\n"
//				+ "where tt.trangThai ='Chua thanh toan' and "
//				+ "((tt.ngayThanhToan = :ngayThanhToan AND tt.gioThanhToan >= :gioThanhToan)"
//				+ "OR (tt.ngayThanhToan >= :ngayHienTai))";
//		@SuppressWarnings("unchecked")
//		Query<Object[]> query = sessionFactory.getCurrentSession().createNativeQuery(sql)
//				.setParameter("ngayThanhToan", date).setParameter("gioThanhToan", time)
//				.setParameter("ngayHienTai", ngayHienTai);
//		return query.getResultList();
//	}
//
//	// Phân trang khi tìm kiếm
//	public List<Object[]> findWithPageAble_Gia(String searchKey) {
//		Session session = sessionFactory.getCurrentSession();
//		String sql = "Select ttv.maVe,ttv.maChuyenBay,kh.soDienThoai,lv.maLoaiVe,dv.maDichVu,tt.gioThanhToan,tt.ngayThanhToan,tt.trangThai,tt.maTTThanhToan \r\n"
//				+ "from ThongTinThanhToan tt\r\n" 
//				+ "inner join ThongTinVe ttv on tt.maVe = ttv.maVe \r\n"
//				+ "inner join DichVu dv on ttv.maDichVu = dv.maDichVu\r\n"
//				+ "inner join LoaiVe lv on ttv.maLoaiVe = lv.maLoaiVe\r\n"
//				+ "inner join KhachHang kh on ttv.maKhachHang = kh.maKhachHang\r\n"
//				+ "where tt.trangThai ='Chua thanh toan' and ttv.maVe like '%"+searchKey+"%'";
//		org.hibernate.query.Query<Object[]> createQuery = session.createSQLQuery(sql);
//		return createQuery.getResultList();
//
//	}

	// Cập nhật trạng thái
	public void capNhatTT(int maTTThanhToan) {
		ThongTinThanhToan tt = findById(maTTThanhToan);
		tt.setTrangThai("Da thanh toan");
		update(tt);
	}

	// Hiển thị thông tin thanh toán với trạng thái chưa thanh toán
	public List<ThongTinThanhToan> thongTinTTDanhSachTheoTrangThai() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From ThongTinThanhToan where trangThai = 'Chua thanh toan'";
		List<ThongTinThanhToan> list = session.createQuery(hql, ThongTinThanhToan.class).getResultList();
		return list;
	}

	// Hiển thị thông tin thanh toán với trạng thái chưa thanh toán
	public List<Object[]> findAllByJoin(SettingPage settingPage) {
		LocalDate ngayHienTai = LocalDate.now();
		LocalDate date = LocalDate.now().minusDays(1);
		LocalTime time = LocalTime.now();
		String sql = "Select ttv.maVe,ttv.maChuyenBay,kh.soDienThoai,lv.maLoaiVe,dv.maDichVu,tt.gioThanhToan,tt.ngayThanhToan,tt.trangThai,tt.maTTThanhToan \r\n"
				+ "from ThongTinThanhToan tt\r\n" + "inner join ThongTinVe ttv on tt.maVe = ttv.maVe \r\n"
				+ "inner join DichVu dv on ttv.maDichVu = dv.maDichVu\r\n"
				+ "inner join LoaiVe lv on ttv.maLoaiVe = lv.maLoaiVe\r\n"
				+ "inner join KhachHang kh on ttv.maKhachHang = kh.maKhachHang\r\n"
				+ "where tt.trangThai ='Chua thanh toan' and "
				+ "((tt.ngayThanhToan = :ngayThanhToan AND tt.gioThanhToan >= :gioThanhToan)"
				+ "OR (tt.ngayThanhToan >= :ngayHienTai))";
		@SuppressWarnings("unchecked")
		Query<Object[]> query = sessionFactory.getCurrentSession().createNativeQuery(sql)
				.setParameter("ngayThanhToan", date).setParameter("gioThanhToan", time)
				.setParameter("ngayHienTai", ngayHienTai);
		return query.setFirstResult(settingPage.getFirstRecord())// Offset
				.setMaxResults(settingPage.getPageSize()) // limit
				.getResultList();
	}

	// Phân trang khi tìm kiếm
	public List<Object[]> findWithPageAble_Gia(SettingPage settingPage, String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "Select ttv.maVe,ttv.maChuyenBay,kh.soDienThoai,lv.maLoaiVe,dv.maDichVu,tt.gioThanhToan,tt.ngayThanhToan,tt.trangThai,tt.maTTThanhToan \r\n"
				+ "from ThongTinThanhToan tt\r\n" + "inner join ThongTinVe ttv on tt.maVe = ttv.maVe \r\n"
				+ "inner join DichVu dv on ttv.maDichVu = dv.maDichVu\r\n"
				+ "inner join LoaiVe lv on ttv.maLoaiVe = lv.maLoaiVe\r\n"
				+ "inner join KhachHang kh on ttv.maKhachHang = kh.maKhachHang\r\n"
				+ "where tt.trangThai ='Chua thanh toan' and ttv.maVe like :maVe";
		org.hibernate.query.Query<Object[]> createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("maVe", "%" + searchKey + "%");
		return createQuery.setFirstResult(settingPage.getFirstRecord())// Offset
				.setMaxResults(settingPage.getPageSize()) // limit
				.getResultList();
	}

	// Số trang khi tìm kiếm
	public long countSearch_Gia(String searchKey) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "Select Count(*) From ThongTinThanhToan as TT where TT.trangThai = 'Chua thanh toan' and (TT.thongTinVe.maVe like :maVe)";
		org.hibernate.query.Query<Long> createQuery = session.createQuery(sql, Long.class);
		createQuery.setParameter("maVe", "%" + searchKey + "%");
		return createQuery.getSingleResult();

	}

}