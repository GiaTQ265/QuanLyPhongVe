package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.KhachHang;
import hello.page.PageAble;
import hello.repository.KhachHangRepository;

@Service
@Transactional
public class KhachHangService {
	@Autowired
	KhachHangRepository repository;

	public List<KhachHang> findAll() {
		return repository.findAll();
	}

	public void saveOrUpdate(KhachHang x) {
		repository.saveOrUpdate(x);
	}

	public void update(KhachHang khachHang) {
		repository.update(khachHang);
	}

	public KhachHang findById(int Id) {
		return repository.findById(Id);
	}

	public void delete(int id) {
		repository.delete(id);
	}

	public KhachHang findKH(String sDT) {
		return repository.findKH(sDT);
	}

	public List<KhachHang> findWithPageAble(PageAble pageAble) {
		return repository.findWithPageAble_Minh(pageAble);
	}

	public int totalPages(PageAble pageAble) {
		long totalRecord = repository.count();
		return (int) Math.ceil((double) totalRecord / pageAble.getSize());
	}
}