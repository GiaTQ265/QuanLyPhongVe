package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.DichVu;
import hello.page.PageAble;
import hello.repository.DichVuRepository;

@Service
@Transactional
public class DichVuService {
	@Autowired
	DichVuRepository repository;

	public List<DichVu> findAll() {
		return repository.findAll();
	}

	public void saveOrUpdate(DichVu dichVu) {
		repository.saveOrUpdate(dichVu);
	}

	public DichVu findById(String Id) {
		return repository.findById(Id);
	}

	public void delete(DichVu x) {
		repository.delete(x);
	}

	public List<DichVu> search(String searchKey) {
		return repository.search(searchKey);
	}

	public void save(DichVu dichVu) {
		repository.save(dichVu);
	}

	public void update(DichVu dichVu) {
		repository.update(dichVu);
	}

	public void delete(String id) {
		repository.delete(id);
	}

	public List<DichVu> findWithPageAble_Minh(PageAble pageAble) {
		return repository.findWithPageAble_Minh(pageAble);
	}

	public int totalPages_Minh(PageAble pageAble) {
		long totalRecord = repository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getSize());
	}

}
