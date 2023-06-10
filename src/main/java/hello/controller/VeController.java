package hello.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import hello.entity.KhachHang;
import hello.entity.ThongTinThanhToan;
import hello.entity.ThongTinVe;
import hello.model.SuaTTVeDaBan;
import hello.page.PageAble;
import hello.page.SettingPage;
import hello.service.ChuyenBayService;
import hello.service.DichVuService;
import hello.service.KhachHangService;
import hello.service.LoaiVeService;
import hello.service.SanBayService;
import hello.service.ThongTinThanhToanService;
import hello.service.ThongTinVeService;

@Controller
@RequestMapping(value = "/admin/ve")
@SessionAttributes("ve")
public class VeController {

	@Autowired
	KhachHangService khachHangService;	
	@Autowired
	ThongTinThanhToanService thongTinThanhToanService;	 
	@Autowired
	ThongTinVeService thongTinVeService;	
	@Autowired
	LoaiVeService loaiVeService;	
	@Autowired
	SanBayService sanBayService;
	@Autowired
	DichVuService dichVuService;
	@Autowired
	ChuyenBayService chuyenBayService;
	
	/**
	 * author MinhMH
	 */
	@GetMapping("/ds-ve-ban")
	public String getAllmayWithPageAble1(Model model, @RequestParam(defaultValue = "1") Integer page) {
		PageAble pageAble = new PageAble(page);
		List<ThongTinThanhToan> ttThanhToan = thongTinThanhToanService.findWithPageAble(pageAble);
		model.addAttribute("dsVeDaBan", ttThanhToan);
		model.addAttribute("totalPages", thongTinThanhToanService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachVeDaBan";
	}

	// xóa thông tin thanh toán
	@GetMapping(value = "/xoa-thanh-toan")
	public String xoaThanhToan(@RequestParam("maTTThanhToan") int id, Model model) {
		thongTinThanhToanService.delete(id);
		return "redirect:/admin/dichvu/dsveban";
	}

	// sửa thanh toán
	@GetMapping(value = "/sua-thanh-toan")
	public String suaThanhToan(@RequestParam("maTTThanhToan") int id, Model model) {
		ThongTinThanhToan thanhtoan = thongTinThanhToanService.findById(id);
		SuaTTVeDaBan suattveban = new SuaTTVeDaBan();
		suattveban.setMaVe(thanhtoan.getThongTinVe().getMaVe());
		suattveban.setSoDienThoai(thanhtoan.getThongTinVe().getKhachHang().getSoDienThoai());
		suattveban.setHo(thanhtoan.getThongTinVe().getKhachHang().getHo());
		suattveban.setTenKhachHang(thanhtoan.getThongTinVe().getKhachHang().getTen());
		suattveban.setDiaChi(thanhtoan.getThongTinVe().getKhachHang().getDiaChi());
		model.addAttribute("suattveban", suattveban);
		return "/admin/suaThongTinKH-thanhtoan";
	}

	// lưu sau khi sửa thanh toán
	@PostMapping("/luu-thanh-toan")
	public String suaDichVu(@ModelAttribute("suattveban") @Valid SuaTTVeDaBan suattveban, BindingResult result,
			Model model) {
		ThongTinVe thongTinVe = thongTinVeService.findById(suattveban.getMaVe());
		KhachHang khachHang = khachHangService.findById(thongTinVe.getKhachHang().getMaKhachHang());
		khachHang.setSoDienThoai(suattveban.getSoDienThoai());
		khachHang.setHo(suattveban.getHo());
		khachHang.setTen(suattveban.getTenKhachHang());
		khachHang.setDiaChi(suattveban.getDiaChi());
		khachHang.setGioiTinh(suattveban.getGioiTinh());
		khachHang.setNgaySinh(suattveban.getNgaySinh());
		if (result.hasErrors()) {
			return "/admin/suaThongTinKH-thanhtoan";
		}
		khachHangService.update(khachHang);
		return "redirect:/admin/khach-hang/ds-khach-hang";
	}

	// tìm kiếm theo số điện thoại
	@GetMapping(value = "/tim-kiem-ve-ban")
	public String timKiemVeBan(@RequestParam("search") String name, Model model) {
		List<ThongTinThanhToan> timVeBan = thongTinThanhToanService.search(name);
		if (timVeBan.size() == 0) {
			model.addAttribute("msg", "Không tìm thấy!");
			return "/admin/danhSachVeDaBan";
		}
		model.addAttribute("dsVeDaBan", timVeBan);
		return "/admin/danhSachVeDaBan";
	}
	
//=====================================================================================================================================================	
	/**
	 * @author GiaTQ
	 */
	// Tới trang danh sách vé đặt chỗ
	@RequestMapping(value = "/danh-sach-ve-dat-cho", method = RequestMethod.GET)
	public String danhSachVeDatCho(Model model, @RequestParam(defaultValue = "1") Integer page) {
		SettingPage settingPage = new SettingPage(page);
		List<Object[]> thongTinThanhToans = thongTinThanhToanService.findAllByJoin(settingPage);
		model.addAttribute("ThongTinThanhToan", thongTinThanhToans);
		int totalPages = (int) Math.ceil(
				(double) thongTinThanhToanService.thongTinTTDanhSachTheoTrangThai().size() / settingPage.getPageSize());
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", page);

		return "/admin/danhSachVeDatCho";
	}

	// Tìm kiếm vé đặt chỗ theo số điện thoại
	@GetMapping("/tim-kiem")
	public String timKiemVeDatCho(@RequestParam(name = "searchKey") String searchKey, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		SettingPage settingPage = new SettingPage(page);
		List<Object[]> thongTinThanhToan = thongTinThanhToanService.findWithPageAble_Gia(settingPage, searchKey);
		model.addAttribute("ThongTinThanhToan", thongTinThanhToan);
		model.addAttribute("totalPages", thongTinThanhToanService.totalPages_Gia(settingPage, searchKey));
		model.addAttribute("currentPage", page);
		model.addAttribute("key", searchKey);
		if (thongTinThanhToan.size() == 0) {
			model.addAttribute("timKiems", "Không có kết quả tìm kiếm");
		}
		return "admin/danhSachVeDatCho2";
	}

	// Xóa loại vé đặt chỗ
	@GetMapping("/xoa-ve-dat-cho/{maTTThanhToan}")
	public String xoaVeDatCho(@PathVariable(name = "maTTThanhToan") int maTTThanhToan, Model model) {
		thongTinThanhToanService.delete(maTTThanhToan);
		return "redirect:/admin/ve/danh-sach-ve-dat-cho";
	}

	// Thanh toán vé đặt chỗ
	@GetMapping(value = "/ve-may-bay/{maTTThanhToan}")
	public String capNhatTT(@PathVariable(name = "maTTThanhToan") int maTTThanhToan, Model model) {
		thongTinThanhToanService.capNhatTT(maTTThanhToan);
		ThongTinVe thongTinVe = thongTinThanhToanService.findById(maTTThanhToan).getThongTinVe();
		List<Object[]> lit = thongTinThanhToanService.findAllByJoinByID(thongTinVe.getMaVe());
		Object[] arr = lit.get(0);
		model.addAttribute("ThongTinThanhToan", arr);
		return "/admin/veMayBay";
	}

//=============================================================================================================================	
	/**
	 * @author TuanNHD
	 */
	@GetMapping("list-ve-ban")
	public String listveban(Model model, @RequestParam(defaultValue = "1") Integer page) {
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("ttttlist", thongTinThanhToanService.findWithPageAble(pageAble));
		model.addAttribute("totalPages", thongTinThanhToanService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachVeDaBan";
	}

	@GetMapping("tim-ve-ban")
	public String timveban(@RequestParam(name = "search") String key, Model model,
			@RequestParam(defaultValue = "1") Integer page) {
		SettingPage pageAble = new SettingPage(page);
		model.addAttribute("ttttlist", thongTinThanhToanService.findWithPageAble(pageAble, key));
		model.addAttribute("totalPages", thongTinThanhToanService.totalPages(pageAble));
		model.addAttribute("currentPage", page);
		return "/admin/danhSachVeDaBan";
	}

	@GetMapping("deletevb/{id}")
	public String deleteveban(@PathVariable("id") int id) {
		thongTinThanhToanService.delete(thongTinThanhToanService.findById(id));
		return "redirect:/admin/list-ve-ban";
	}

	@PostMapping("updatevb/saveupdateve/{id}")
	public String saveupdateve(@ModelAttribute("tt") ThongTinThanhToan ve, ModelMap model,
			@PathVariable("id") String mave, @RequestParam(name = "matt") int Id) {
		khachHangService.saveOrUpdate(ve.getThongTinVe().getKhachHang());
		ThongTinThanhToan tt = thongTinThanhToanService.findById(Id);
		ve.getThongTinVe().setLoaiVe(tt.getThongTinVe().getLoaiVe());
		tt.setThongTinVe(ve.getThongTinVe());
		tt.getThongTinVe().setMaVe(mave);
		thongTinVeService.saveOrUpdate(tt.getThongTinVe());
		return "redirect:/admin/ve/list-ve-ban";
	}

	@GetMapping("dat-ve/{id}")
	public String datve(@PathVariable("id") String id, ModelMap model, @RequestParam(name = "loaive") String malv) {
		ThongTinVe ve = new ThongTinVe();
		ve.setMaVe(thongTinVeService.taoMaVeNgauNhien());
		ve.setChuyenBay(chuyenBayService.findById(id));
		ve.setLoaiVe(loaiVeService.findById(malv));
		model.addAttribute("ve", ve);
		model.addAttribute("dvs", dichVuService.findAll());
		return "/admin/themThongTinVe";
	}

	@GetMapping("quay-lai")
	public String quaylai(Model model) {
		model.addAttribute("dvs", dichVuService.findAll());
		return "/admin/themThongTinVe";
	}

	@PostMapping("dat-ve/check-ve")
	public String checkve(@ModelAttribute("ve") @Valid ThongTinVe ve1, BindingResult bindingResult, ModelMap model) {
		if (bindingResult.hasErrors()) {
			return "/admin/themThongTinVe";
		}
		ve1.setDichVu(dichVuService.findById(ve1.getDichVu().getMaDichVu()));
		List<Object[]> list = thongTinVeService.findAllByID(ve1.getChuyenBay().getMaChuyenBay());
		Object[] arr = list.get(0);
		model.addAttribute("ve", ve1);
		model.addAttribute("arr", arr);
		model.addAttribute("lv", ve1.getLoaiVe());
		model.addAttribute("kh", ve1.getKhachHang());
		model.addAttribute("dv", ve1.getDichVu());
		return "/admin/kiemTraThongTinVe";
	}

	@PostMapping("dat-ve/luu-ve")
	public String saveve(@ModelAttribute("ve") ThongTinVe ve, ModelMap model) {
		khachHangService.saveOrUpdate(ve.getKhachHang());
		thongTinVeService.saveOrUpdate(ve);
		ThongTinThanhToan tt = new ThongTinThanhToan();
		tt.setGioThanhToan(LocalTime.now());
		tt.setNgayThanhToan(LocalDate.now());
		tt.setThongTinVe(ve);
		double tongtien = ve.getChuyenBay().getGiaChuyenBay() * ve.getLoaiVe().getHeSoGia()
				+ ve.getDichVu().getGiaDichVu();
		tt.setTongTien(tongtien);
		tt.setTrangThai("chua thanh toan");
		thongTinThanhToanService.saveOrUpdate(tt);
		model.addAttribute("ve", ve);
		return "redirect:/admin/tra-cuu";
	}

	@GetMapping("dat-ve/thanh-toan")
	public String thanhtoan(@ModelAttribute("ve") ThongTinVe ve, ModelMap model) {
		khachHangService.saveOrUpdate(ve.getKhachHang());
		thongTinVeService.saveOrUpdate(ve);
		ThongTinThanhToan tt = new ThongTinThanhToan();
		tt.setGioThanhToan(LocalTime.now());
		tt.setNgayThanhToan(LocalDate.now());
		tt.setThongTinVe(ve);
		double tongtien = ve.getChuyenBay().getGiaChuyenBay() * ve.getLoaiVe().getHeSoGia()
				+ ve.getDichVu().getGiaDichVu();
		tt.setTongTien(tongtien);
		tt.setTrangThai("da thanh toan");
		thongTinThanhToanService.saveOrUpdate(tt);
		model.addAttribute("ve", ve);
		List<Object[]> lit =  thongTinThanhToanService.findAllByJoinByID(ve.getMaVe());
		Object[] arr = lit.get(0);
		model.addAttribute("ThongTinThanhToan",arr);
		return "/admin/veMayBay";
	}
	

	@ModelAttribute("tttts")
	public List<ThongTinThanhToan> tinhtime() {
		List<ThongTinThanhToan> lit = thongTinThanhToanService.findAll();
		for (ThongTinThanhToan thongTinThanhToan : lit) {
			LocalDateTime now = LocalDateTime.now();
			LocalDateTime a = thongTinThanhToan.getGioThanhToan().atDate(thongTinThanhToan.getNgayThanhToan())
					.plusDays(1);
			if (a.isBefore(now) && !thongTinThanhToan.getTrangThai().equals("Da thanh toan")) {
				thongTinThanhToanService.delete(thongTinThanhToan);
			}
		}
		return lit;
	}
}
