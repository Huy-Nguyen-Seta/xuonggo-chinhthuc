<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title> danh sách hoá đơn</title>
		</head>
		<body >
	<style>
	.dropbtn {
  background-color: black;
  color: white;
  padding: 14px;
  font-size: 14px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
	#myInput {

  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
    border:none;
  border-bottom: 1px solid black;

  margin-bottom: 12px;
  width: 50%
}
p{
color:#ffffff

}
</style>
		<header class="py-5" >
            
         
                <div class="p-4 p-lg-5  rounded-3 text-center"  >
                 
                    	
                        <h1 class="display-5 fw-bold" style="">Danh sách hoá đơn đã duyệt</h1>
                        <img alt="" height="50px" width="50px" style="  transform:scaleX(-1);" src="<c:url value='/template/admin/lou.png' />">
                        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names user.." title="Type in a name">
                        <div class="dropdown">
  <button class="dropbtn">Xem Theo</button>
  <div class="dropdown-content">
  <a href="#">Hoá Đơn Mới</a>
  <a href="#">Hoá Đơn Cũ</a>

  </div>
  
</div>
            <c:if test="${not empty message}">
									<div class="alert alert-${alert}">
			  							${message}
									</div>
								</c:if>           
                </div>
               
		
            
        </header>
      
        <!-- Page Content-->
        <section class="pt-4" >
            <div class="container px-lg-5">
                <!-- Page Features-->
              
                <div class="row gx-lg-5" id="hang1">
                  <div class="col-md-4 mb-5" style="border-color: none">
                    <div class="card h-100" style="border-color: #ffffff" >
                     <div class="card-footer" style="border-top-left-radius  : 90px;height: 40px;border-top-right-radius: 90px;background: 	#DCDCDC"></div>
                        <div class="card-body" style="background: #FF6666;border-bottom-left-radius: 60px;border-bottom-right-radius: 60px" >
                            <h2 style="position: relative;left: 27%" class="card-title">Card One</h2>
                            <p class="card-text">➤Lorem ipsum dolor sit amet, </p>
                            <hr style=" border: 1px solid black;">
                             <p class="card-text">➤Lorem ipsum dolor sit amet,</p>
                            <hr style=" border: 1px solid black;">
                             <p class="card-text">➤Lorem ipsum dolor sit amet, consectetur .</p>
                            <hr style=" border: 1px solid black;">
                            <a  class="btn btn-primary btn-lg" style="position: relative;left: 27%;color: pink;background-color: pink" href="#!">Xem chi tiết</a>
                        </div>
                       
                    </div>
                </div>
                 <h2 style="font-size: 20px;color: gray;font-weight: 500">tháng 2 năm 2021</h2>
                 </div>  
            </div>
        </section>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"></script>

<script type="text/javascript">
function loadDeal(){
	var tukhoa=$('#myInput').val().toLowerCase();
	console.log(tukhoa);
	var node =document.getElementById("hang1");

	var x='<div class="col-md-4 mb-5" style="border-color: none">\n'+
	'                    <div class="card h-100" style="border-color: #ffffff" >\n'+
	'                     <div class="card-footer" style="border-top-left-radius  : 90px;height: 40px;border-top-right-radius: 90px;background: 	#DCDCDC"></div>\n'+
	'                        <div class="card-body" style="background: #FF6666;border-bottom-left-radius: 60px;border-bottom-right-radius: 60px" >\n'+
	'                            <h2 style="position: relative;left: 27%" class="card-title">Card One</h2>\n'+
	'                            <p class="card-text">➤Lorem ipsum dolor sit amet, </p>\n'+
	'                            <hr style=" border: 1px solid black;">\n'+
	'                             <p class="card-text">➤Lorem ipsum dolor sit amet,</p>\n'+
	'                            <hr style=" border: 1px solid black;">\n'+
	'                             <p class="card-text">➤Lorem ipsum dolor sit amet, consectetur .</p>\n'+
	'                            <hr style=" border: 1px solid black;">\n'+
	'                            <a  class="btn btn-primary btn-lg" style="position: relative;left: 27%;color: pink;background-color: pink" href="#!">Xem chi tiết</a>\n'+
	'                        </div>\n'+
	'                       \n'+
	'                    </div>\n'+
	'                </div>';;
	var htmltong="";
	var danhsach=${list};
	console.log(danhsach)
	console.log(danhsach.slice())
	var list=danhsach.sort((a, b) =>  new Date(b.createdDate)-new Date(a.createdDate));
	var thang;
	var nam;
	for(var i=0;i<list.length;i++){
		
		//  console.log(new Date(list[i].createdDate).getMonth());
		// console.log(new Date(list[i].createdDate).getFullYear());
	    if(list[i].user.fullName.toLowerCase().indexOf(tukhoa)>-1)
	    {
	    	if(thang!=new Date(list[i].createdDate).getMonth()|| nam!=new Date(list[i].createdDate).getFullYear())
	    	{
	    		thang=new Date(list[i].createdDate).getMonth();
				nam=new Date(list[i].createdDate).getFullYear();
	    					htmltong+='    <p style="font-size: 30px;color: #989898;font-weight: 500">▶Tháng '+(thang+1)+' Năm '+nam+'<p>';
	    					
	    					}
	        htmltong+='<div class="col-md-4 mb-5 tweenMax" style="border-color: none">\n'+
	        '                    <div class="card h-100" style="border-color: #ffffff" >\n'+
	        '                     <div class="card-footer" style="border-top-left-radius  : 90px;height: 40px;border-top-right-radius: 90px;background: 	#DCDCDC"></div>\n'+
	        '                        <div class="card-body" style="background: #FF6666;border-bottom-left-radius: 60px;border-bottom-right-radius: 60px" >\n'+
	        '                            <h2 style="position: relative;left: 27%;color:#FFFF00" class="card-title">Mã  Đơn '+list[i].id+'</h2>\n'+
	        '                            <p class="card-text">➤Khách Hàng : '+list[i].user.fullName+' </p>\n'+
	        '                            <hr style=" border: 1px solid black;">\n'+
	        '                             <p " class="card-text">➤Giá Trị Đơn Hàng :'+list[i].giahoadon+'.000 VNĐ</p>\n'+
	        '                            <hr style=" border: 1px solid black;">\n'+
	        '                             <p class="card-text">➤Ngày Lập Hoá Đơn: '+list[i].createdDate+'</p>\n'+
	        '                            <hr style=" border: 1px solid black;">\n'+
	        '                            <a  class="btn btn-primary btn-lg" style="position: relative;left: 27%;color: pink;background-color: pink" href="./deal?id='+list[i].id+'">Xem chi tiết</a>\n'+
	        '                        </div>\n'+
	        '                       \n'+
	        '                    </div>\n'+
	        '                </div>';
			
	    }

	}
	node.innerHTML=htmltong;
	console.log("đã chay")
	}
loadDeal();
$(document).ready(function() {
	
$('#myInput').on('keyup',loadDeal);
TweenMax.staggerFrom(
		$('.tweenMax'),1,{top:100,opacity:0},0.4);
});
//tween box 



</script>
		</body>
	
		
	</html>