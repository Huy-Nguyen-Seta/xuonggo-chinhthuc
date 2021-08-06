<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='/template/Picture1.png' />" rel="shortcut icon">
</head>


<body class="body-wrapper">
<style>
ul.pagination li a {
    font-weight: 600;
    border-radius: 3px !important;
    font-size: 10px;
    padding: 0;
    height: 40px;
    width: 40px;
    line-height: 40px;
    text-align: center;
    border-color: transparent;
    box-shadow: 0px 1px 3px 0px rgb(0 0 0 / 10%);
    color: #666;
}
ul.pagination li {
    margin-right: 10px;
    width: 40px;
    height: 40px;
    font-size: 16px;
}
.page-item.disabled .page-link {
    color: #6c757d;
    pointer-events: none;
    cursor: auto;
    background-color: #fff;
    border-color: #dee2e6;
    font-size: 10px;
}.p1{
  color: white;
  position: relative
  ;left: 150px;
  top: 0px;
  font-size: 15px;
  font-weight: 600;
 
  }
  .p2{
  color: #C7C7C7;
   width: 250px;
   position: relative;
   
  }
    .p3{
  color: #00FFFF;
  
   position: relative;
   font-size: 15px;

   
   
  }
      .p4{
  color: #00FFFF;
  
   position: relative;
   font-size: 15px;

     left: 700px;top: -300px
   
  }
 .p5{
  color: #C7C7C7;
   width: 320px;
   position: relative;
   
  
}
</style>

<div style="background:  #FFFACD">
<section>
	<div style="height: 120px">
		
	</div>
</section>
<section class="page-search"  style="background: #212529">
	<div class="container"  >
		<div class="row">
			<div class="col-md-12">
				<!-- Advance Search -->
				<div class="advance-search" >
				<form action="<c:url value='/seach'/>" id="formSubmit" method="get">
						<div class="form-row" >
							<div class="form-group col-md-4">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="news" name="news" placeholder="Tên sản phẩm">
							</div>
							<div class="form-group col-md-3">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="cate" name="findcate" placeholder="Loại sản phẩm">
							</div>
							<div class="form-group col-md-3">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="modelw" name="modelw" placeholder="Loại gỗ ">
							</div>
							<div class="form-group col-md-2">
								<input type="hidden" value="1"  name="page"/>
                           <input type="hidden" value="9" name="limit"/>	
								<button type="submit" class="" style="background: black;border-color: white;height: 50px;color: white">Tìm Kiếm</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section-sm">
	<div class="container">
		
		<div class="row">
			<div class="col-md-3">
				<div class="category-sidebar">
					<div class="widget category-list">
	<h4 class="widget-header">Các loại sản phẩm</h4>
	<ul class="category-list">
	<c:forEach var="item" items="${list}">
		<li><a href="trang-chu/sp?page=1&limit=9&cate=${item.id }">${item.name } <span>${item.soluongsp}</span></a></li>
		</c:forEach>
	</ul>
</div>



<div class="widget filter">
<form action="<c:url value='/seachsp'/>" id="formSubmit" method="get">
	<h4 class="widget-header">Xem sản phẩm</h4>
	<select  onchange='this.form.submit()' id="select"  name="select">
	
		<option value="1">Bán chạy</option>
		<option value="2">Giá dưới 1.000.000</option>
		<option value="4">Giá hơn 1.000.000</option>
	</select>
	</form>
</div>




				</div>
			</div>
			<div class="col-md-9">
				<div class="category-search-filter">
					<div class="row">
						<div class="col-md-6">
							<form action="<c:url value='/seachsp'/>" id="formSubmit" method="get">
							<strong>Xem sản phẩm</strong>
							<select name="select" id="select" onchange='this.form.submit()'>
								
								<option value="1">Bán chạy</option>
								<option value="2">Giá dưới 1.000.000</option>
								<option value="4">Giá trên 1.000.000</option>
							</select>
							</form>
						</div>
					
					</div>
				</div>
				<div class="product-grid-list">
					<div class="row mt-30">
					<c:forEach var="item" items="${model.listResult}">
						<div class="col-sm-12 col-lg-4 col-md-6">
						   <div class="single-product">
							<!-- product card -->
