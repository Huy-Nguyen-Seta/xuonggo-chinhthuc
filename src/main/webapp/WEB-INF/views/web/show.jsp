<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='https://gotrangtri.vn/wp-content/uploads/2019/04/do-go-noi-that-phong-khach.jpg' />" rel="shortcut icon">
</head>


<body class="body-wrapper">
<style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
}
.button:hover {
 background-color:rgb(80, 199, 193);
  background: rgb(80, 199, 193);
  color: white;
}
.button1:hover {
 background-color:white;
  background: white;
  color: none;
}
.button2:hover {
 background-color:none;
  background: none;
  color: white;
  }
  .p1{
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

	<div style="height: 130px">
		
	</div>
	<div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4" >
				<ul class="" id="bxslider-home4" >
					<li>
						<img style="height: 700px" src="<c:url value='/resources/images/${model.afterimage}'/>" alt="Slide">
						
					</li>
					<li><img style="height: 700px" src="<c:url value='/resources/images/${model.afterimage}'/>" alt="Slide">
						
					</li>
					<li><img style="height: 700px" src="<c:url value='/resources/images/${model.afterimage}'/>" alt="Slide">
						
					</li>
					<li><img style="height: 700px" src="<c:url value='/resources/images/${model.afterimage}'/>" alt="Slide">
						
					</li>
				</ul>
		</div>
  
</div>
 <div class="col-sm-7" style="position: absolute;left: 20px;top:600px">
                    <div class="shopping-item" style="border-width: 3px;border-radius: 100px " >
                        <a  onclick="PushIncart('${model.id}','${model.afterimage}','${model.gia }','${model.title}')" href="#!">Thêm vào giỏ - <span  class="cart-amunt">${model.gia}.000Đ</span> <i class="fa fa-shopping-cart"></i> </a>
                    </div>
                </div>
 <!-- End slider area -->
    
<div style="height: 600px;border-radius: 50px;width: 1400px;border-width:10px;position:relative ;background:#F5DEB3;left: 60px;top: 50px;border-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfO_snpTWldWlMAcarb28WmxfQNv-Q4XRdsQ&usqp=CAU) 10% round;border-style: solid ;border-width: 15px">
<p style="font-size: 40px;font-weight:900;position: absolute;left: 520px;top: 60px;color: black;font-family: serif;">${model.title }</p>

<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 160px;color: black;font-family: cursive">+Mô tả sản phẩm:</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 150px;top: 190px;color: black;width: 1200px;font-family: cursive;">+${model.content }</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 360px;color: black;font-family: cursive">+Chất liệu :${model.chatlieu}</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 460px;color: black;font-family: cursive">+Kích cỡ :   ${model.chieudai }M x ${model.chieurong }M</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 520px;color: black;font-family: cursive">+Số lượng tồn : ${model.soluongton } Sản phẩm</p>

</div>
<section class="popular-deals section bg-gray" style="background:  #FFFACD">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Một số sản phẩm liên quan</h2>
					<p>Một số sản phẩm có thể bạn sẽ thích</p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- offer 01 -->
			<div class="col-lg-12">
				<div class="trending-ads-slide">
			<c:forEach var="item" items="${model.listResult}">
					<div class="col-sm-12 col-lg-4">
					 <div class="single-product">
						<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			 <div class="product-f-image">
				<img class="card-img-top img-fluid" src="<c:url value='/resources/images/${item.afterimage}'/>" style="height: 250px" alt="Card image cap">
				  <div class="product-hover">
                                        <a style="border-radius: 100px" onclick="PushIncart('${item.id}','${item.afterimage}','${item.gia }','${item.title}')" href="#!" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                        <a style="border-radius: 100px" href="ctsp?cate=${cate }&id=${item.id}" class="view-details-link"><i class="fa fa-link"></i> Xem chi tiết</a>
                                    </div>
                                    </div>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="single.html">${item.title }</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="single.html"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="#"><i class="fa fa-calendar"></i>26th December</a>
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
				</div>
			</div>
			
			
		</div>
	</div>
</section>
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
</body>

</html>