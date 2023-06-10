package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.LoaiVe;
import hello.page.SettingPage;
import hello.repository.LoaiVeRepository;

@Service
@Transactional
public class LoaiVeService {

	@Autowired
	LoaiVeRepository loaiVeRepository;

	public void save(LoaiVe loaiVe) {
		loaiVeRepository.save(loaiVe);
	}

	public List<LoaiVe> findAll() {
		List<LoaiVe> list = loaiVeRepository.findAll();
		return list;
	}

	public LoaiVe findById(String maLoaiVe) {
		return loaiVeRepository.findById(maLoaiVe);
	}

	public LoaiVe maLoaiVe(String maLoaiVe) {
		return loaiVeRepository.maLoaiVe(maLoaiVe);
	}

	public void delete(String maLoaiVe) {
		LoaiVe loaiVe = findById(maLoaiVe);
		if (loaiVe != null) {
			loaiVeRepository.delete(loaiVe);
		}
	}

	// Phân trang list
	public List<LoaiVe> findWithPageAble(SettingPage settingPage) {
		return loaiVeRepository.findWithPageAble(settingPage);
	}

	public int totalPages(SettingPage settingPage) {
		long totalRecord = loaiVeRepository.count();
		return (int) Math.ceil((double) totalRecord / settingPage.getPageSize());
	}

	// Phân trang tìm kiếm
	public List<LoaiVe> findWithPageAble(SettingPage settingPage, String searchKey) {
		return loaiVeRepository.findWithPageAble(settingPage, searchKey);
	}

	public int totalPages(SettingPage settingPage, String searchKey) {
		long totalRecord = loaiVeRepository.countSearch(searchKey);
		return (int) Math.ceil((double) totalRecord / settingPage.getPageSize());
	}
}
