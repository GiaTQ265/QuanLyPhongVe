package hello.repository;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hello.page.PhanTrang;

/**
 * @author LoiPN1
 *
 */

@Repository
public class ThongKeRepository {
	@Autowired
	SessionFactory sessionFactory;

	public List<Object> timDoanhThuTheoThoiGian(LocalDate ngayBatDau, LocalDate ngayHienTai, String trangThai) {
		String sql = "SELECT SUM(d.tongTien) FROM ThongTinThanhToan d WHERE d.trangThai = :trangThai AND (d.ngayThanhToan BETWEEN :ngayBatDau AND  :ngayHienTai)";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("trangThai", trangThai);
		return createQuery.list();
	}

	public List<Object> timDoanhThuTheoMoiThang(LocalDate ngayBatDau, LocalDate ngayKetThuc, String trangThai) {
		String sql = "SELECT SUM(d.tongTien) FROM ThongTinThanhToan d WHERE d.trangThai = :trangThai AND d.ngayThanhToan >= :ngayBatDau AND  d.ngayThanhToan < :ngayKetThuc";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayKetThuc", ngayKetThuc);
		createQuery.setParameter("trangThai", trangThai);
		return createQuery.list();
	}

	public List<Object[]> timDTTheoTuyenBayTheoThoiGian(LocalDate ngayBatDau, LocalDate ngayHienTai) {
		String sql = "SELECT tb.maTuyenBay, SUM(tt.tongTien)\r\n"
				+ "FROM ThongTinThanhToan tt JOIN ThongTinVe ttv ON tt.maVe = ttv.maVe\r\n"
				+ "JOIN ChuyenBay cb ON ttv.maChuyenBay = cb.maChuyenBay\r\n"
				+ "JOIN TuyenBay tb ON cb.maTuyenBay = tb.maTuyenBay\r\n"
				+ "WHERE tt.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai\r\n" + "GROUP BY tb.maTuyenBay;";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		return createQuery.list();
	}

	public List<Object[]> timDTTheoTuyenBayTheoThoiGianTimKiem(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String timKiem) {
		String sql = "SELECT tb.maTuyenBay, SUM(tt.tongTien)\r\n"
				+ "FROM ThongTinThanhToan tt JOIN ThongTinVe ttv ON tt.maVe = ttv.maVe\r\n"
				+ "JOIN ChuyenBay cb ON ttv.maChuyenBay = cb.maChuyenBay\r\n"
				+ "JOIN TuyenBay tb ON cb.maTuyenBay = tb.maTuyenBay\r\n"
				+ "WHERE tb.maTuyenBay like :timKiem AND (tt.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai)\r\n"
				+ "GROUP BY tb.maTuyenBay;";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("timKiem", "%" + timKiem + "%");
		return createQuery.list();
	}

	public List<Object[]> timSanBayTheoSQL(String id) {
		String sql = "Select SB.maSanBay, SB.diaDiem, SB.tenSanBay from SanBay SB WHERE SB.maSanBay =:maSanBay";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("maSanBay", id);
		return createQuery.getResultList();

	}

