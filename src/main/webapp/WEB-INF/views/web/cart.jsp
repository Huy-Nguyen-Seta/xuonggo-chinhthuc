<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="thank"/>
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


<body class="body-wrapper">
			<style>
.button2:hover {
 background-color:black;
  background: black;
  color: white;
}
</style>

<div style="height: 2500px">

	<div style="height: 130px">
		
	</div>
		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0" style="width: 1520px">
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-adslist" style="width: 1520px">
					<h3 class="widget-header" style="width: 1520px;height: 200px"><p style="position: absolute;left: 600px;font-size: 60px;top:50px;color:#606060 ">GIỎ HÀNG</p></h3>
					<table class="table table-responsive product-dashboard-table" style="width: 1520px">
						<thead>
							<tr>
								<th>ẢNH ĐẠI ĐIỆN</th>
								<th style="width: 200px">TIÊU ĐỀ </th>
								<th style="width: 300px">GIÁ</th>
								<th style="width: 200px">SỐ LƯỢNG</th>
							
								<th class="text-center" style="width: 200px">HÀNH ĐỘNG</th>
							</tr>
						</thead>
						<tbody id="item">
							
							
							
						</tbody>
					</table>

				</div>

				
			<button class="button2" onclick="xoaAll()" style="position: relative;left: 1170px;top:50px;height: 50px;width: 130px ">xoá giỏ hàng</button>
			<button  class="button2" id="btnAdddata" style="position: relative;left: 1200px;top:40px;height: 50px;width: 130px">thanh toán giỏ hàng</button>

			</div>


</div>
<script>
var keylocal='dsitem';
function taodoituong(idsanpham,soluong,thumbnail,gia,title)
{
    var itemgiohang=new Object();
    itemgiohang.id=idsanpham;
    itemgiohang.soluong=soluong;
    itemgiohang.thumbnail=thumbnail;
    itemgiohang.gia=gia;
    itemgiohang.title=title;
    return itemgiohang;
}
function laydanhsachgiohang(){
    var danhsachitem=new Array();
    var json=localStorage.getItem(keylocal);
    if(json!=null)
    danhsachitem=JSON.parse(json);

    return danhsachitem;
}

function luutrulocal(danhsach){
    var json=JSON.stringify(danhsach);

    localStorage.setItem(keylocal,json);


}






	hienthidanhsach();
	function chuyendanhsachhtml(danhsach){
var  Tong='';
for(var i=0;i<danhsach.length;i++){
Tong=Tong+chuyendoisanghtml(danhsach[i]);

}
if(!danhsach.length){
	Tong='<p style="position: absolute;left: 600px;top:400px;color:black;font-size:40px;weight:700px">Không có sản phẩm </p>\n'+
	'<p style="position: absolute;left: 650px;top:450px;color:black;font-size:40px;weight:700px">nào trong giỏ </p>\n'+
	'';
}
return Tong;
}
function hienthidanhsach(){
	var danhsach=laydanhsachgiohang();
	
	var HTM=chuyendanhsachhtml(danhsach);
	var node=document.getElementById('item');
	node.innerHTML=HTM;
}



	


function chuyendoisanghtml(itemgiohang){
	//	//src="<c:url value="/resources/images/'+itemgiohang.thumbnail'+"/>"'+  '
	console.log(itemgiohang.thumbnail);
		var html='<tr>\n'+
'\n'+
'								<td class="product-thumb" style="width:200px; height:140px">\n'+
'									<img style=" width:380px; height:140px " src="<c:url value="/resources/images/'+itemgiohang.thumbnail+'"/>"'+'  alt="image description"></td>\n'+
'								<td class="product-details">\n'+
'									<h3 class="title">'+itemgiohang.title+'</h3>\n'+
'									<span class="add-id"><strong>Ad ID:</strong> ng3D5hAMHPajQrM</span>\n'+
'									<span><strong>Posted on: </strong><time>Jun 27, 2017</time> </span>\n'+
'									<span class="status active"><strong>Status</strong>Active</span>\n'+
'									<span class="location"><strong>Location</strong>Dhaka,Bangladesh</span>\n'+
'								</td>\n'+
'								<td style="font-size: 20px;color: #606060">'+itemgiohang.gia+'.000VNĐ'+'</td>\n'+
'                                        <td class="product-quantity">\n'+
'                                                <div class="quantity buttons_added">\n'+
'                                                    <input type="button" onclick="sub('+itemgiohang.id+')" class="minus" value="-" style="background: #606060">\n'+
'                                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="'+itemgiohang.soluong+'" min="0" step="1">\n'+
'                                                    <input type="button" onclick="add('+itemgiohang.id+')" class="plus" value="+" style="background : #606060">\n'+
'                                                </div>\n'+
'                                            </td>								<td class="action" data-title="Action">\n'+
'									<div class="">\n'+
'										<ul class="list-inline justify-content-center">\n'+
'											\n'+
'											<li class="list-inline-item">\n'+
'												<a data-toggle="tooltip" data-placement="top" onclick="xoaitem('+itemgiohang.id+')" title="Delete" class="delete" >\n'+
'													<i class="fa fa-trash"></i>\n'+
'												</a>\n'+
'											</li>\n'+
'										</ul>\n'+
'									</div>\n'+
'								</td>\n'+
'							</tr>';
return html;
	}
	
function xoaitem(id) {
  var danhsach =laydanhsachgiohang();
  var danhsachmoi= danhsach.filter(element=>element.id!=id);
luutrulocal(danhsachmoi);
location.reload();

	
}	
function xoaAll(){
localStorage.clear();
location.reload();
}
function sub(id){
	var danhsach =laydanhsachgiohang();

  var j=0;
  for(var i=0;i<danhsach.length;i++){
	  if(danhsach[i].id==id&&danhsach[i].soluong>1){
		  danhsach[i].soluong--;
		 
	  }
  }
  luutrulocal(danhsach);
  location.reload();
}
function add(id){
	var danhsach =laydanhsachgiohang();

  var j=0;
  for(var i=0;i<danhsach.length;i++){
	  if(danhsach[i].id==id){
		  danhsach[i].soluong++;
		 
	  }
  }
  luutrulocal(danhsach);
  location.reload();
}

$('#btnAdddata').click(function (e) {
    e.preventDefault();
    var data = laydanhsachgiohang();
   
    var aray=new Array();
    for(var i=0;i<data.length;i++){
        aray[i]=data[i];
        aray[i].masp=data[i].id;
    }
   
  
    	addNew(aray);
 
});

function addNew(data) {
	$.ajax({
        url: '${newAPI}',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(data),
       
        success: function (result) {
        	localStorage.clear();
        	window.location.href = "${newURL}?message=insert_success";
        },
        error: function (r) {
        	console.log(r);
        	var r = jQuery.parseJSON(data.responseText);
            console.log("Message: " + r.Message);
            console.log("StackTrace: " + r.StackTrace);
            console.log("ExceptionType: " + r.ExceptionType);
        }
    });
}

	


</script>
</body>

</html>