package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.TuyenBay;
import hello.page.PageAble;
import hello.repository.TuyenBayRepository;

@Service
@Transactional
public class TuyenBayService {

	@Autowired
	TuyenBayRepository tuyenBayRepository;

	public List<TuyenBay> findAll() {
		return tuyenBayRepository.findAll();
	}

	public void save(TuyenBay x) {
		tuyenBayRepository.save(x);
	}

	public void saveOrUpdate(TuyenBay x) {
		tuyenBayRepository.saveOrUpdate(x);
	}

	public TuyenBay findById(String Id) {
		return tuyenBayRepository.findById(Id);
	}

	public TuyenBay maTuyenBay(String maTuyenBay) {
		return tuyenBayRepository.maTuyenBay(maTuyenBay);
	}

	public List<TuyenBay> findWithPageAble(PageAble pageAble) {
		return tuyenBayRepository.findWithPageAble(pageAble);
	}

	public int totalPages(PageAble pageAble) {
		long totalRecord = tuyenBayRepository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getSize());
	}

	public List<TuyenBay> search(String searchKey) {

		return tuyenBayRepository.search(searchKey);
	}

	public void delete(String maTuyenBay) {
		TuyenBay TuyenBay = findById(maTuyenBay);
		if (TuyenBay != null) {
			tuyenBayRepository.delete(TuyenBay);
		}
	}

	public void delete1(TuyenBay tb) {
		tuyenBayRepository.delete(tb);
	}
}