	public List<Object[]> timTuyenBayTheoSQL(String id) {
		String sql = "SELECT TB.maSanBayDi, TB.maSanBayDen FROM TuyenBay TB WHERE TB.maTuyenBay =:maTuyenBay";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("maTuyenBay", id);
		return createQuery.getResultList();
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBayTheoTrang(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay, PhanTrang phanTrang) {
		String sql = "SELECT TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh, SUM(TTTT.tongTien) \r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN TuyenBay TB ON TB.maTuyenBay = CB.maTuyenBay\r\n"
				+ "WHERE TB.maTuyenBay =:maTuyenBay AND (TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai)\r\n"
				+ "AND TTTT.trangThai = :trangThai\r\n" + "GROUP BY TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh\r\n"
				+ "ORDER BY CB.ngayKhoiHanh ASC\r\n" + "OFFSET :soRecordsOff ROWS FETCH NEXT :soRecordTrang ROWS ONLY";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("maTuyenBay", maTuyenBay);
		createQuery.setParameter("trangThai", trangThai);
		createQuery.setParameter("soRecordsOff", phanTrang.getSoRecordsOff());
		createQuery.setParameter("soRecordTrang", phanTrang.getSoRecordsMoiTrang());
		return createQuery.list();
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBay(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay) {
		String sql = "SELECT TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh, SUM(TTTT.tongTien) \r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN TuyenBay TB ON TB.maTuyenBay = CB.maTuyenBay\r\n"
				+ "WHERE TB.maTuyenBay =:maTuyenBay AND (TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai)\r\n"
				+ "AND TTTT.trangThai = :trangThai\r\n" + "GROUP BY TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh\r\n"
				+ "ORDER BY CB.ngayKhoiHanh ASC";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("maTuyenBay", maTuyenBay);
		createQuery.setParameter("trangThai", trangThai);
		return createQuery.list();
	}

	/* Tim Doanh thu theo chuyen bay theo loai dich vu */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBayTheoDichVu(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maChuyenBay) {
		String sql = "SELECT CB.maChuyenBay,  TTV.maDichVu, DV.giaDichVu, COUNT(TTV.maDichVu)*DV.giaDichVu\r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN DichVu DV ON DV.maDichVu = TTV.maDichVu\r\n"
				+ "WHERE TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai\r\n"
				+ "AND TTTT.trangThai = :trangThai\r\n" + "AND CB.maChuyenBay = :maChuyenBay\r\n"
				+ "GROUP BY CB.maChuyenBay, TTV.maDichVu, DV.giaDichVu";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("trangThai", trangThai);
		createQuery.setParameter("maChuyenBay", maChuyenBay);
		return createQuery.list();
	}

	/* Tim Doanh thu theo chuyen bay theo loai ve */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBayTheoLoaiVe(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maChuyenBay) {
		String sql = "SELECT CB.maChuyenBay,  TTV.maLoaiVe, COUNT(TTV.maLoaiVe)*LV.heSoGia*CB.giaChuyenBay\r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN DichVu DV ON DV.maDichVu = TTV.maDichVu\r\n"
				+ "JOIN LoaiVe LV ON LV.maLoaiVe = TTV.maLoaiVe\r\n"
				+ "WHERE TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai\r\n"
				+ "AND TTTT.trangThai = :trangThai\r\n" + "AND CB.maChuyenBay = :maChuyenBay\r\n"
				+ "GROUP BY CB.maChuyenBay, TTV.maLoaiVe, LV.heSoGia,CB.giaChuyenBay";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("trangThai", trangThai);
		createQuery.setParameter("maChuyenBay", maChuyenBay);
		return createQuery.list();
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay voi chuc nang tim kiem */
	public List<Object[]> timDoanhThuThangChiTietTheoChuyenBayTimKiem(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay, String timKiem) {
		String sql = "SELECT TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh, SUM(TTTT.tongTien) \r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN TuyenBay TB ON TB.maTuyenBay = CB.maTuyenBay\r\n"
				+ "WHERE CB.maChuyenBay like :timKiem AND (TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai)\r\n"
				+ "AND TTTT.trangThai = :trangThai AND TB.maTuyenBay =:maTuyenBay\r\n"
				+ "GROUP BY TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh\r\n" + "ORDER BY CB.ngayKhoiHanh ASC";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("trangThai", trangThai);
		createQuery.setParameter("timKiem", "%" + timKiem + "%");
		createQuery.setParameter("maTuyenBay", maTuyenBay);
		return createQuery.list();
	}

	/* Tim Doanh thu thang chi tiet theo chuyen bay voi chuc nang tim kiem */
	public List<Object[]> timDoanhThuThangTheoChuyenBayTimKiemTheoTrang(LocalDate ngayBatDau, LocalDate ngayHienTai,
			String trangThai, String maTuyenBay, String timKiem, PhanTrang phanTrang) {
		String sql = "SELECT TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh, SUM(TTTT.tongTien) \r\n"
				+ "FROM ThongTinThanhToan TTTT \r\n" + "JOIN ThongTinVe TTV ON TTTT.maVe = TTV.maVe\r\n"
				+ "JOIN ChuyenBay CB ON TTV.maChuyenBay = CB.maChuyenBay\r\n"
				+ "JOIN TuyenBay TB ON TB.maTuyenBay = CB.maTuyenBay\r\n"
				+ "WHERE CB.maChuyenBay like :timKiem AND (TTTT.ngayThanhToan BETWEEN :ngayBatDau AND :ngayHienTai)\r\n"
				+ "AND TTTT.trangThai = :trangThai AND TB.maTuyenBay =:maTuyenBay\r\n"
				+ "GROUP BY TB.maTuyenBay, CB.maChuyenBay, CB.ngayKhoiHanh\r\n" + "ORDER BY CB.ngayKhoiHanh ASC\r\n"
				+ "OFFSET :soRecordsOff ROWS FETCH NEXT :soRecordTrang ROWS ONLY";
		Session session = sessionFactory.getCurrentSession();
		Query createQuery = session.createNativeQuery(sql);
		createQuery.setParameter("ngayBatDau", ngayBatDau);
		createQuery.setParameter("ngayHienTai", ngayHienTai);
		createQuery.setParameter("trangThai", trangThai);
		createQuery.setParameter("timKiem", "%" + timKiem + "%");
		createQuery.setParameter("maTuyenBay", maTuyenBay);
		createQuery.setParameter("soRecordsOff", phanTrang.getSoRecordsOff());
		createQuery.setParameter("soRecordTrang", phanTrang.getSoRecordsMoiTrang());
		return createQuery.list();
	}

}
