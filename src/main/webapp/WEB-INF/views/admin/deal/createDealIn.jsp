<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="newAPI" value="/api/dealnhap"/>
<c:url var="newURL" value="/quan-tri/listdanhsachnhap"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Danh sách hoá đơn nhập</title>
	

	</head>

	<body>
<style>
.select2-selection__rendered {
    line-height: 31px !important;
}
.select2-container .select2-selection--single {
    height: 46px !important;
    border-color: black;
}
.select2-selection__arrow {
    height:  46px !important;
    
}</style>

		<div class="main-content">
						<div style="width:1310px;border-color: #00CED1;border-width: 15px;border-style: solid ;position: relative;left: 5px;top: 5px;  border-image: url(https://cdn.w600.comps.canstockphoto.com/boder-of-line-thai-background-art-vector-clipart-vector_csp20766257.jpg) 9% round">
					<div style="background: #00CED1;height: 150px">
				
					<div style="height: 200px;width:1270px;border-color: #00CED1";border-width: 5px;border-style: solid ;position: relative;left: 5px;top: 5px">
						<a class="navbar-brand"  style="position: absolute;left: 90px;top:90px;font-family:cursive; ;color: gold;font-size: 30px ">XƯỞNG GỖ</a>
	<a>	<img  src="<c:url value='/template/Picture1.png' />" style="height: 150px;width: 150px;position: absolute;left: 110px;top:0px"></img></a>
					<p style="font-size: 30px;color:black;font-weight: 700;position: absolute;left: 40%;top:0px">Phiếu Nhập Kho</p>
						<i style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 550px;top:50px">(VAT INVOICE)</i>
						<i style="font-size: 18px;color:black;font-weight: 700;position: absolute;left: 510px;top:100px" id="demo"></i>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:30px" id="hvn">Mẫu số : <font style="color:black ;font-weight: 700">NQH/01 </font> </p>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:60px" id="hvn">Ký hiệu : <font style="color:black">000000</font> </p>
						<p style="font-size: 20px;color:black;font-weight: 700;position: absolute;left: 1000px;top:90px" id="hvn">Số : <font style="color:black">  000000</font> </p>

						</div>
						</div>
					
							<div style="height: 200px;width:1270px;border-color: c;border-width: 1px;border-style: solid ;position: relative;left: 5px">
					<p style="font-size: 18px;color:black;position: absolute;left: 20px"> Đơn vị nhập (Seller) :  
 <select id="testgroup" style="width:500px;" onChange="fillchange()">
    			       <option></option>
    			     </select></p>
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:55px" >Địa Chỉ (Adress) :<font id="myaddress" style="color:black;font-size: 17px;font-weight: 700"> </font></p>
					<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:95px" >Số Điện Thoại (Tel) : <font id="myphone" style="color:black;font-size: 17px;font-weight: 700"> </font></p>
						
						<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:130px" >Gmail (Gmail) : <font id="mygmail" style="color:black;font-size: 17px;font-weight: 700"></font></p>
												<p style="font-size: 18px;color:black;position: absolute;left: 20px;top:170px" id="hvn">STK (Account No) : <font style="color:black;font-size: 17px;font-weight: 700">Thanh toán qua ví điện tử</font> </p>
						
						
						
						
						
						</div>
							<div style="width:1270px;border-color: #00CED1;border-width: 1px;border-style: solid ;position: relative;left: 5px">
					

		<form action="<c:url value='/quan-tri/listdanhsachnhap'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								
							</li>
						</ul>
						
					</div>
					<div class="page-content">
						<div class="row">
						
							<div class="col-xs-12">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">
			  							${message}
									</div>
								</c:if>


								<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>số</th>
														<th>Tên vật liệu</th>
														<th>số lượng</th>
														<th>Giá tiền   </th>
														<th>Tổng tiền </th>
														<th>Thao Tác</th>
														
													</tr>
												</thead>
												<tbody id="ab">
												   <tr id="bt0">
    			                                                          <td >▶ 0</td>                                                          
    			 															<td id="hang1" onclick="them(1,1,1)"> <select onChange="change(0)"  id="testgroup0" style="width:100%;">
    			       <option></option>
    			     </select></td>
    			 															<td ><input onkeyup="change(0)" id="soluong0" style="height:46px;width:100%"></td>
    			 														    <td id="gia0"></td>
    			 															<td id="tongtien0"></td>
    			                                                            <td>
    			 																<button  type="button" onclick="xoa(0)"
    			 														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" >
    			 																<span>
    			 																	<i class="fa fa-trash bigger-110 pink"></i>
    			 																</span>
    			 												</button>
    			 															</td>
    			 														
    			 														</tr>
    			 													
														
													
												</tbody>
											</table>
														
										</div>
									</div>
								</div>
								</form:form>
							</div>
						</div>
					</div>
					<p id="tongtienhoadon" style="color: #black ;position: relative;left: 65%;font-size: 20px">Tổng tiền hoá đơn : 0.000VND</p>
				</div>
		</form>
	
 <button onclick="beforeaddNew()" style="position:relative;left:80%;top:10%; height: 50px;width: 200px;background-color: #3399FF;border-radius: 60px"><p style="color: #ffffff;font-weight: 500;text-align: center;">Thêm Hoá Đơn</p></button>
		</div>
		</div>
		
		<!-- /.main-content -->
		<script>
			
		var DataSendTosever=[];
		var array1=[];
		var array2=[];
		var index=0;
	   ${vt}.forEach((element)=>{
        array1[index++] = {id:element.id,text:element.title};
	   });
	   index=0;
	   ${ncc}.forEach((element)=>{
	        array2[index++] ={id:element.id,text:element.fullName};
		   });
	
		var phantuchon = $("#ab");
		var i=1;
	function change(index) {
		
		 ${vt}.forEach((element)=>{
		      if(element.id==$('#testgroup'+index).val())
		    	  {
		    	 
		    	  $('#gia'+index).val(element.gia);
		    	  $('#gia'+index).text(element.gia.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND");
		    	
		    	  $('#tongtien'+index).val((element.gia * $('#soluong'+index).val()));

		    	  $('#tongtien'+index).text((element.gia * $('#soluong'+index).val()).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND");
		    		// DataSendTosever= DataSendTosever.filter(item => item.myid !==((index>0)?index+1:index+2));
		    	
		    		
		    		if(DataSendTosever.filter(item => item.myid ==((index>0)?index+1:index+2)).length>0){
		    			for(var v=0;v<DataSendTosever.length;v++){
		    				if(DataSendTosever[v].myid==((index>0)?index+1:index+2)){
		    					DataSendTosever[v].soluong=$('#soluong'+index).val();
		    					DataSendTosever[v].mavt=$('#testgroup'+index).val();
		    					
		    				}
		    			}
		    		
		    		}else{
		    		
					 DataSendTosever.push({mavt:$('#testgroup'+index).val(),mancc:$('#testgroup').val(),soluong:$('#soluong'+index).val(),myid:i});
		    		}
		    		var tongtien=0;
		    		for(var v=0;v<i;v++){
		    			if( $('#tongtien'+v).val()!=undefined)
		    			tongtien+= Number($('#tongtien'+v).val());
		    		}
		    		$('#tongtienhoadon').text("Tổng tiền hoá đơn : "+tongtien.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND")
		    		$('#tongtienhoadon').val(tongtien)

		    	  }
		      
			   });
		
		
	}	
     function them(ten,soluong,gia){ 
    	
    	 phantuchon.append('<tr id="bt'+(i)+'">\n'+
    			 '                                                          <td >▶ '+ (i++) +'</td>\n'+                                                          
    			 '															<td id="hang'+i+'" onclick="them(1,1,1)">'+' <select onChange="change('+i+')"  id="testgroup'+i+'" style="width:100%;">\n'+
    			 '      <option></option>\n'+
    			 '    </select>'+'</td>\n'+
    			 '															<td ><input onkeyup="change('+i+')" id="soluong'+i+'" style="height:46px;width:100%"></td>\n'+
    			 '														    <td id="gia'+i+'">'+gia+'.000VND</td>\n'+
    			 '															<td id="tongtien'+i+'">'+soluong*gia+'.000VND</td>\n'+
    			 '                                                           <td>\n'+
    			 '																<button id="bthide"  type="button" onclick="xoa('+(i-1)+')"\n'+
    			 '														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" >\n'+
    			 '																<span>\n'+
    			 '																	<i class="fa fa-trash bigger-110 pink"></i>\n'+
    			 '																</span>\n'+
    			 '												</button>'+
    			 '															</td>\n'+
    			 '															\n'+
    			 '														</tr>');
    	 console.log(i);
    	 
    	  $("#testgroup"+i).select2({
        	  placeholder: "Chọn Loại Vật Liệu",
              data:array1,
             
             
			 
          });
    	  $("#hang"+(i-1)).prop("onclick", null).off("click");
    
	 }
    
     
		   $( document ).ready(function() {       
			   $("#testgroup0").select2({
		        	  placeholder: "Chọn Loại Vật Liệu",
		              data:array1,
		          });
			   $("#testgroup").select2({
			       	  placeholder: "Chọn Nhà Cung Cấp",
			             data:array2,

			         });
                
                    
     });
		function fillchange() {
			console.log(${ncc});
			var idtest=$('#testgroup').val();
			console.log(idtest);
			var arraychange=${ncc}.filter(item => item.id == idtest)
			console.log(arraychange);
			$('#myaddress').text(arraychange[0].diachi);
			console.log(arraychange[0].diachi)
			$('#myphone').text(arraychange[0].sdt);
			$('#mygmail').text(arraychange[0].gmail)
			
			for(var v=0;v<DataSendTosever.length;v++){
				
					DataSendTosever[v].mancc=$('#testgroup').val();
				
					
				}
			
			
		}
		   function beforeaddNew() {
			   if( $("#testgroup").val()==''){
				   alert("Chưa nhập nhà cung cấp");
			   }else{
				   console.log(DataSendTosever);
					addNew();
			   }
			   
		   }
		   function addNew() {
				$.ajax({
			        url: '${newAPI}',
			        type: 'POST',
			        contentType: 'application/json',
			        data: JSON.stringify(DataSendTosever),
			       
			        success: function (result) {
			        	localStorage.clear();
			        	window.location.href = "${newURL}?message=insert_success";
			        },
			        error: function (r) {
			        	console.log(r);
			        	//var r = jQuery.parseJSON(data.responseText);
			            console.log("Message: " + r.message);
			            console.log("StackTrace: " + r.StackTrace);
			            console.log("ExceptionType: " + r.ExceptionType);
			        }
			    });
			}
		   function  xoa(id) {
			  console.log(id+1);
	    		var tongtienid=	Number($('#tongtien'+((id==0)?0:id+1)).val());
	    	
			     if(id!=i-1){
			    $("#bt"+id).remove();
			     }
			   
			   DataSendTosever = DataSendTosever.filter(item => item.myid != id+2);//xoá dữ liệu
			    console.log(DataSendTosever);
			  console.log(Number($('#tongtienhoadon').val())+" "+tongtienid)
			  var tongtien1 =Number($('#tongtienhoadon').val())-tongtienid;
   $('#tongtienhoadon').text("Tổng tiền hoá đơn : "+tongtien1.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND") 
   $('#tongtienhoadon').val(tongtien1);

		}
        
		</script>
	</body>
	</html>