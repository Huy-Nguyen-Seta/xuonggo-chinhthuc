<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='/template/Picture1.png' />" rel="shortcut icon">
</head>

<body class="body-wrapper">

<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800);
figure.snip1220 {
  font-family: 'Raleway', Arial, sans-serif;
  color: #fff;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 220px;
  max-width: 310px;
  width: 100%;
  color: #ffffff;
  text-align: left;
  background-color: #07090c;
  font-size: 16px;
  -webkit-perspective: 50em;
  perspective: 50em;
}
figure.snip1220 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
figure.snip1220 img {
  opacity: 1;
  max-width: 100%;
  vertical-align: top;
  -webkit-transition-delay: 0.2s;
  transition-delay: 0.2s;
  -webkit-transition: all 0.3s ease-in;
  transition: all 0.3s ease-in;
}
figure.snip1220 figcaption {
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  -webkit-transform: rotateX(90deg) translateY(-150%) scale(0.5);
  transform: rotateX(90deg) translateY(-150%) scale(0.5);
  z-index: 1;
  opacity: 0;
  padding: 0 30px;
  -webkit-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
figure.snip1220 h3,
figure.snip1220 p {
  line-height: 1.5em;
}
figure.snip1220 h3 {
  margin: 0;
  font-weight: 800;
  text-transform: uppercase;
}
figure.snip1220 p {
  font-size: 0.8em;
  font-weight: 500;
  margin: 0 0 15px;
}
figure.snip1220 .read-more {
  border: 2px solid #ffffff;
  padding: 0.5em 1em;
  font-size: 0.8em;
  text-decoration: none;
  color: #ffffff;
  display: inline-block;
}
figure.snip1220 .read-more:hover {
  background-color: #ffffff;
  color: #000000;
}
figure.snip1220:hover img,
figure.snip1220.hover img {
  -webkit-transform: rotateX(-100deg) translateY(50%) scale(0.5);
  transform: rotateX(-100deg) translateY(50%) scale(0.5);
  opacity: 0;
  -webkit-transition-delay: 0;
  transition-delay: 0;
}
figure.snip1220:hover figcaption,
figure.snip1220.hover figcaption {
  -webkit-transform: rotateX(0deg) translateY(-50%) scale(1);
  transform: rotateX(0deg) translateY(-50%) scale(1);
  opacity: 1;
  -webkit-transition-delay: 0.5s;
  transition-delay: 0.5s;
}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
ul.pagination li a {
    font-weight: 600;
    border-radius: 3px !important;
    font-size: 16px;
    padding: 0;
    height: 40px;
    width: 70px;
    line-height: 60px;
    text-align: center;
    border-color: transparent;
    box-shadow: 0px 1px 3px 0px rgb(0 0 0 / 10%);
    color: #666;
}
ul.pagination li {
    margin-right: 10px;
    width: 40px;
    height: 40px;
    font-size: 26px;
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
.slide{
position: absolute;
opacity: 0;
visibility: hidden;
height: 100%;
width: 100%
}
.slide img{

height: 600px;
width: 100%
}
.slide.activebt{
opacity: 1;
visibility: visible;
}
span#pre{
position: absolute;
}
span#after{
position: absolute;
}
.buttonSlide span{
color:  white;
font-size: 60px;
opacity: 0.8


}
.buttonSlide ul{
position: absolute;
z-index: 10;
width: 100px;
bottom:10%;
left: 50%;
margin-left: -50px;
display: flex;
justify-content: space-between;
font-size: 90px

} 
.buttonSlide ul li{
width: 20px;
height: 20px;
background: white;
opacity: 0.3;
list-style: none;
border-radius: 50%;
cursor: pointer;
transition:0.6s;

} 
.HideLeft{
  animation: HideLeft 1s forwards;
}
@-webkit-keyframes HideLeft{
  from{
    transform: translateX(0%);

  }
  to{
    transform: translateX(-100%);
  }
}
.GoRight{
  animation: GoRight 1s forwards;
}
@-webkit-keyframes GoRight{
  from{
    transform: translateX(100%);

  }
  to{
    transform: translateX(0%);
  }
}

