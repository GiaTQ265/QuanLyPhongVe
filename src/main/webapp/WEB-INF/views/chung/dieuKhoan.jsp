<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Đăng Ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- 	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" /> -->
</head>
<body>
	<section class="vh-100 bg-image">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12" id="dieuKhoan">
						<div>
							<div class="card-body p-5">
								<h3>Điều khoản dịch vụ</h3>
								<div class="post-editor clearfix">
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Website
											này thuộc quyền sở hữu và quản lý của công ty Công Ty TNHH
											ĐTTM và DV Liên Việt. Việc quý khách truy cập và sử dụng
											website này có nghĩa là quý khách đã chấp thuận các điều
											khoản và điều kiện đề ra sau đây. Do vậy đề nghị quý khách
											đọc và nghiên cứu kỹ trước khi sử dụng tiếp.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>A.
												Khái Quát</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Tất cả những điều khoản về việc sử dụng SANVEMAYBAY.vn để
											đặt, thanh toán, thanh toán nhanh vé máy bay và các dịch vụ
											khác (“Điều khoản sử dụng SANVEMAYBAY.vn và/hoặc “Điều khoản
											sử dụng”) được đăng tải trên trên trang website
											www.SANVEMAYBAY.vn và được cung cấp bởi đội ngũ hỗ trợ của
											SANVEMAYBAY.vn (trung tâm hỗ trợ SANVEMAYBAY.vn).</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Các quản trị viên của trang website SANVEMAYBAY.vn (“trang
											web SANVEMAYBAY.vn”) và trung tâm hỗ trợ SANVEMAYBAY.vn trực
											thuộc Công ty TNHH ĐTTM và DV Liên Việt, trụ sở tại Hồ Chí
											Minh, Việt nam. Thông tin chi tiết về Công ty có trong mục
											“Liên hệ” trên trang web www.SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											SANVEMAYBAY.vn cung cấp dịch vụ vé máy bay cho khách hàng với
											tư cách là đại lý của các đại lý đã được Hiệp hội vận tải
											hàng không quốc tế (IATA) công nhận và có hợp đồng đại lý với
											các hãng hàng không thuộc IATA (Hãng hàng không truyền
											thống). Riêng với dịch vụ vé máy bay trên các Hãng hàng không
											giá rẻ (LCC) và không phải là thành viên của IATA,
											SANVEMAYBAY.vn cung cấp dịch vụ cho khách hàng với tư cách là
											người đại diện cho khách hàng trong việc ký hợp đồng mua vé
											với các LCC.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Với vai trò là đại lý của các đại lý đã được IATA công nhận,
											SANVEMAYBAY.vn là đại diện cho các Hãng hàng không thuộc IATA
											trong việc bán vé máy bay cho khách hàng. Trách nhiệm của
											SANVEMAYBAY.vn là thay mặt các Hãng hàng không ký hợp đồng
											vận chuyển với khách hàng.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											Với vai trò là đại lý của các LCC, SANVEMAYBAY.vn không chịu
											trách nhiệm về mức độ và chất lượng trong việc thực hiện hợp
											đồng của các LCC. Hợp đồng vận chuyển với các LCC là do người
											sử dụng trang web của SANVEMAYBAY.vn ký kết với các LCC.</span><br>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">6.
											Trong Điều khoản sử dụng SANVEMAYBAY.vn, cụm từ “Bất khả
											kháng” bao gồm: tất cả những sự kiện không thể chống cự hoặc
											ngăn cản được, đặc biệt là các sự cố như: chiến tranh, lũ
											lụt, hỏa hoạn, thiên tai, núi lửa phun trào, các cuộc tấn
											công khủng bố, đình công, tuyết lở, cũng như hacker tấn công
											trên mạng lưới Internet hay các virus vi tính làm tắc nghẽn
											việc cung cấp dịch vụ.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">7.
											Trung tâm hỗ trợ SANVEMAYBAY.vn thực hiện các trách nhiệm của
											mình theo Điều khoản sử dụng SANVEMAYBAY.vn bằng điện thoại
											hoặc tại văn phòng của SANVEMAYBAY.vn:</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Từ
											thứ hai đến thứ sáu hàng tuần từ 08:00 đến 20:00.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Ngày
											thứ bảy từ 08:00 – 12:00.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Trung
											tâm hỗ trợ SANVEMAYBAY.vn không làm việc trong những ngày
											nghỉ lễ, chủ nhật.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Người
											sử dụng, theo định nghĩa của SANVEMAYBAY.vn, là bất kỳ cá
											nhân, pháp nhân hoặc các tổ chức không có tư cách pháp nhân
											sử dụng các dịch vụ của SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">8.
											Giá vé của một hãng máy bay mà người sử dụng phải thanh toán
											bao gồm: giá của các chuyến bay và các chi phí khác được quy
											định bởi Hãng hàng không truyền thống hay LCC (“Giá vé”).
											Ngoài Giá vé của Hãng hàng không và các LCC, khách hàng còn
											được yêu cầu thanh toán phí dịch vụ cho SANVEMAYBAY.vn (“Phí
											xuất vé”). Tổng Giá vé bao gồm Giá vé và Phí xuất vé và được
											thông báo cho khách hàng trước khi thanh toán.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">9.
											Người dùng cũng được yêu cầu trả phí giao dịch cho
											SANVEMAYBAY.vn (“Phí dịch vụ”) khi thực hiện các giao dịch
											liên quan tới việc hủy vé máy bay (hoặc dịch vụ khác cho
											khách du lịch), hoặc thay đổi thông tin trên vé (hoặc dịch vụ
											khác cho khách du lịch). Chi tiết về mức Phí dịch vụ được
											hiển thị trong mục Xem chi tiết tại trang Kết quả tìm kiếm
											trên trang web www.SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>B.
												Điều kiện chung của dịch vụ điện tử</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Chấp nhận Điều khoản sử dụng SANVEMAYBAY.vn là điều kiện cần
											thiết để sử dụng các dịch vụ của SANVEMAYBAY.vn và trung tâm
											hỗ trợ SANVEMAYBAY.vn. Điều khoản sử dụng SANVEMAYBAY.vn được
											đăng tải trên trang www.SANVEMAYBAY.vn/dieu-khoan-su-dung và
											ở phần footer của trang web www.SANVEMAYBAY.vn. Người sử dụng
											cần tuân theo các điều khoản này từ thời điểm bắt đầu sử dụng
											trang web của SANVEMAYBAY.vn và các dịch vụ của trung tâm hỗ
											trợ SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											ĐẶT CHỖ (BOOKING): là việc người sử dụng vào trang web của
											SANVEMAYBAY.vn hoặc gọi điện thoại hoặc đến văn phòng công ty
											SANVEMAYBAY để mua vé máy bay theo các tiêu chí (ví dụ: đường
											bay, ngày bay) do người sử dụng lựa chọn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											YÊU CẦU ĐẶT VÉ (ORDERING): là việc người sử dụng vào trang
											web của SANVEMAYBAY.vn hoặc thông qua Trung tâm hỗ trợ
											SANVEMAYBAY.vn để mua vé máy bay trên các LCC. Các ĐẶT CHỖ
											trên các Hãng hàng không truyền thống cũng được coi là các
											YÊU CẦU ĐẶT VÉ nếu vì một lý do nào đó ngoài tầm kiểm soát
											của SANVEMAYBAY.vn, mà việc ĐẶT CHỖ trên các Hãng hàng không
											truyền thống không thể thực hiện được.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Người dùng cần đọc và chấp nhận các điều kiện liên quan tới
											ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ vé máy bay và các dịch vụ khác trên
											trang web của SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											Các LCC không nhất thiết phải tuân theo các quy định về vận
											chuyển của IATA. Quy định về vận chuyển của các LCC phụ thuộc
											vào từng LCC.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">6.
											Nội dung của các trang web www.SANVEMAYBAY.vn được bảo vệ bởi
											pháp luật.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">7.
											Để thực hiện việc ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ cho các dịch vụ và
											vé máy bay, người sử dụng cần có một địa chỉ thư điện tử
											(e-mail) hoặc một số điện thoại đang hoạt động. Người sử dụng
											đồng ý rằng tất cả các giao dịch của SANVEMAYBAY.vn với người
											sử dụng sẽ được thực hiện thông qua thư điện tử và số điện
											thoại mà người sử dụng đã đăng ký với SANVEMAYBAY.vn.</span><br>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">8.
											Người sử dụng đồng ý để SANVEMAYBAY.vn sử dụng các thông tin
											cá nhân mà người sử dụng đã cung cấp cho SANVEMAYBAY.vn trong
											phạm vi cho phép để thực hiện việc ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ,
											bao gồm cả việc khiếu nại về việc ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ
											trong phạm vi kinh doanh của SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">9.
											Tên thương mại, tên, thiết kế và thương hiệu được đăng tải
											tại www.SANVEMAYBAY.vn được pháp luật bảo vệ. Người sử dụng
											không được thực hiện bất kỳ hành động nào vi phạm đến quyền
											sở hữu trí tuệ của các tên thương mại, tên, thiết kế và
											thương hiệu trên trang web của SANVEMAYBAY.vn.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">10.
											Người dùng chấp nhận rằng SANVEMAYBAY.vn có thể cung cấp đến
											các cơ quan có thẩm quyền về các hoạt động trái phép để xâm
											nhập vào trang web của SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>Quyền
												miễn trừ trách nhiệm</strong></span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">11.
											Người sử dụng hoặc người có tên trên vé máy bay cần có đầy đủ
											các giấy tờ hợp lệ phục vụ cho việc đi lại bằng đường hàng
											không như: Chứng minh nhân dân, hộ chiếu, visa ngay tại thời
											điểm ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ. Trong trường hợp ĐẶT CHỖ, YÊU
											CẦU ĐẶT VÉ các loại vé dành cho sinh viên, người sử dụng hoặc
											người có tên trên vé cần có thẻ sinh viên còn giá trị.</span><br>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">12.
											Người sử dụng tự chịu trách nhiệm nếu không có visa nhập cảnh
											và quá cảnh theo quy định. Người sử dụng chịu trách nhiệm tìm
											hiểu các thông tin về yêu cầu visa trước khi thực hiện việc
											ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">13.
											SANVEMAYBAY.vn không chịu trách nhiệm trong trường hợp việc
											ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ không thể thực hiện được vì các lý do
											kỹ thuật (lỗi của các hệ thống GDS) hoặc các trường hợp bất
											khả kháng.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">14.
											Trách nhiệm thực hiện các dịch vụ vận chuyển hàng không thuộc
											về các Hãng hàng không truyền thống, các LCC mà người sử dụng
											đã ký hợp đồng vận chuyển. SANVEMAYBAY.vn không chịu trách
											nhiệm trong các trường hợp cụ thể dưới đây:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Bất
												kỳ sự chậm trễ hoặc thay đổi nào về chuyến bay của hãng hàng
												không truyền thống hoặc hãng hàng không giá rẻ;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chất
												lượng của các dịch vụ hàng không và các dịch vụ có liên quan
												(ví dụ như việc thất lạc hành lý);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Khách
												hàng đã mua vé nhưng không đến trong thời gian làm thủ tục
												để lên máy bay;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Khách
												hàng đã mua vé nhưng không sử dụng vé và không thực hiện
												hành trình theo vé đã mua;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Khách
												hàng đã mua vé nhưng không sử dụng toàn bộ hành trình đã mua
												trên vé (ví dụ như đi một chiều đối với vé khứ hồi);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Khách
												hàng bị từ chối chuyên chở do không có đầy đủ các giấy tờ cá
												nhân theo quy định (ví dụ: không có visa, visa giả, không có
												hộ chiếu, giấy chứng minh nhân dân, thiếu các tài liệu cần
												thiết khi đi du lịch với trẻ vị thành niên);</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">15.
											Tất cả các khiếu nại liên quan đến việc thực hiện hợp đồng
											chuyên chở sẽ do người sử dụng làm việc trực tiếp với các các
											Hãng hàng không truyền thống hoặc các LCC. Việc khiếu nại cần
											phù hợp với quy định của các Hãng hàng không truyền thống và
											các LCC.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">16.
											SANVEMAYBAY.vn không chịu trách nhiệm bồi thường cho người sử
											dụng nếu nguyên nhân được xác định là do các trường hợp bất
											khả kháng.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">17.
											SANVEMAYBAY.vn không chịu trách nhiệm về sự lựa chọn các
											chuyến bay của người sử dụng hoặc người có tên trên vé máy
											bay.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">18.
											Trong mọi trường hợp, mức độ bồi thường tối đa mà
											SANVEMAYBAY.vn bồi thường cho khách hàng là bằng mức Phí dịch
											vụ mà khách hàng đã trả cho SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>C.
												Đặt mua vé máy bay và các dịch vụ khác</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">ĐẶT
											CHỖ (BOOKING): là việc người sử dụng vào trang web của
											SANVEMAYBAY.vn hoặc thông qua Trung tâm hỗ trợ SANVEMAYBAY.vn
											để mua vé máy bay trên các Hãng hàng không truyền thống theo
											các tiêu chí (ví dụ: đường bay, ngày bay) do người sử dụng
											lựa chọn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng thực hiện việc ĐẶT CHỖ thông qua webiste của
											SANVEMAYBAY.vn hoặc thông qua SANVEMAYBAY.vn bằng cách gặp
											mặt trao đổi trực tiếp hoặc thông qua điện thoại.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Người sử dụng đồng ý các Điều khoản sử dụng SANVEMAYBAY.vn
											khi thực hiện việc ĐẶT CHỖ với SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											Để thực hiện việc ĐẶT CHỖ, Người sử dụng được yêu cầu cung
											cấp dữ liệu cho SANVEMAYBAY.vn hoặc Trung tâm hỗ trợ
											SANVEMAYBAY.vn:</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
											tin cá nhân của Người sử dụng, đặc biệt là tên và họ, địa chỉ
											email và số điện thoại. Trong trường hợp Người sử dụng mua vé
											cho người khác thì Người sử dụng cũng cần cung cấp thông tin
											cá nhân của người trực tiếp sử dụng vé;</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Yêu
											cầu về các dịch vụ bổ sung – Nếu Người sử dụng yêu cầu dịch
											vụ bổ sung;</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
											tin cần thiết để phát hành hóa đơn thuế VAT;</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hình
											thức thanh toán;</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Việc ĐẶT CHỖ có thể sẽ không thực hiện được nếu Người sử dụng
											bỏ qua một trong bốn mục trên.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											Để thực hiện việc ĐẶT CHỖ, Người sử dụng cần cung cấp số một
											số thông tin liên quan tới việc lựa chọn vé máy bay của Người
											sử dụng như dưới đây:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Nơi
												khởi hành và nơi đến;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Ngày
												khởi hành, ngày trở lại;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Số
												lượng người lớn (từ 12 tuổi trở lên), số lượng trẻ sơ sinh
												(0-2 tuổi), trẻ em (2-12 tuổi).</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">6.
											Khi bắt đầu thực hiện việc ĐẶT CHỖ, Người sử dụng cần kiểm
											tra và đảm bảo sự chính xác của tất cả các dữ liệu đã cung
											cấp. Khi quyết định thực hiện việc ĐẶT CHỖ, Người sử dụng cần
											đặc biệt chú ý tới các thông tin có liên quan tới Giá vé, Phí
											dịch vụ, Tổng chi phí, điều khoản, điều kiện sử dụng vé máy
											bay của Hãng hàng không cung cấp dịch vận chuyển và Điều
											khoản sử dụng SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">7.
											Giá vé mà Người sử dụng nhận được từ Trung tâm hỗ trợ
											SANVEMAYBAY.vn hoặc từ SANVEMAYBAY.vn website là do
											SANVEMAYBAY.vn xây dựng và SANVEMAYBAY.vn không đảm bảo rằng
											Giá vé này sẽ cố định. Giá vé chỉ được đảm bảo tại thời điểm
											xuất vé. Điều khoản này không áp dụng đối với Phí dịch vụ của
											SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">8.
											Thời hạn xuất vé cho các ĐẶT CHỖ vé máy bay cần tuân theo
											thời hạn được quy định bởi các Hãng hàng không. Thời hạn này
											có thể được thay đổi, rút ngắn và Người sử dụng cần tuân theo
											các thời hạn này.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">9.
											Sau khi Người sử dụng đã nhận được xác nhận về việc ĐẶT CHỖ,
											xác nhận về việc đã nhận được thanh toán từ SANVEMAYBAY.vn,
											nếu Giá vé hoặc thời hạn xuất vé thay đổi SANVEMAYBAY.vn sẽ
											ngay lập tức thông báo lại cho Người sử dụng. Trong trường
											hợp này Người sử dụng có quyền: Chấp nhận trả thêm tiền chênh
											lệch thực hiện việc ĐẶT CHỖ, thực hiện việc thanh toán và
											xuất vé theo thời hạn xuất vé mới hoặc hủy việc ĐẶT CHỖ.
											Trong trường hợp Người sử dụng quyết định hủy việc ĐẶT CHỖ,
											Người sử dụng sẽ nhận lại toàn bộ số tiền đã trả cho
											SANVEMAYBAY.vn. Hãng hàng không chịu toàn bộ trách nhiệm về
											việc thay đổi giá vé cũng như thời hạn xuất vé dẫn tới việc
											Người sử dụng hủy việc ĐẶT CHỖ. SANVEMAYBAY.vn không chịu
											trách nhiệm về những chi phí có thể xảy email ra cho Người sử
											dụng do việc hủy ĐẶT CHỖ. SANVEMAYBAY.vn cũng không chịu
											trách nhiệm nếu ĐẶT CHỖ bị Hãng hàng không hủy vì lý do
											SANVEMAYBAY.vn không thể liên hệ với Người sử dụng hoặc Người
											sử dụng không trả lời emai, điện thoại. Người sử dụng chấp
											thuận rằng Hãng hàng không có thể thay đổi lại thời hạn mua
											vé và thời hạn mua vé mới chỉ cách thời điểm nhận thông báo
											một khoảng thời gian rất ngắn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">10.
											Người sử dụng chịu trách nhiệm về sự chính xác của các thông
											tin trong mục 3 ở trên cũng như các tham số cho việc lựa chọn
											các chuyến bay. Người sử dụng hiểu và đồng ý rằng: Sau khi
											ĐẶT CHỖ, nếu các thông tin và tham số thay đổi, Người sử dụng
											có thể phải thực hiện một ĐẶT CHỖ mới. Trong trường hợp này,
											SANVEMAYBAY.vn không đảm bảo rằng các thông tin về chuyến
											bay, Giá vé, ngày bay, hành trình sẽ giống như các thông tin
											mà SANVEMAYBAY.vn đã gửi tới Người sử dụng trong ĐẶT CHỖ cũ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">11.
											Người sử dụng đồng ý rằng một số giao diện của trang web
											SANVEMAYBAY.vn có thể đưa ra một số tư vấn về các chuyến bay.
											Các tư vấn này được thực hiện hoàn toàn vì mục đích phục vụ
											cho các chương trình khuyến mại và Người sử dụng hoàn toàn có
											thể chấp nhận hay từ chối các tư vấn này. Việc lựa chọn hay
											từ chối các tư vấn này là quyền của Người sử dụng và
											SANVEMAYBAY.vn không chịu trách nhiệm về các lựa chọn của
											Người sử dụng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">12.
											Việc ĐẶT CHỖ của Người sử dụng sẽ được SANVEMAYBAY.vn xác
											nhận bằng cách gửi cho Người sử dụng một email và tin nhắn
											điện thoại (SMS) với nội dung bao gồm Mã đặt chỗ trên
											SANVEMAYBAY.vn và toàn bộ các thông tin có liên quan tới các
											chuyến bay đã đặt. Trong trường hợp việc ĐẶT CHỖ thực hiện
											thông qua trung tâm hỗ trợ SANVEMAYBAY.vn, thông tin về Mã
											đặt chỗ trên SANVEMAYBAY.vn và toàn bộ các thông tin có liên
											quan tới các chuyến bay sẽ được nhân viên của trung tâm hỗ
											trợ SANVEMAYBAY.vn truyền tải tới Người sử dụng và sau đó
											được gửi tới Người sử dụng bằng email và SMS. Cụ thể, xác
											nhận về việc ĐẶT CHỖ sẽ bao gồm các thông tin sau:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Mã
												đặt chỗ (mã xác nhận);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Ngày
												hết hạn ĐẶT CHỖ (ngày thanh toán);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Tổng
												chi phí, bao gồm Giá vé và Phí dịch vụ;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hành
												trình;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Các
												hình thức thanh toán có thể. Nếu người sử dụng chưa chọn
												hình thức thanh toán bằng thẻ tín dụng và chưa thanh toán
												cho ĐẶT CHỖ;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin về người sử dụng vé máy bay theo thông báo từ Người sử
												dụng;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Các
												thông tin khác liên quan đến vé máy bay;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">13.
											Trong xác nhận ĐẶT CHỖ mà SANVEMAYBAY.vn gửi tới Người sử
											dụng có đường link dẫn tới trang web SANVEMAYBAY.vn Người sử
											dụng có thể đọc nội dung Điều khoản sử dụng này bằng cách bấm
											con chuột máy tính vào mục Điều khoản sử dụng trong phần
											footer của trang web SANVEMAYBAY.vn. Điều khoản sử dụng
											SANVEMAYBAY.vn cũng có thể được Trung tâm hỗ trợ
											SANVEMAYBAY.vn thông báo trực tiếp tới Người sử dụng. Bằng
											việc thanh toán để thực hiện việc ĐẶT CHỖ, Người sử dụng xác
											nhận rằng Người sử dụng đã hiểu và chấp thuận các điều khoản
											của Điều khoản sử dụng SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">14.
											Xác nhận ĐẶT CHỖ mà SANVEMAYBAY.vn gửi tới Người sử dụng
											không phải là vé máy bay và không có giá trị để thực hiện các
											chuyến bay.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">15.
											Tổng chi phí, bao gồm Giá vé máy bay và Phí dịch vụ, được
											tính bằng đơn vị là Đồng Việt Nam đã bao gồm thuế giá trị gia
											tăng (VAT).</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">16.
											Người sử dụng sẽ nhận được vé máy bay điện tử sau khi đã thực
											hiện việc thanh toán trong thời hạn ĐẶT CHỖ có ghi trong xác
											nhận ĐẶT CHỖ và số tiền thanh toán phù hợp với điều khoản C,
											mục 9 của Điều lệ sử dụng SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">17.
											Người sử dụng hiểu rằng việc cung cấp đầy đủ thông tin vào
											mục Thanh toán theo yêu cầu trong xác nhận ĐẶT CHỖ sẽ là cơ
											sở để thực hiện việc ĐẶT CHỖ. Bất kể sự chậm trễ, cung cấp
											thiếu thông tin nào cũng có thể dẫn tới tình trạng không thực
											hiện được việc ĐẶT CHỖ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">18.
											Việc thanh toán một phần của Tổng chi phí hoặc thanh toán sau
											thời hạn ĐẶT CHỖ đồng nghĩa với việc chưa thanh toán.</span>
									</p>
									<p>
										<strong><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chính
												sách thanh toán</span></strong>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Khách
											hàng có thể lựa chọn 1 trong các phương thức thanh toán khác
											nhau như liệt kê dưới </span><span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">đây.</span>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Xin
											lưu ý rằng tổng số tiền thanh tóan có thể thay đổi, phát sinh
											phí tùy hình thức thanh toán </span><span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">bạn
											chọn</span>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Khi
											đặt booking, bạn có thể chọn phương thức thanh toán phù hợp,
											sau đó chúng tôi sẽ thông </span><span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">báo
											về tình trạng booking của bạn, nếu booking được xác nhận
											(confirm) thì bạn sẽ tiến hành các thủ tục thanh toán</span>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><strong>Thanh
												toán bằng chuyển khoản ngân hàng</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Bạn
											có thể dễ dàng chọn thanh toán bằng chuyển khoản vào 1 trong
											các tài khoản sau của chúng tôi .&nbsp;</span>
									</p>
									<p>
										<strong><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin TK ngân hàng:</span></strong>
									</p>
									<h5 class="partTitle">
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">I.
											TÀI KHOẢN&nbsp;<span class="red">CÔNG TY</span>
										</span>
									</h5>
									<div id="bank-account-company">
										<table class="tbl_bank"
											style="width: 89.1595%; height: 342px;">
											<tbody>
												<tr class="tr-bank" style="height: 124px;">
													<td class="bank-logo" style="height: 124px;"><span
														style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><img
															decoding="async"
															src="https://thanhtoan.sanvemaybay.vn/images/lg_hdbank.jpg"
															alt=""></span></td>
													<td class="td-bank-detail" style="height: 124px;">
														<table class="tbl-bank-detail">
															<tbody>
																<tr class="bank-name">
																	<td colspan="2"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Ngân
																			hàng TMCP Phát Triển TP.HCM – HDBank</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Tên
																			tài khoản :</span></td>
																	<td class="com-name"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">CÔNG
																			TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP LIÊN VIỆT</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Số
																			tài khoản :</span></td>
																	<td class="bank-number"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">006704070019442</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Chi
																			nhánh :</span></td>
																	<td class="bank-branch"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Cộng
																			Hòa</span></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr class="tr-bank" style="height: 94px;">
													<td class="bank-logo" style="height: 94px;"><span
														style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><img
															decoding="async"
															src="https://thanhtoan.sanvemaybay.vn/images/lg_ocb.png"
															alt=""></span></td>
													<td class="td-bank-detail" style="height: 94px;">
														<table class="tbl-bank-detail">
															<tbody>
																<tr class="bank-name">
																	<td colspan="2"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Ngân
																			hàng TMCP Phương Đông – OCB</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Tên
																			tài khoản :</span></td>
																	<td class="com-name"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">CÔNG
																			TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP LIÊN VIỆT</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Số
																			tài khoản :</span></td>
																	<td class="bank-number"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">0100100052162008</span></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr class="tr-bank" style="height: 124px;">
													<td class="bank-logo" style="height: 124px;"><span
														style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><img
															decoding="async"
															src="https://thanhtoan.sanvemaybay.vn/images/lg-vcb.png"
															alt=""></span></td>
													<td class="td-bank-detail" style="height: 124px;">
														<table class="tbl-bank-detail">
															<tbody>
																<tr class="bank-name">
																	<td colspan="2"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Ngân
																			hàng TMCP Ngoại Thương Việt Nam – Vietcombank</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Tên
																			tài khoản :</span></td>
																	<td class="com-name"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">CÔNG
																			TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP LIÊN VIỆT</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Số
																			tài khoản :</span></td>
																	<td class="bank-number"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">0441000737131</span></td>
																</tr>
																<tr>
																	<td class="bank-label"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">Chi
																			nhánh :</span></td>
																	<td class="bank-branch"><span
																		style="font-family: arial, helvetica, sans-serif; font-size: 10pt;">PGD
																			Tân Sơn Nhì</span></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Xin
											lưu ý: giá vé/ giá phòng/ giá Gói du lịch chỉ đảm bảo không
											thay đổi khi việc mua dịch vụ đã hoàn tất, chúng tôi đã nhận
											được thanh toán và vé/ voucher đã xuất.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Các
											Hãng hàng không và các nhà cung cấp dịch vụ có thể thay đổi
											giá mà không cần báo trước. Chúng tôi được phép hủy booking
											đã đặt nếu không nhận được thanh toán đúng hạn .</span>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><strong>Thanh
												toán bằng tiền mặt</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Bạn
											có thể lựa chọn:&nbsp;</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thanh
											toán tại VP Đại lý vé máy bay CÔNG TY CP ĐẦU TƯ TỔNG HỢP LIÊN
											VIỆT </span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hoặc
											thanh toán tại nhà/ tại văn phòng của bạn: </span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Lưu
											ý, bạn có thể sẽ phải trả 1 khoản phí dịch vụ cho việc giao
											tại nhà Đề nghị liên hệ với chúng tôi trước nếu bạn chưa biết
											nên lựa chọn hình thức thanh toán nào.</span>
									</p>
									<p>
										<span
											style="font-family: arial, helvetica, sans-serif; font-size: 10pt;"><strong>Thanh
												toán qua các cổng thanh toán điện tử</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Có
											1 số nhà cung cấp cổng thanh toán khác nhau. Bạn có thể lựa
											chọn nhà cung cấp mà bạn thấy phù hợp. </span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Xin
											lưu ý. Bạn có thể sẽ phải trả phí tiện ích trực tuyến.&nbsp;</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chúng
											tôi sẽ thông báo về tình trạng booking của bạn, nếu booking
											được xác nhận (confirm) thì bạn sẽ tiến hành các thủ tục
											thanh toán</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">*.
											Sau khi đã truy cập vào website, Người sử dụng cần tuân theo
											các quy định, thông báo và hướng dẫn của website.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">*.
											SANVEMAYBAY.vn không phải là người quản lý trang web thanh
											toán thanh toán trực tuyến, do vậy SANVEMAYBAY.vn không chịu
											trách nhiệm về các việc có liên quan tới việc thanh toán bằng
											ví điện tử. Việc thanh toán bằng ví điện tử được thực hiện
											theo hợp đồng, thỏa thuận giữa Người sử dụng với bên cung cấp
											dịch vụ thanh toán trực tuyến. SANVEMAYBAY.vn không chịu
											trách nhiệm về bất cứ sai sót nào có liên quan tới việc thanh
											toán qua ví điện tử, bao gồm cả các sai sót xảy ra do Người
											sử dụng cung cấp thông tin không chính xác, không đầy khi
											thực hiện thanh toán.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">*.
											Sau khi thực hiện việc thanh toán bằng ví điện tử, Người sử
											dụng sẽ nhận được một xác nhận về việc thanh toán đã thành
											công từ cổng thanh toán. Trong vòng tối đa 1 giờ kể từ khi
											thực hiện việc thanh toán, nếu Người sử dụng không nhận được
											xác nhận về việc thanh toán đã thành công, Người sử dụng cần
											liên lạc ngay với bên cung cấp dịch vụ thanh toán và
											SANVEMAYBAY.vn (Trong giờ làm việc của Trung tâm hỗ trợ
											SANVEMAYBAY.vn) để tìm cách giải quyết.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">*.
											Thời điểm mà việc thanh toán đã thành công là thời điểm mà
											SANVEMAYBAY.vn đã nhận được xác nhận về việc Người sử dụng đã
											thanh toán từ cổng thanh toán trực tuyến.</span>
									</p>
									<p>
										<strong><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hủy
												đặt chỗ</span></strong>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">–
											Người sử dụng có thể hủy bỏ các ĐẶT CHỖ trong thời hạn mua
											vé, trước khi vé đã được xuất bằng cách liên lạc với Trung
											tâm hỗ trợ SANVEMAYBAY.vn trong giờ làm việc. Hủy ĐẶT CHỖ
											trước thời hạn mua vé sẽ không bị tính phí hủy.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">–
											Hãng hàng không có thể hủy các ĐẶT CHỖ trong thời hạn mua vé,
											trước khi vé đã được xuất vì một vài lý do từ phía Hãng hàng
											không hoặc trong các trường hợp bất khả kháng. Nếu trường hợp
											này xẩy ra, Trung tâm hỗ trợ SANVEMAYBAY.vn sẽ liên lạc ngay
											và thông báo cho Người sử dụng ngay trong giờ làm việc. Hình
											thức liên lạc bằng điện thoại hoăc email. Trong trường hợp
											này, Người sử dụng có quyền tạo các ĐẶT CHỖ mới.
											SANVEMAYBAY.vn không đảm bảo rằng các điều kiện trong các ĐẶT
											CHỖ mới sẽ giống như các điều kiện trong ĐẶT CHỖ đã bị hủy.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>D.
												Yêu cầu đặt vé máy bay và các dịch vụ khác</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">YÊU
											CẦU ĐẶT VÉ (ORDERING): là việc người sử dụng vào trang web
											của SANVEMAYBAY.vn hoặc thông qua Trung tâm hỗ trợ
											SANVEMAYBAY.vn để mua vé máy bay trên các LCC. Các ĐẶT CHỖ
											trên các Hãng hàng không truyền thống cũng được coi là các
											YÊU CẦU ĐẶT VÉ nếu vì một lý do nào đó ngoài tầm kiểm soát
											của SANVEMAYBAY.vn, mà việc ĐẶT CHỖ trên các Hãng hàng không
											truyền thống không thể thực hiện được.</span><br> <span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng thực hiện YÊU CẦU ĐẶT VÉ thông qua webiste của
											SANVEMAYBAY.vn hoặc thông qua SANVEMAYBAY.vn bằng cách gặp
											mặt trao đổi trực tiếp hoặc thông qua điện thoại.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Người sử dụng đồng ý các Điều khoản sử dụng SANVEMAYBAY.vn
											khi thực hiện YÊU CẦU ĐẶT VÉ với SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											Để thực hiện YÊU CẦU ĐẶT VÉ, Người sử dụng được yêu cầu cung
											cấp dữ liệu cho SANVEMAYBAY.vn hoặc Trung tâm hỗ trợ
											SANVEMAYBAY.vn:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin cá nhân của Người sử dụng, đặc biệt là tên và họ, địa
												chỉ e mail và số điện thoại. Trong trường hợp Người sử dụng
												mua vé cho người khác thì Người sử dụng cũng cần cung cấp
												thông tin cá nhân của người trực tiếp sử dụng vé;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Yêu
												cầu về các dịch vụ bổ sung – Nếu Người sử dụng yêu cầu dịch
												vụ bổ sung;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin cần thiết để phát hành hóa đơn thuế VAT;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hình
												thức thanh toán;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											YÊU CẦU ĐẶT VÉ có thể sẽ không thực hiện được nếu Người sử
											dụng bỏ qua một trong bốn mục trên.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											Để thực hiện YÊU CẦU ĐẶT VÉ, Người sử dụng cần cung cấp số
											một số thông tin liên quan tới việc lựa chọn vé máy bay của
											Người sử dụng như dưới đây:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Nơi
												khởi hành và nơi đến;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Ngày
												khởi hành, ngày trở lại;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Số
												lượng người lớn, bao gồm cả người cao tuổi (60 tuổi trở
												lên). Số lượng trẻ sơ sinh (0-2 tuổi), trẻ em (2-12 tuổi) và
												thanh thiếu niên (12-24 tuổi);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chỉ
												lựa chọn các chuyến bay thẳng;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Linh
												hoạt ngày khởi hành và ngày trở lại;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">6.
											Khi bắt đầu thực hiện YÊU CẦU ĐẶT VÉ, Người sử dụng cần kiểm
											tra và đảm bảo sự chính xác của tất cả các dữ liệu đã cung
											cấp. Khi quyết định thực hiện YÊU CẦU ĐẶT VÉ, Người sử dụng
											cần đặc biệt chú ý tới các thông tin có liên quan tới Giá vé,
											Phí dịch vụ, Tổng chi phí, điều khoản, điều kiện sử dụng vé
											máy bay của Hãng hàng không truyền thống, các Hãng hãng hàng
											không giá rẻ và Điều khoản sử dụng SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">7.
											Người sử dụng chịu trách nhiệm về sự chính xác của các thông
											tin trong mục 3 ở trên cũng như các tham số cho việc lựa chọn
											các chuyến bay.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">8.
											YÊU CẦU ĐẶT VÉ hoàn toàn không tương đồng với việc ĐẶT CHỖ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">9.
											Sau khi nhận được YÊU CẦU ĐẶT VÉ từ Người sử dụng, nhân viên
											tư vấn của SANVEMAYBAY.vn sẽ liên lạc với Người sử dụng bằng
											email hoặc điện thoại để xác nhận lại các thông tin trong YÊU
											CẦU ĐẶT VÉ cũng như thông báo cho Người sử dụng về tình trạng
											chỗ và Giá vé.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">10.
											Liên lạc với Người sử dụng bằng điện thoại hoặc email để xác
											nhận và khẳng định YÊU CẦU ĐẶT VÉ là cần thiết. Trong trường
											hợp không liên lạc được với Người sử dụng vì các lý do không
											thuộc phạm vi kiểm soát của SANVEMAYBAY.vn, YÊU CẦU ĐẶT VÉ sẽ
											được tự động hủy bởi SANVEMAYBAY.vn. SANVEMAYBAY.vn sẽ thông
											báo cho Người sử dụng về việc YÊU CẦU ĐẶT VÉ đã được hủy bỏ,
											lý do hủy thông qua email.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">11.
											SANVEMAYBAY.vn sẽ gửi xác nhận về việc đã nhận được YÊU CẦU
											ĐẶT VÉ tới Người sử dụng bằng email. Nội dung xác nhận sẽ bao
											gồm mã số của YÊU CẦU ĐẶT VÉ và toàn bộ các thông tin có liên
											quan tới việc đặt vé máy bay. Cụ thể như sau:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Mã
												YÊU CẦU ĐẶT VÉ;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hành
												trình;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Giá
												vé (Xem quy định về Giá vé trong mục 13 dưới đây);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin về người sử dụng vé máy bay theo thông báo từ Người sử
												dụng;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Các
												hình thức thanh toán có thể;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">12.
											Xác nhận YÊU CẦU ĐẶT VÉ mà SANVEMAYBAY.vn gửi tới Người sử
											dụng không phải là vé máy bay và không có giá trị để thực
											hiện các chuyến bay.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">13.
											Người sử dụng đồng ý rằng Giá vé mà Người sử dụng đã nhận
											được trong xác nhận YÊU CẦU ĐẶT VÉ từ SANVEMAYBAY.vn hoàn
											toàn có thể thay đổi cho tới khi việc mua vé đã được thực
											hiện xong (vé đã được xuất). Giá vé có thể thay đổi ngay cả
											sau thời điểm Người sử dụng đã thực hiện việc thanh toán cho
											các YÊU CẦU ĐẶT VÉ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">14.
											Trong các trường hợp khi Giá vé thay đổi sau thời điểm Người
											sử dụng thực hiện YÊU CẦU ĐẶT VÉ, bao gồm cả các trường hợp
											thay đổi trong khoảng thời gian từ thời điểm Người sử dụng đã
											nhận được xác nhận về YÊU CẦU ĐẶT VÉ hoặc đã thanh toán cho
											tới trước thời điểm vé đã được xuất, SANVEMAYBAY.vn sẽ thông
											báo ngay cho Người sử dụng bằng email hoặc qua điện thoại.
											Trong trường hợp này, Người sử dụng có quyền: Chấp nhận trả
											thêm tiền chênh lệch để thực hiện YÊU CẦU ĐẶT VÉ hoặc hủy YÊU
											CẦU ĐẶT VÉ. Trong trường hợp hủy YÊU CẦU ĐẶT VÉ, Người sử
											dụng sẽ nhận lại toàn bộ số tiền đã trả để thực hiện YÊU CẦU
											ĐẶT VÉ. LCC là người chịu trách nhiệm về các thay đổi Giá vé
											của các LCC và không chịu trách nhiệm về các chi phí có thể
											có cho Người sử dụng do sự thay đổi Giá vé. Phù hợp với Điều
											khoản sử dụng, SANVEMAYBAY.vn sẽ mua vé cho Người sử dụng
											theo các YÊU CẦU ĐẶT VÉ ngay sau khi nhận được thanh toán từ
											Người sử dụng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">15.
											Người sử dụng đồng ý rằng tình trạng chỗ và giá vé của các
											LCC thường xuyên thay đổi. Tình trạng chỗ và Giá vé của các
											LCC có thể thay đổi tại bất kỳ thời điểm nào sau khi Người sử
											dụng thực hiện YÊU CẦU ĐẶT VÉ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">16.
											Trong trường hợp Người sử dụng thực hiện việc thanh toán sau
											thời hạn mua vé đã được chỉ ra trong xác nhận YÊU CẦU ĐẶT VÉ
											và LCC thay đổi giá vé, SANVEMAYBAY.vn sẽ thông báo ngay cho
											Người sử dụng về sự thay đổi này. Người sử dụng có quyền hủy
											YÊU CẦU ĐẶT VÉ hoặc thanh toán thêm khoản chênh lệch để tiếp
											tục thực hiện YÊU CẦU ĐẶT VÉ. Không thanh toán thêm các khoản
											chênh lệch đồng nghĩa với việc hủy YÊU CẦU ĐẶT VÉ. Trong
											trường hợp hủy YÊU CẦU ĐẶT VÉ, Người sử dụng sẽ nhận lại toàn
											bộ số tiền đã trả để thực hiện YÊU CẦU ĐẶT VÉ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">17.
											YÊU CẦU ĐẶT VÉ chỉ có thể được thực hiện khi trong suốt
											khoảng thời gian từ ngày YÊU CẦU ĐẶT VÉ được gửi tới
											SANVEMAYBAY.vn cho tới khi vé đã được xuất, SANVEMAYBAY.vn có
											thể liên lạc được với Người sử dụng bằng email hay điện thoại
											trong giờ làm việc của Trung tâm hỗ trợ SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">18.
											Khi thực hiện việc mua vé trên các LCC, SANVEMAYBAY.vn đóng
											vai trò là đại diện cho Người sử dụng. SANVEMAYBAY.vn không
											chịu trách nhiệm về các hành động, sai sót của các LCC. Người
											sử dụng chấp thuận các nguyên tắc, điều khoản sử dụng dịch vụ
											của các LCC.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">19.
											Việc thay đổi các thông tin trong YÊU CẦU ĐẶT VÉ có thể dẫn
											tới việc phải làm các YÊU CẦU ĐẶT VÉ mới. Khi có bất cứ sự
											thay đổi nào về thông tin trong các YÊU CẦU ĐẶT VÉ,
											SANVEMAYBAY.vn không đảm rằng chuyến bay, tình trạng chỗ, Giá
											vé sẽ không thay đổi.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">20.
											Người sử dụng đồng ý rằng một số giao diện của trang web
											SANVEMAYBAY.vn có thể đưa ra một số tư vấn về các chuyến bay.
											Các tư vấn này được thực hiện hoàn toàn vì mục đích phục vụ
											cho các chương trình khuyến mại và Người sử dụng hoàn toàn có
											thể chấp nhận hay từ chối các tư vấn này. Việc lựa chọn hay
											từ chối các tư vấn này là quyền của Người sử dụng và
											SANVEMAYBAY.vn không chịu trách nhiệm về các lựa chọn của
											Người sử dụng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">21.
											Trong xác nhận về YÊU CẦU ĐẶT VÉ mà SANVEMAYBAY.vn gửi tới
											Người sử dụng có đường link dẫn tới trang web SANVEMAYBAY.vn.
											Người sử dụng có thể đọc nội dung Điều khoản sử dụng này bằng
											cách bấm con chuột máy tính vào mục Điều khoản sử dụng trong
											phần footer của trang web SANVEMAYBAY.vn. Điều khoản sử dụng
											SANVEMAYBAY.vn cũng có thể được Trung tâm hỗ trợ
											SANVEMAYBAY.vn thông báo trực tiếp tới Người sử dụng. Bằng
											việc thanh toán để thực hiện YÊU CẦU ĐẶT VÉ , Người sử dụng
											xác nhận rằng Người sử dụng đã hiểu và chấp thuận các điều
											khoản của Điều khoản sử dụng SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">22.
											Xác nhận YÊU CẦU ĐẶT VÉ mà SANVEMAYBAY.vn gửi tới Người sử
											dụng không phải là vé máy bay và không có giá trị để thực
											hiện các chuyến bay.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">23.
											Tổng chi phí, bao gồm Giá vé máy bay và Phí dịch vụ, được
											tính bằng đơn vị là Đồng Việt nam và đã bao gồm thuế giá trị
											gia tăng (VAT), nếu có.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">24.
											Người sử dụng sẽ nhận được vé máy bay điện tử sau khi đã thực
											hiện việc thanh toán đầy đủ cho các YÊU CẦU ĐẶT VÉ, bao gồm
											cả các khoản tăng thêm do Giá vé thay đổi theo khoản D, mục
											14 của Điều khoản sử dụng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">25.
											Người sử dụng hiểu rằng việc cung cấp đầy đủ thông tin vào
											mục Thanh toán theo yêu cầu trong xác nhận YÊU CẦU ĐẶT VÉ sẽ
											là cơ sở để thực hiện YÊU CẦU ĐẶT VÉ. Bất kể sự chậm trễ,
											cung cấp thiếu thông tin nào cũng có thể dẫn tới tình trạng
											không thực hiện được YÊU CẦU ĐẶT VÉ.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>E.
												Mua vé máy bay và các dịch vụ khác</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng có thể mua vé máy bay theo hình thức ĐẶT CHỖ,
											YÊU CẦU ĐẶT VÉ cho bản thân Người sử dụng hoặc cho một bên
											thứ ba khi:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Người
												sử dụng có đủ năng lực để thực hiện và chịu trách nhiệm về
												các hành vi của mình;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Người
												sử dụng cung cấp thông tin thật về cá nhân hoặc về hành
												khách (bên thứ ba);</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Người
												sử dụng hoặc hành khách có đầy đủ giấy tờ hợp pháp phục vụ
												cho việc đi lại;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Người
												sử dụng sử dụng thẻ tín dụng mà bản thân Người sử dụng là
												chủ sở hữu hoặc được sự cho phép của chủ sở hữu để thực hiện
												việc thanh toán vé máy bay. Người sử dụng hiểu rằng, việc sử
												dụng thẻ tín dụng giả hoặc lấy trộm là hành vi vi phạm Bộ
												Luật Hình sự;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											SANVEMAYBAY.vn thực hiện việc xuất vé máy bay sau khi đã nhận
											được đầy đủ các khoản thanh toán từ Người sử dụng trong giờ
											làm việc của SANVEMAYBAY.vn và phù hợp với các quy định trong
											Điều khoản sử dụng. Phụ thuộc vào hình thức thanh toán và
											trong một số trường hợp nhất định, SANVEMAYBAY.vn có thể thực
											hiện việc xuất vé ngoài giờ làm việc. Thông tin về ngày nghỉ
											lễ, ngày Trung tâm hỗ trợ SANVEMAYBAY.vn không làm việc được
											thông báo trên trang web của SANVEMAYBAY.vn và có thể sẽ được
											thông báo bằng điện thoại tới Người sử dụng. Với những vé có
											thời hạn xuất vé trùng với những ngày nghỉ, SANVEMAYBAY.vn có
											thể sẽ thực hiện việc xuất vé cho Người sử dụng vào những
											ngày trước đó.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											SANVEMAYBAY.vn sẽ gửi vé máy bay điện tử tới Người sử dụng
											qua email trong ngày mà vé điện tử được xuất. SANVEMAYBAY.vn
											không chịu trách nhiệm về việc Người sử dụng không nhận được
											vé điện tử do Người sử dụng cung cấp địa chỉ email sai. Trong
											trường hợp không nhận được vé máy bay, Người sử dụng nên kiểm
											tra lại các chương trình chống virus, chống spam xem các
											chương trình đó có ngăn cản việc nhận vé máy bay không hoặc
											liên hệ với SANVEMAYBAY.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>F.
												Hủy vé máy bay và các dịch vụ khác</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng chấp thuận rằng các Hãng hàng không truyền
											thống cũng như các LCC có thể hủy vé máy bay (Hãng hàng không
											hoặc LCC kết thúc hợp đồng vận chuyển) sau khi vé máy bay đã
											được xuất vì một số lý do chủ quan từ Hãng hàng không hoặc
											LCC hoặc vì các lý do bất khả kháng. Hãng hàng không truyền
											thống hoặc LCC chịu trách nhiệm về việc hủy vé máy bay này.
											Trong trường hợp nhận được thông tin về việc hủy vé từ các
											Hãng hàng không hoặc LCC, SANVEMAYBAY.vn sẽ thông báo ngay
											cho Người sử dụng cũng như giải pháp đề nghị của các Hãng
											hàng không hoặc LCC.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Trong trường hợp Hãng hàng không truyền thống hoặc LCC có các
											điều kiện về việc hủy vé trong bảng giá thì Người sử dụng có
											quyền hủy vé theo đúng các điều kiện đó (Người sử dụng kết
											thúc hợp đồng vận chuyển).</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											Trong trường hợp hủy vé, các khoản Phí dịch vụ mà Người sử
											dụng đã trả cho SANVEMAYBAY.vn sẽ không được trả lại.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Để thực hiện việc hủy vé, Người sử dụng liên hệ với Trung tâm
											hỗ trợ SANVEMAYBAY.vn bằng điện thoại hoặc email.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>G.
												Đổi vé máy bay và các dịch vụ khác</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng chấp thuận rằng các Hãng hàng không truyền
											thống cũng như các LCC có thể thay đổi các thông số của vé
											máy bay (ví dụ như: Thay đổi giờ khởi hành) sau khi vé máy
											bay đã được xuất vì một số lý do chủ quan từ Hãng hàng không
											hoặc LCC hoặc vì các lý do bất khả kháng. Hãng hàng không
											truyền thống hoặc LCC chịu trách nhiệm về thay đổi này. Trong
											trường hợp nhận được thông tin về việc thay đổi từ các Hãng
											hàng không hoặc LCC, SANVEMAYBAY.vn sẽ thông báo ngay cho
											Người sử dụng cũng như giải pháp đề nghị của các Hãng hàng
											không hoặc LCC.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Thông thường các Hãng hàng không truyền thống và các LCC
											không cho phép việc đổi tên hành khách. Trong một số đặc
											biệt, nếu Hãng hàng không hoặc các LCC cho phép đổi tên hành
											khách thì SANVEMAYBAY.vn sẽ thực hiện việc đổi tên theo yêu
											cầu của Người sử dụng. Người sử dụng đồng ý trả Phí dịch vụ
											cho SANVEMAYBAY.vn để thực hiện việc đổi tên hành khách.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>H.
												Bảo vệ thông tin cá nhân</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											SANVEMAYBAY.vn là đơn vị quản l‎ý các dữ liệu cá nhân của
											Người sử dụng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											SANVEMAYBAY.vn cam kết rằng các dữ liệu cá nhân của Người sử
											dụng được dùng cho mục đích:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thực
												hiện việc ĐẶT CHỖ, YÊU CẦU ĐẶT VÉ và làm trung gian trong
												việc ký kết hợp đồng vận chuyển và các dịch vụ du lịch khác
												theo hợp đồng mua dịch vụ;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Cung
												cấp các dịch vụ điện tử;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Đảm
												bảo liên lạc giữa Người sử dụng và SANVEMAYBAY.vn;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											Người sử dụng có quyền truy cập các dữ liệu cá nhân đã cung
											cấp để chỉnh sửa lại hoặc yêu cầu dừng việc xử l‎ý các dữ
											liệu này.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Việc cung cấp các dữ liệu cá nhân là tự nguyện, nhưng cần
											thiết để thực hiện các mục đích đã nêu trên.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											SANVEMAYBAY.vn cam kết rằng việc xử lý các dữ liệu cá nhân
											của Người sử dụng tuân thủ Luật pháp của nước Việt nam và
											SANVEMAYBAY.vn sẽ sử dụng các giải pháp kỹ thuật cần thiết để
											đảm bảo các thông tin cá nhân không bị truy cập trái phép.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">6.
											SANVEMAYBAY.vn khẳng định không xử lý các thông tin cá nhân
											mà Người sử dụng cung cấp cho các hệ thống thanh toán.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">7.
											Người sử dụng có thể tiến hành thực hiện mọi thay đổi trong
											phạm vi thông tin cá nhân của mình bằng cách gửi thư yêu cầu,
											kèm theo những chi tiết cần thay đổi đến địa chỉ thư điện tử
											sau của SANVEMAYBAY.vn: sanvelienviet@gmail.com.</span>
									</p>
									<p>
										<strong><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chính
												sách xử lý khiếu nại</span></strong>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">–
											Tiếp nhận mọi khiếu nại của khách hàng liên quan đến việc sử
											dụng dịch vụ của công ty.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">–
											Tất cả mọi trường hơp bảo hành, quý khách có thể liên hệ với
											chúng tôi để làm thủ tục bảo </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">hành.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">–
											Thời gian giải quyết khiếu nại trong thời hạn tối đa là 03
											(ba) ngày làm việc kể từ khi nhận </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">được
											khiếu nại của của khách hàng. Trong trường hợp bất khả kháng
											2 bên sẽ tự thương </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">lượng.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Người sử dụng có quyền khiếu nại về những dịch vụ được cung
											cấp bởi SANVEMAYBAY.VN.vn.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Nội dung khiếu nại của Người sử dụng cần có:</span>
									</p>
									<ul>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Lý
												do khiếu nại;</span></li>
										<li><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Thông
												tin Người sử dụng, bao gồm cả thông tin liên lạc và bản
												khiếu nại phải có chữ ký của Người sử dụng;</span></li>
									</ul>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											SANVEMAYBAY.VN.vn sẽ tiến hành xác minh và trả lời khiếu nại
											trong vòng 30 ngày kể từ ngày nhận được khiếu nại.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">4.
											Trong trường hợp hồ sơ khiếu nại không đáp ứng được các yêu
											cầu như ở mục 2, người có thẩm quyền đại diện
											SANVEMAYBAY.VN.vn sẽ thông báo ngay cho Người sử dụng và
											hướng dẫn Người sử dụng hoàn thành hồ sơ khiếu nại.
											SANVEMAYBAY.VN.vn chỉ tiến hành xác minh và trả lời khiếu nại
											khi Người sử dụng hoàn thành hồ sơ khiếu nại theo đúng yêu
											cầu như trong mục 2.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">5.
											Khiếu nại có thể được viết dưới dạng văn bản hoặc thư điện tử
											và gửi đến địa chỉ: sanvelienviet@gmail.com.</span>
									</p>
									<p>
										<strong><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Chính
												sách vận chuyển và giao nhận</span></strong>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Hiện
											tại hầu hết các vé máy bay và Voucher khách sạn và package
											được xuất điện tử (e-</span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">ticket,
											e-voucher). Sau khi tiền của quý khách đã vào tài khoản của
											chúng tôi, chúng tôi sẽ </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">xuất
											vé và voucher khách sạn, package .. gửi vào email của quý
											khách. </span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Trong
											1 số trường hợp, để xác nhận thanh toán chúng tôi có thể yêu
											khách hàng gửi cho </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">chúng
											tôi các tài liệu hỗ trợ chứng minh như Xác nhận của Ngân hàng
											(Bank Statement), bản </span><span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">photo
											copy hộ chiếu, thẻ tín dụng… tới email&nbsp;
											info@sanvemaybay.vn .</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Trường
											hợp phát sinh các Vé giấy/ Voucher giấy (nếu có), chúng tôi
											sẽ gửi /giao</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;"><strong>K.
												Điều khoản cuối cùng</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">1.
											Các tài liệu đi kèm theo văn bản này là một phần không thể
											tách rời của văn bản này.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">2.
											Tất cả các tranh chấp phát sinh sẽ được giải quyết tại Tòa án
											nước CHXHCN Việt Nam, quyết định của Toà án là quyết định
											cuối cùng và buộc hai bên phải thực hiện.</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">3.
											Bản Điều khoản sử dụng được đăng tải trên trang web
											www.SANVEMAYBAY.vn.</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>