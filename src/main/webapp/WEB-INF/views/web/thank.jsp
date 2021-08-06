<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="trang-chu?page=1&limit=9"/>

<c:url var="newAPI" value="/api/deal"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='https://gotrangtri.vn/wp-content/uploads/2019/04/do-go-noi-that-phong-khach.jpg' />" rel="shortcut icon">
</head>



<body style="height: 2000px">
<div style="height: 100px">
</div>

<section class="section bg-gray" style="height: 800px">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center mx-auto">
                <div class="404-img">
                    <img src="images/404/404.png" class="img-fluid" alt="">
                </div>
                <div class="404-content" style="position:absolute;top:100px ">
                    <h1 class="display-1 pt-1 pb-2" >CẢM ƠN </h1>
                    <p class="px-3 pb-2 text-dark">Cảm ơn bạn đã đặt hàng của chúng tôi chúng tôi sẽ liên hệ lại trong thời gian sớm nhất </p>
                    <a href="trang-chu?page=1&limit=9" class="btn btn-info">Tiếp tục mua hàng</a>
                </div>
            </div>
        </div>
    </div>
</section>



</body>

</html>