.HideRight{
  animation: HideRight 1s forwards;

}
@-webkit-keyframes HideRight{
  from{
  transform:translateX(0%)
  }
  to{
    transform:translateX(100%)
  }


}

.GoLeft{
  animation: GoLeft 1s forwards;

}
@-webkit-keyframes GoLeft{
  from{
  transform:translateX(-100%)
  }
  to{
    transform:translateX(0%)
  }


}
 .buttonSlide ul li.buttonli {
opacity: 0.8
}



</style>
<div style="background: #FFFACD;height: 3900px">

<div class="AllSlide" style="width: 100%;height: 700px;padding-top: 120px">
<div class="eachSlide" style="width: 100%;overflow: hidden;">
<div class="slide activebt"><img alt=""  src="https://xuongmochcm.com/wp-content/uploads/2017/03/XUONG-MOC-HCM-1.jpg" ></div>
<div class="slide"><img alt="" src="https://xuongmochcm.com/wp-content/uploads/2017/03/XUONG-MOC-HCM-1.jpg" ></div>
<div class="slide"><img alt="" src=https://xuongmochcm.com/wp-content/uploads/2017/03/XUONG-MOC-HCM-1.jpg ></div>
</div>
<div class="buttonSlide">
<span style="position: absolute;top: 50%;z-index: 10;cursor: pointer;" id="pre"><i   class="fas fa-chevron-left"></i></span>
<span style="position: absolute;top: 50%;right :0%;z-index: 10;cursor: pointer;" id="after"><i class="fas fa-chevron-right"></i></span>
<ul>
<li class="buttonli"></li>
<li></li>
<li></li>
</ul>
</div>
</div>


<div style="height: 250px ;width: 1520px">
<p class="buuttonAnimate" style="font-size:40px;color: #181818;position: absolute;left: 560px;top:800px;font-style: inherit;font-weight: 800"> BÁN CHẠY NHẤT</p>

<a  href='<c:url value='/seachsp?select=1'/>'><button class="button buuttonAnimate" style="border-color: rgb(80, 199, 193);position: absolute;left: 750px;top:900px;height: 40px;width: 150px;font-weight: 800;box-shadow: 1px 2px 2px black"  >XEM TẤT CẢ</button></a>
<a  href='<c:url value='/seachsp?select=5'/>'><button class="button buuttonAnimate" style="border-color: rgb(80, 199, 193);position: absolute;left: 570px;top:900px;height: 40px;width: 150px;font-weight: 800;box-shadow: 1px 2px 2px black"  >Gợi Ý Cho Bạn</button></a>

</div>
<section class="section-sm">


			<div class="col-md-9">
				
				<div class="product-grid-list">
					<div class="row mt-30">
					<c:forEach var="item" items="${model.listResult}">
						<div class="col-sm-12 col-lg-4 col-md-6" style="position: relative;left: 150px">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="trang-chu/sp?page=1&limit=9&cate=${item.id }">
				<figure class="snip1220" style="background: #FFFACD">
  <img style="height: 250px;width: 350px" src="<c:url value='/resources/images/${item.afterimage}'/>"/>
  <figcaption>
    <h3>${item.name } </h3>
    <p>${item.shortDescription } </p>
    <a href="trang-chu/sp?page=1&limit=9&cate=${item.id }" style="color: #009999;box-shadow: 2px 2px 1px" class="read-more">Xem thêm</a>
  </figcaption>
