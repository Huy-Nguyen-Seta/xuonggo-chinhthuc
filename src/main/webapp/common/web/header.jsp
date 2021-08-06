<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <link href="<c:url value='/template/Picture1.png' />" rel="shortcut icon">


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

	<div class="container hightnav" style="height: 130px">
		<a id="nameicon" class="navbar-brand" href="http://localhost:8080/spring-mvc/trang-chu?page=1&limit=9" style="position: absolute;left: 110px;top:65px;font-family:cursive; ;color: gold;font-size: 30px ;    box-shadow: 10px 5px 10px;">XƯỞNG GỖ</a>
	<a  href="http://localhost:8080/spring-mvc/trang-chu?page=1&limit=9">	<img id="icon"  src="<c:url value='/template/Picture1.png' />" style="height: 120px;width: 120px;position: absolute;left: 130px;top:2px"></img></a>
	 <p style="color:white;position:absolute;left:350px;font-weight: 700 ">	 <i style="font-size:24px;color: white" class="fa">&#xf095;</i> 
	 ..01234650789</p>      
  <div class="col-sm-7" style="position: absolute;left: 580px;top:10px">
                    <div id="cart" class="shopping-item" style="border: 1px solid #333;box-shadow: 4px 4px 4px;background: none">
                     
                  <a href="http://localhost:8080/spring-mvc/cart">Cart - <span style="color: white  " class="cart-amunt" id="cart-amunt">$0</span> <i class="fa fa-shopping-cart"></i> <span class="product-count"  id="soluong">0</span></a>
               <div style="width:350px  ;overflow-y: scroll ;" id="table" >
                   <table  >
  <thead>
    <tr>
      <th style="color: #FFA500;" scope="col">Số</th>
      <th style="color: #FFA500;" scope="col">Ảnh</th>
      <th style="color: #FFA500;" scope="col">Tên Sản Phẩm</th>
      <th style="color: #FFA500;" scope="col">Thao Tác</th>
    </tr>
  </thead>
  <tbody  id="body" class="body1">
   
  
  </tbody>
</table>

</div>
                    </div>
                    <div>
                 
                    </div>
                    
                </div>
        
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive" style="position: absolute;left: 500px;font-size: 30px">
			<ul class="navbar-nav ml-auto" style="font-size: 30px">
				<li class="nav-item "><a class="nav-link" href="<c:url value='/trang-chu'/>">Trang chủ
						<span class="sr-only">(current)</span>
				</a></li>
				<security:authorize access = "isAnonymous()">
					<li  class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-ky'/>">Đăng ký</a></li>
				</security:authorize>
				<security:authorize access = "isAuthenticated()">
					<li class="nav-item"><a class="nav-link" href="#">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='/thoat'/>">Thoát</a></li>
				</security:authorize>
			</ul>
		</div>
	</div>
</nav>
<script>

$('#table').slideUp();

$('#cart').hover(
		  function() {
			  $('#table').slideToggle(30);
			  $('#table').animate({height:"250px"},30);
			 // $('#nameicon').animate({height:"50px",width:"130px","font-size":"21px",left:"120px"},10);
			  }, function() {
				  $('#table').slideUp(30);
				//  $(this).animate({height:"120px",width:"130px"},);
				//  $('#nameicon').animate({height:"50px",width:"200px","font-size":"30px",left:"110px"},10);
			  }
			);
			
	function laydanhsachgiohang(){
    var danhsachitem=new Array();
    var json=localStorage.getItem('dsitem');
    if(json!=null)
    danhsachitem=JSON.parse(json);
  
    return danhsachitem;
}


var danhsach =laydanhsachgiohang();
var tong=0;
for(var index1=0;index1<danhsach.length;index1++){
	console.log(danhsach[index1])
    $('#body').append('<tr  id="node'+danhsach[index1].id+'">\n'+
    		' <th style="color:#FFA500	 ;font-weight:700	" scope="row">'+index1+'</th>\n'+
    		'    <td  >\n'+
    		'									<img style=" width:50px; height:50px;padding-bottom: 5px;padding-top: 5px " src="<c:url value="/resources/images/'+danhsach[index1].thumbnail+'"/>"'+'  alt="image description"></td>\n'+
    		'    <td style="color:#FFA500	;font-size:15px ;font-weight:900		">'+danhsach[index1].title.toUpperCase()+'</td>\n'+
    		'    <td class="trash1" onclick="xoa('+danhsach[index1].id+')"  style="color:red"	 ><i class="fa fa-trash"></i></td>\n'+
    		'  </tr>')
	
	tong+=danhsach[index1].gia*danhsach[index1].soluong;
	

}
function xoa(id) {
	 // $('#table').slideToggle(30);
	var object = danhsach.filter(item=>item.id==id)
	danhsach =danhsach.filter(item=>item.id!=id);
	 luutrulocal(danhsach);
	 $('#node'+id).remove();
		 $( "span#soluong" ).text( danhsach.length );
		 tong=tong-object[0].gia*object[0].soluong;
		
	
		
		 
		  $("span#cart-amunt").text(tong.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND");
	
}
$('.trash1').hover(
	    function() {
	       
	        $(this).animate({
	        	color: "red"
	        }, 300);
	     
	    }, 
	    function() {
	        // do this on hover out
	        $(this).animate({
	          
	            color: '#FEFEFE'
	        }, 300);
	    }
	);
     $("span#cart-amunt").text(tong.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND");
   

 $( "span#soluong" ).text( danhsach.length );

 $(document).ready(function(){
	 $(window).scroll(function(event){
	var position=$('body,html').scrollTop();
	if(position!=0){
		$('.hightnav').animate({height:"110px"},10);
		$('#icon').animate({height:"90px",width:"100px"},10);
		$('#nameicon').animate({height:"50px",width:"130px","font-size":"21px",left:"120px"},0);
	}
	else{
		$('.hightnav').animate({height:"130px"},10);
		 $('#icon').animate({height:"120px",width:"130px"},10);
		  $('#nameicon').animate({height:"50px",width:"200px","font-size":"30px",left:"110px"},0);
	}

	 });
 });
 
</script>