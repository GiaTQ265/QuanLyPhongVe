package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.SanBay;
import hello.page.PageAbleHoang;
import hello.repository.SanBayRepository;

@Service
@Transactional
public class SanBayService {

	@Autowired
	SanBayRepository sanBayRepository;

	public List<SanBay> findAll() {
		return sanBayRepository.findAll();
	}

	public void save(SanBay x) {
		sanBayRepository.save(x);
	}

	public void saveOrUpdate(SanBay x) {
		sanBayRepository.saveOrUpdate(x);
	}

	public SanBay findById(String Id) {
		return sanBayRepository.findById(Id);
	}

	public SanBay maSanBay(String maSanBay) {
		return sanBayRepository.maSanBay(maSanBay);
	}

	public List<SanBay> findWithPageAble(PageAbleHoang pageAble) {
		return sanBayRepository.findWithPageAble(pageAble);
	}

	public int totalPages(PageAbleHoang pageAble) {
		long totalRecord = sanBayRepository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getSize());
	}

	public List<SanBay> search(String searchKey) {

		return sanBayRepository.search(searchKey);
	}

	public void delete(String maSanBay) {
		SanBay sanBay = findById(maSanBay);
		if (sanBay != null) {
			sanBayRepository.delete(sanBay);
		}
	}
}