</figure>
			</a>
		</div>
		<div class="card-body">
		    <h4  class="card-title"><a style="color: #009999" href="trang-chu/sp?page=1&limit=9&cate=${item.id }">${item.name}</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="trang-chu/sp?page=1&limit=9&cate=${item.id }"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="trang-chu/sp?page=1&limit=9&cate=${item.id }"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		      <p class="card-text">Số Lượng Sản Phẩm : ${item.soluongsp }</p>
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
	</c:forEach>
</div>
</div>
	<form action="<c:url value='/trang-chu'/>" id="formSubmit" method="get">
	
<ul class="pagination" id="pagination" style="height: 30px;left: 1040px;position: absolute;"></ul>	
<input type="hidden" value="" id="page" name="page"/>
<input type="hidden" value="" id="limit" name="limit"/>	
	
</form>

</div>
						
					
</section>
<img src ="<c:url value="/template/web/6U2hGIQ - Imgur.gif"/>" style="height: 350px;width: 1300px;position: absolute; top: 2800px;left: 100px"></img>
<p style="position: absolute; top: 2900px;left: 660px;font-size:30px;font-weight: 700;color: white;">HUYSHOP</p>
<p style="position: absolute; top: 2950px;left: 580px;font-size:20px;font-weight: 200;color: white;">Cập nhât thông tin sản phẩm mới</p>
<button class="button2" style="background: white;box-shadow: 1px 2px 1px;position: absolute; top: 3000px;left: 620px;height: 30px;width: 100px;border-color: white;color: none">FANPAGE</button>
<button class="button2" style="background: none;position: absolute; top: 3000px;left: 740px;height: 30px;width: 100px;border-color: white;color: white">FACEBOOK</button>
<p style="font-size:35px;color: #181818;position: absolute;left: 540px;top:3180px;font-style: inherit;font-weight: 800"> AWESOME FEEDBACK</p>

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3340px" src="https://cdn-img-v2.webbnc.net/uploadv2/web/11/11945/media/2019/08/28/12/18/1566951531_go-nguyen-lieu-tang-doanh-nghiep-go-gap-kho-11.jpg"></img>
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3340px" src="https://gotrangtri.vn/wp-content/uploads/2019/04/anh-bia-1.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3340px" src="https://dogomynghexuanthang.com/wp-content/uploads/2021/02/ban-ghe-phong-khach-dep-1-1.png">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3340px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3s1bRsbofJA1mufvwpITzjqZUF3isOkSPw&usqp=CAU">
<img style="height:250px;width:290px;position: absolute;left: 1220px;top:3340px" src="https://dogoquoccuong.com/wp-content/uploads/2020/11/Ban-ghe-minh-nghe-go-huong-tay-17-4.jpg">

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3600px" src="https://dogocu.vn/kcfinder/upload/images/e%281%29.jpg">
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3600px" src="https://toplist.vn/images/800px/do-go-my-nghe-co-truyen-thanh-luan-518390.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3600px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnp9hTuhkmMQtOSl8XBiMltIKCYDjytlceqQ&usqp=CAU">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3600px" src="https://dogomynghexuanthang.com/wp-content/uploads/2020/05/mot-san-pham-do-go-tot-phai-co-thiet-ke-dep-mat-tien-dung-va-an-toan.jpg">
<img style="height:250px;width:290px;position: absolute;left: 1220px;top:3600px" src="https://giuongtangtreemnhapkhau.com/files/news/304/images/Do-go-noi-that-la-gi-1.jpg">





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
$(document).ready(function(){
//xử lý buuttonAnimate
$(window).scroll(function (event) {
	var positionthead=$('html,body').scrollTop();
	var positionBt=$('.buuttonAnimate').offset().top;
	if(positionthead>positionBt-650&&positionthead<positionBt+150){
		
		$('.buuttonAnimate').addClass('animate__bounceIn');
		
	}
	else{
		$('.buuttonAnimate').removeClass('animate__bounceIn');
	}
	
	
});

//end
	
	
	
  var autoLoad= setInterval(() => {
   $('#after').trigger('click');
    
  }, 2000);
  $('#after').click(function(event){
    if (event.originalEvent !== undefined) {
 clearInterval(autoLoad);
}
    var slideafter=$('.activebt').next();
   console.log($('.activebt').length)
   if(slideafter.length>0){
   console.log($('.activebt').length)
    var  a=  $('.buttonli').next()
	   $('.buttonli').removeClass('buttonli')
        a.addClass('buttonli')
        //end 
    $('.activebt').addClass('HideLeft').one('webkitAnimationEnd',function(event){
      $('.HideLeft').removeClass('HideLeft').removeClass('activebt');
    });
    slideafter.addClass('activebt').addClass('GoRight').one('webkitAnimationEnd',function(event){
      $('.GoRight').removeClass('GoRight');
    }) 

  }else{
     //xu lý nút tròn
    $('.buttonli').removeClass('buttonli');
      $('li:first-child').addClass('buttonli');
      //end
    $('.activebt').addClass('HideLeft').one('webkitAnimationEnd',function(event){
      $('.HideLeft').removeClass('HideLeft').removeClass('activebt');
    });
    $('.slide:first-child').addClass('activebt').addClass('GoRight').one('webkitAnimationEnd',function(event){
      $('.GoRight').removeClass('GoRight');
     
    })
   
  }})
  $('#pre').click(function(event){
    if (event.originalEvent !== undefined) {
 clearInterval(autoLoad);
}
    var slideBefor=$('.activebt').prev();
    if(slideBefor.length!=0){
     
     //xu lý nút tròn
     var  b=  $('.buttonli').prev()
	   $('.buttonli').removeClass('buttonli')
        b.addClass('buttonli')
     //end
      $('.activebt').addClass('HideRight').on('webkitAnimationEnd',function(envent){
       $('.HideRight').removeClass('HideRight').removeClass('activebt');
      });
      slideBefor.addClass('activebt').addClass('GoLeft').one('webkitAnimationEnd',function(event){
               slideBefor.removeClass('GoLeft');
      })

    }
    else{
           //xu lý nút tròn
    $('.buttonli').removeClass('buttonli');
      $('li:last-child').addClass('buttonli');
      //end
      $('.activebt').addClass('HideRight').on('webkitAnimationEnd',function(envent){
       $('.HideRight').removeClass('HideRight').removeClass('activebt');
      });
      $('.slide:last-child').addClass('activebt').addClass('GoLeft').one('webkitAnimationEnd',function(event){
               $('.GoLeft').removeClass('GoLeft');
      })
    }

  })
$('.buttonSlide ul li').click(function(envent){
  if (event.originalEvent !== undefined) {
 clearInterval(autoLoad);
}
clearInterval(autoLoad);
  var index=$('.buttonli').index()+1;
  var indexClick=$(this).index()+1;
  if(index>indexClick){
  $('.buttonSlide ul li').removeClass('buttonli')
  $(this).addClass('buttonli')
  $('.activebt').addClass('HideRight').one('webkitAnimationEnd',function(event){
      $('.HideRight').removeClass('HideRight').removeClass('activebt');
    });
    $('.slide:nth-child('+indexClick+')').addClass('activebt').addClass('GoLeft').one('webkitAnimationEnd',function(event){
      $('.GoLeft').removeClass('GoLeft');
    }) 

}else if(index<indexClick){
  $('.buttonSlide ul li').removeClass('buttonli')
  $(this).addClass('buttonli')
  $('.activebt').addClass('HideLeft').one('webkitAnimationEnd',function(event){
      $('.HideLeft').removeClass('HideLeft').removeClass('activebt');
    });
    $('.slide:nth-child('+indexClick+')').addClass('activebt').addClass('GoRight').one('webkitAnimationEnd',function(event){
      $('.GoRight').removeClass('GoRight');
    }) 
}
})


});
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
				$('#formSubmit').submit();
			}
        }
    });
});
</script>

</body>

</html>