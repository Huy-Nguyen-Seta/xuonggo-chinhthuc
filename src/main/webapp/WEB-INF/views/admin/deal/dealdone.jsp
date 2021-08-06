<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="newAPI" value="/api/deal"/>
<c:url var="newURL" value="/quan-tri/listdanhsachxong"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>hoá đơn</title>
		
	</head>

	<body>
	
	<c:forEach var="item" items="${model.listResult}">
	
		<div class="main-content">
		<form action="<c:url value='/quan-tri/donedeal'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner" >
			
					
										<div style="width:1310px;border-color: #F08080;border-width: 15px;border-style: solid ;position: relative;left: 5px;top: 5px;  border-image: url(https://cdn.w600.comps.canstockphoto.com/boder-of-line-thai-background-art-vector-clipart-vector_csp20766257.jpg) 9% round">
					<div style="background: #F08080;height: 150px">
				
					<div style="height: 200px;width:1270px;border-color: #F08080";border-width: 5px;border-style: solid ;position: relative;left: 5px;top: 5px">
						<a class="navbar-brand"  style="position: absolute;left: 90px;top:90px;font-family:cursive; ;color: gold;font-size: 30px ">XƯỞNG GỖ</a>
	<a>	<img  src="<c:url value='/template/Picture1.png' />" style="height: 150px;width: 150px;position: absolute;left: 110px;top:0px"></img></a>
					<p style="font-size: 30px;color:black;font-weight: 700;position: absolute;left: 400px;top:0px">HOÁ ĐƠN GIÁ TRỊ GIA TĂNG</p>
						<i style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 550px;top:50px">(VAT INVOICE)</i>
						<i style="font-size: 18px;color:black;font-weight: 700;position: absolute;left: 510px;top:100px" id="demo"></i>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:30px" id="hvn">Mẫu số : <font style="color:black ;font-weight: 700">NQH/01 </font> </p>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:60px" id="hvn">Ký hiệu : <font style="color:black">000000${item.makh }</font> </p>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:90px" id="hvn">Số : <font style="color:black">  000000${item.id }</font> </p>

						</div>
						</div>
						<div style="height: 200px;width:1270px;border-color: #F08080;border-width: 1px;border-style: solid ;position: relative;left: 5px">
					<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:10px">Đơn vị bán (Seller) : &emsp; <font style="color:black;font-size: 17px;font-weight: 700">XƯỞNG GỖ HUYDIEU CHUYÊN SẢN XUẤT SẢN PHẨM ĐỒ GỖ MỸ NGHỆ VIỆT NAM</font></p>
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:50px" id="hvn">MST (Tax Code) : &emsp; &ensp;<font style="color:black;font-size: 17px;font-weight: 700"> 0123456789JQK</font></p>
					<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:90px" id="hvn">Địa Chỉ (Address) : &emsp;<font style="color:black;font-size: 17px;font-weight: 700"> Số 7,Hồ Thiền Quang ,Hai Bà Trưng,Hà Nội</font></p>
						
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:130px" id="hvn">Số Điện Thoại (Tel) : &emsp;<font style="color:black;font-size: 17px;font-weight: 700">0123456789JQK</font></p>
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:170px" id="hvn">STK (Account No) : &emsp;<font style="color:black;font-size: 17px;font-weight: 700">Thanh toán qua ví điện tử</font> </p>
						
						
						
						</div>
							<div style="height: 200px;width:1270px;border-color: #F08080;border-width: 1px;border-style: solid ;position: relative;left: 5px">
					<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:10px"> Người Mua (Buyer) :  <font style="color:black;font-size: 17px;font-weight: 700">${item.user.fullName }</font></p>
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:50px" id="hvn">Địa Chỉ (Adress) :<font style="color:black;font-size: 17px;font-weight: 700"> ${item.user.diachi }</font></p>
					<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:90px" id="hvn">Số Điện Thoại (Tel) : <font style="color:black;font-size: 17px;font-weight: 700"> ${item.user.sdt }</font></p>
						
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:130px" id="hvn">Gmail (Gmail) : <font style="color:black;font-size: 17px;font-weight: 700">${item.user.gmail }</font></p>
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:170px" id="hvn">STK (Account No) : <font style="color:black;font-size: 17px;font-weight: 700">Thanh toán qua ví điện tử</font> </p>
						
						
						
						
						</div>
							<div style="width:1270px;border-color: #F08080;border-width: 1px;border-style: solid ;position: relative;left: 5px">
					
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								
							
								<div class="row" style="width: 1292px;position: relative;left: -20px;top: -10px">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered" style=" border: 1px solid pink" >
												<thead >
													<tr style="background: #F08080;color:black;height: 100px;width: 1270px">
														
														<th class="p1">&emsp; STT</th>
														<th class="p1">&emsp; Ảnh đại diện</th>
														<th class="p1">&emsp; Tên sản phẩm  </th>
														<th class="p1">&emsp; Số lượng </th>
														<th class="p1">&emsp; Đơn giá</th>
														<th class="p1">&emsp; Thành tiền </th>
													
													</tr>
												</thead>
												<tbody >
													<c:set var="count" value="${0}" /> 
														<c:forEach var="item1" items="${item.showdeal}">
														  <c:set var="count" value="${count +1}" /> 
														<tr>
														    <td style=" border: 1px solid  #F08080" id="cot">${count}</td>
														    <td style=" border: 1px solid  #F08080"><img src="${item1.news.thumbnail}" style="height: 50px;width: 80px"/></td>
															<td style=" border: 1px solid  #F08080">${item1.news.title}</td>
															<td style=" border: 1px solid  #F08080">${item1.soluong}</td>
															<td style=" border: 1px solid  #F08080">${item1.news.gia}.000VND</td>
															<td style=" border: 1px solid  #F08080" >${item1.news.giacuoi}.000VND</td>
															
														
														</tr>
													</c:forEach>
												
												</tbody>
											
											</table>
																		
										</div>
									
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
					<div style="height: 230px;width:1270px;border-color: #F08080;border-width: 1px;border-style: solid ;position: relative;left: 5px;background: #FFCCCC">
					<p style="font-size: 15px;color:black;font-weight: 700;position: relative;left: 800px;top:10px" id="hvn">Công Tiền Hàng (sub total) : ${item.giahoadon }.000VND</p>
					<hr style="  border: 1px solid  #F08080;position: relative;top: 10px">
					<p style="font-size: 15px;color:black;font-weight: 700;position: relative;left: 800px;top:0px" id="hvn">Cộng Tiền Thuế GTVT (VAT amount) : 0.00%</p>
					<hr style="  border: 1px solid  #F08080;position: relative;top: 10px">
											<p style="font-size: 15px;color:black;font-weight: 700;position: relative;left: 720px;top:0px" id="hvn">Tổng Cộng Tiền Thanh Toán (Total Payment) : ${item.giahoadon }.000VND</p>
					
					<hr style="  border: 1px solid  #F08080;position: relative;top: 0px">
														<p style="font-size: 15px;color:black;font-weight: 700;position: relative;left: 40px;top:0px" id="hvn">Số Tiền Viết Bằng Chữ  ( Amount In Word) : </p>
										
						</div>
						<div style="height: 300px"></div>
								<p style="font-size: 18px;color:black;position: relative;left: 150px;top:-280px;font-weight: 700">Đơn vị mua hàng (Buyer)  &emsp;</p>
																<p style="font-size: 18px;color:black;position: relative;left: 800px;top:-310px;font-weight: 700">Đơn vị bán hàng (Seller)  &emsp;</p>
																<img src="https://img.pikbest.com/png-images/qiantu/yellow-tick-pattern_2626970.png!c1024wm0/compress/true/progressive/true/format/webp/fw/1024" height="200px";width="200px" style="position: relative;left: 800px;top: -300px"></img>
																																<p style="font-size: 18px;color:black;position: relative;left: 800px;top:-480px;font-weight: 700">Đã Được Ký Điện Tử Bởi  &emsp;</p>
																																																			<p style="font-size: 18px;color:black;position: relative;left: 760px;top:-350px;font-weight: 700">XƯỞNG GỖ HUYDIEU VIỆT NAM  &emsp;</p>
																
								
			
				</div>
			
			
		</div>
			<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>	
												</form>

											<button onclick="warningBeforeDelete()" style="height: 40px;left: 900px;border-color: rgb(80, 199, 193);position: relative;width: 160px;top: -40px">Xoá đơn hàng</button>
										
		</div>
		
	
		<!-- /.main-content -->
	
		<script>

	


		
	var a="${item.createdDate}";
	var b=a.split(" ");
	var c=b[0].split("-");
	
	var date=c[2];
	var month=c[1];
	var year=c[0];
	document.getElementById("demo").innerText="Ngày "+date+" Tháng "+month+" Năm "+year;
	

		
		
		
		
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(1);
							$('#page').val(page);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
			function warningBeforeDelete() {
					swal({
					  title: "Xác nhận xóa",
					  text: "Bạn có chắc chắn muốn xóa hay không",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-success",
					  cancelButtonClass: "btn-danger",
					  confirmButtonText: "Xác nhận",
					  cancelButtonText: "Hủy bỏ",
					}).then(function(isConfirm) {
					  if (isConfirm) {
						  var ids =[];
							
							ids.push(${model.id});
							
							deleteNew(ids);
					  }
					});
			} 
			function deleteNew(data) {
		        $.ajax({
		            url: '${newAPI}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${newURL}?page=1&limit=1&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${newURL}?page=1&limit=1&message=error_system";
		            }
		        });
		    }
			
		</script>
					</c:forEach>
	</body>
	</html>