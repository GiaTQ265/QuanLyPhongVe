package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.ThongTinThanhToan;
import hello.page.PageAble;
import hello.page.SettingPage;
import hello.repository.ThongTinThanhToanRepository;

@Service
@Transactional
public class ThongTinThanhToanService {
	@Autowired
	ThongTinThanhToanRepository thongTinThanhToanRepository;

	public List<ThongTinThanhToan> findAll() {
		return thongTinThanhToanRepository.findAll();
	}

	public List<Object[]> findAllByJoinByID(String id) {
		return thongTinThanhToanRepository.findAllByJoinByID(id);
	}

	public List<ThongTinThanhToan> findCB(String maChuyenBay) {
		return thongTinThanhToanRepository.findChuyenBay(maChuyenBay);
	}

	public List<ThongTinThanhToan> findCB(String maChuyenBay, String loaive) {
		return thongTinThanhToanRepository.findCB(maChuyenBay, loaive);
	}

	public void saveOrUpdate(ThongTinThanhToan x) {
		thongTinThanhToanRepository.saveOrUpdate(x);
	}

	public ThongTinThanhToan findById(int maTTThanhToan) {
		return thongTinThanhToanRepository.findById(maTTThanhToan);
	}

	public void delete(ThongTinThanhToan x) {
		thongTinThanhToanRepository.delete(x);
	}

	public List<ThongTinThanhToan> findWithPageAble(SettingPage pageAble) {
		return thongTinThanhToanRepository.findWithPageAble(pageAble);
	}

	public List<ThongTinThanhToan> findWithPageAble(SettingPage pageAble, String key) {
		return thongTinThanhToanRepository.findWithPageAble(pageAble, key);
	}

	public int totalPages(SettingPage pageAble) {
		long totalRecord = thongTinThanhToanRepository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getPageSize());
	}

	public List<ThongTinThanhToan> findByTrangThai() {
		return thongTinThanhToanRepository.findByTrangThai();
	}

	public void update(ThongTinThanhToan thanhToan) {
		thongTinThanhToanRepository.update(thanhToan);
	}

	public List<ThongTinThanhToan> search(String searchKey) {
		return thongTinThanhToanRepository.search_Minh(searchKey);
	}

	public void delete(int id) {
		thongTinThanhToanRepository.delete(id);
	}

	// phan trang

	public List<ThongTinThanhToan> findWithPageAble(PageAble pageAble) {
		return thongTinThanhToanRepository.findWithPageAble_Minh(pageAble);
	}

	public int totalPages(PageAble pageAble) {
		long totalRecord = thongTinThanhToanRepository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getSize());
	}

	public void save(ThongTinThanhToan thongTinThanhToan) {
		thongTinThanhToanRepository.update(thongTinThanhToan);
	}
//====================================GIA================================================

//	public List<ThongTinThanhToan> thongTinTTDanhSachTheoTrangThai() {
//		List<ThongTinThanhToan> list = thongTinThanhToanRepository.thongTinTTDanhSachTheoTrangThai();
//		return list;
//	}
//
//	public List<Object[]> findAllByJoin() {
//		return thongTinThanhToanRepository.findAllByJoin();
//	}
//
//	public void capNhatTT(int maTTThanhToan) {
//		thongTinThanhToanRepository.capNhatTT(maTTThanhToan);
//	}
//
//	public List<Object[]> findWithPageAble_Gia(String searchKey) {
//		return thongTinThanhToanRepository.findWithPageAble_Gia(searchKey);
//	}
	

	public List<ThongTinThanhToan> thongTinTTDanhSachTheoTrangThai() {
		List<ThongTinThanhToan> list = thongTinThanhToanRepository.thongTinTTDanhSachTheoTrangThai();
		return list;
	}

	public List<Object[]> findAllByJoin(SettingPage settingPage) {
		return thongTinThanhToanRepository.findAllByJoin(settingPage);

	}

	public void capNhatTT(int maTTThanhToan) {
		thongTinThanhToanRepository.capNhatTT(maTTThanhToan);
	}

	public int totalPages_Gia(SettingPage settingPage) {
		long totalRecord = thongTinThanhToanRepository.count();
		return (int) Math.ceil((double) totalRecord / settingPage.getPageSize());
	}

	public List<Object[]> findWithPageAble_Gia(SettingPage settingPage, String searchKey) {
		return thongTinThanhToanRepository.findWithPageAble_Gia(settingPage, searchKey);
	}

	public int totalPages_Gia(SettingPage settingPage, String searchKey) {
		long totalRecord = thongTinThanhToanRepository.countSearch_Gia(searchKey);
		return (int) Math.ceil((double) totalRecord / settingPage.getPageSize());
	}

	

}