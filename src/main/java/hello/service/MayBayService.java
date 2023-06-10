package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.MayBay;
import hello.page.SettingPage;
import hello.repository.MayBayRepository;

@Service
@Transactional
public class MayBayService {

	@Autowired
	MayBayRepository mayBayRepository;

	public List<MayBay> findAll() {
		return mayBayRepository.findAll();
	}

	public void saveOrUpdate(MayBay x) {
		mayBayRepository.saveOrUpdate(x);
	}

	public MayBay findById(String Id) {
		return mayBayRepository.findById(Id);
	}

	public void delete(MayBay x) {
		mayBayRepository.delete(x);
	}

	public List<MayBay> findAllSearch(String search, SettingPage pageAble) {
		return mayBayRepository.findAllSearch(search, pageAble);
	}

	public List<MayBay> findAllWithAble(SettingPage pageAble) {
		return mayBayRepository.findAllWithAble(pageAble);
	}

	public int totalPages(SettingPage pageAble) {
		long totalRecord = mayBayRepository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getPageSize());
	}

	public int totalPages(SettingPage pageAble, String search) {
		long totalRecord = mayBayRepository.count(search);
		return (int) Math.ceil((double) totalRecord / pageAble.getPageSize());
	}
}
