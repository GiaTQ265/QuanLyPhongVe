package hello.service;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.ChuyenBay;
import hello.entity.MayBay;
import hello.entity.TuyenBay;
import hello.page.PhanTrang;
import hello.page.SettingPage;
import hello.repository.ChuyenBayRepository;

@Service
@Transactional
public class ChuyenBayService {

	@Autowired
	ChuyenBayRepository chuyenBayRepository;

	public List<ChuyenBay> findAll() {
		return chuyenBayRepository.findAll();
	}

	public List<Object[]> findAllCB(String tim, LocalDate x, String y, SettingPage pageAble) {
		return chuyenBayRepository.findAllCB(tim, x, y, pageAble);
	}

	public List<Object[]> findAllCB(String tim, String y, SettingPage pageAble) {
		return chuyenBayRepository.findAllCB(tim, y, pageAble);
	}

	public void saveOrUpdate(ChuyenBay x) {
		chuyenBayRepository.saveOrUpdate(x);
	}

	public ChuyenBay findById(String Id) {
		return chuyenBayRepository.findById(Id);
	}

	public void delete(ChuyenBay x) {
		chuyenBayRepository.delete(x);
	}

	public List<ChuyenBay> search(String searchKey1, String searchKey2, LocalDate searchKey3) {
		return chuyenBayRepository.search(searchKey1, searchKey2, searchKey3);
	}

	public int totalPages(SettingPage pageAble, List<Object[]> lit) {
		long totalRecord = chuyenBayRepository.count(lit);
		return (int) Math.ceil((double) totalRecord / pageAble.getPageSize());
	}

	public List<ChuyenBay> timTatCaChuyenBay() {
		return chuyenBayRepository.timTatCaChuyenBay();
	}

	public List<ChuyenBay> timKiemChuyenBayTheoMaChuyenBay(String timKiem) {
		return chuyenBayRepository.timKiemChuyenBayTheoMaChuyenBay(timKiem);
	}

	public List<ChuyenBay> timChuyenBayTheoTrang(PhanTrang phanTrang) {
		return chuyenBayRepository.timChuyenBayTheoTrang(phanTrang);
	}

	public List<ChuyenBay> timKiemChuyenBayTheoMaChuyenBayTheoTrang(PhanTrang phanTrang, String timKiem) {

		return chuyenBayRepository.timKiemChuyenBayTheoMaChuyenBayTheoTrang(phanTrang, timKiem);
	}


	public List<TuyenBay> timTuyenBay() {

		return chuyenBayRepository.timTuyenBay();
	}

	public List<ChuyenBay> search(String searchKey) {
		return chuyenBayRepository.search(searchKey);
	}

	public List<MayBay> timMayBay() {

		return chuyenBayRepository.timMayBay();
	}

	public TuyenBay timTuyenBayTheoId(String id) {
		return chuyenBayRepository.timTuyenBayTheoId(id);
	}

	public MayBay timMayBayTheoId(String id) {
		return chuyenBayRepository.timMayBayTheoId(id);
	}
}
