package hello.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.entity.DichVu;
import hello.entity.ThongTinVe;
import hello.repository.ThongTinVeRepository;

@Service
@Transactional
public class ThongTinVeService {
	@Autowired
	ThongTinVeRepository repository;

	public List<ThongTinVe> findAll() {
		return repository.findAll();
	}
	public List<Object[]> findAllByID(String id) {
		return repository.findAllByID(id);
	}

	public void saveOrUpdate(ThongTinVe x) {
		repository.saveOrUpdate(x);
	}

	public ThongTinVe findById(String Id) {
		return repository.findById(Id);
	}

	public void delete(ThongTinVe x) {
		repository.delete(x);
	}

	public List<DichVu> search(String searchKey) {
		return repository.search(searchKey);
	}

	public String taoMaVeNgauNhien() {
		MaVeNgauNhien maVeNgauNhien = new MaVeNgauNhien();
		String maVe = "";
		while (true) {
			maVe = maVeNgauNhien.taoMaVe();
			if (repository.findById(maVe) == null) {
				break;
			}
		}
		return maVe;
	}
}