<div class="product-item bg-light" id="product">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
		
			 <div class="product-f-image">
				<img class="card-img-top img-fluid" src="<c:url value='/resources/images/${item.afterimage}'/>" style="height: 250px" alt="Card image cap">
				  <div class="product-hover">
                                        <a style="background: pink;border-radius: 100px" onclick="PushIncart('${item.id}','${item.afterimage}','${item.gia}','${item.title}')" href="#!"  class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ </a>
                                        <a style="background: pink;border-radius: 100px" href="<c:url value='/trang-chu/ctsp?cate=${item.categoryId }&id=${item.id}'/>" class="view-details-link"><i class="fa fa-link"></i> Xem chi tiết</a>
                                    </div>
                                    </div>
			
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a style="color: #009999" href="single.html">${item.title}</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="single.html"><i class="fa fa-folder-open-o"></i>  Số lượng tồn : ${item.soluongton } Sản phẩm  </a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="single.html"><i class="fa fa-folder-open-o"></i>    Số lượng mua : ${item.soluongmua } Sản phẩm</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="#"><i class="fa fa-calendar"></i>Giá sản phẩm : ${item.gia }.000VND</a>
		    	</li>
		    </ul>
		    <p class="card-text">${item.shortDescription }</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>


</div>
						</div>
						</c:forEach>
						
					<form action="<c:url value='/seach'/>" id="formSubmit1" method="get">
	<ul class="pagination" id="pagination" style="height: 30px;position: relative;left: 80%;top: 100%"></ul>	
<input type="hidden" value="" id="page" name="page"/>
<input type="hidden" value="" id="limit" name="limit"/>	
<input type="hidden" value="${news }" name="news"/>
<input type="hidden" value="${ findcate}" name="findcate"/>
<input type="hidden" value="${modelw }" name="modelw"/>

	
</form>
			</div>
		</div>
	</div>
	</div>
	</div>
</section>
<!--============================
=            Footer            =
=============================-->


</div>
<div style="height:500px;background: #232425;border: solid;border-width: 1px;border-color: black">
<p style="color: white;position: relative;left: 100px;top: 50px;font-size: 15px;font-weight: 600">Về chúng tôi</p>
<p class="p1" style="left:400px;top:17px">Danh mục sản phẩm</p>
<p class="p1" style="left:700px;top:-15px">Thông tin</p>
<p class="p1" style="left:1000px;top:-45px">Hỗ trợ</p>
<p class="p2" style="left: 100px;top: -50px">Webside chính thức và duy nhất của chúng tôi .Hiện tại chúng tôi chỉ nhận đơn hàng trên webside chứ không nhận ở nơi nào khác</p>
<p class="p3" style="left: 400px;top: -140px"> &#8226 Bàn Gỗ  </p>
<p class="p3" style="left: 400px;top: -140px">  &#8226 Tủ Gỗ  </p>
<p class="p3" style="left: 400px;top: -140px"> &#8226 Ghế Gỗ </p>
<p class="p3" style="left: 400px;top: -140px">  &#8226 Nội Thất Bằng Gỗ </p>
<p class="p3" style="left: 400px;top: -140px"> &#8226 Một Số Sản Phẩm Khác </p>
<p class="p4" > &#8226  Giới Thiệu </p>
<p class="p4" > &#8226  Chính Sách Bảo Mật </p>
<p class="p4" > &#8226  Điều Khoản </p>
<p class="p4" > &#8226  Stiemap </p>
<p class="p5" style="left: 1000px;top: -430px">Mọi thắc mắc và góp ý cần hỗ trợ xin liên hê Fanpage và Facebook</p>
<i style="font-size:24px;left: 1000px;top: -430px" class="p5 fa" >&#xf082;</i>
<i style="font-size:24px;left: 710px;top: -430px" class="p5 fa" >&#xf081;</i>


</div>



<script type="text/javascript">
var array=${model.listResult};
console.log(array);
if(array[0]==null){
	
	$('.product-grid-list').append("<p style=\"text-align: center;\">không có kết quả phù hợp với tìm kiếm<p>");

	
}

var totalPages = ${model.totalPage};
var currentPage = ${model.page};
$(function () {
    window.pagObj = $('#pagination').twbsPagination({
        totalPages: totalPages,
        visiblePages: 10,
        startPage: currentPage,
        onPageClick: function (event, page) {
        	if (currentPage != page) {
        		$('#limit').val(9);
				$('#page').val(page);
				$('#formSubmit1').submit();
			}
        }
    });
});
</script>
</body>

</html>