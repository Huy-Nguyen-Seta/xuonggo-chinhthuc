<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/quan-tri/ncc"/>
<c:url var="editNewURL" value="/quan-tri/ncc/chinh-sua"/>
<c:url var="newAPI" value="/api/ncc"/>
<html>
<head>
<title>Chỉnh sửa nhà cung ứng</title>
</head>
<body>
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try {
					ace.settings.check('breadcrumbs', 'fixed')
				} catch (e) {
				}
			</script>

			
		</div>
		<div class="page-content">
			<div class="row">
				<div class="col-xs-12">
					<c:if test="${not empty message}">
						<div class="alert alert-${alert}">
  							${message}
						</div>
					</c:if>
					<form:form action="../ncc" class="form-horizontal" role="form" id="formSubmit" enctype="multipart/form-data" modelAttribute="model" method="post"> 
				
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên nhà cung cấp</label>
							<div class="col-sm-9">
								<form:input path="fullName" id="title" cssClass="col-xs-10 col-sm-5"/>
							</div>
					</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Ảnh đại diện</label>
							<div class="col-sm-9">
								<form:input onchange="change()" type="file" id="thumbnail" path="thumbnail" cssClass="col-xs-10 col-sm-5"/>
								
							</div>
							
						<img alt="chưa ảnh nào được chọn" style="height: 150px;width: 200px" id="anh"  src="<c:url value='/resources/images/${model.afterimage }'/>">
					
					
					</div>
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Đơn vị</label>
								<div class="col-sm-9">
									<form:input path="donvi" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						
						
                  	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Số điện thoại</label>
						<div class="col-sm-9">
							<form:input path="sdt" id="sdt" cssClass="col-xs-10 col-sm-5"/>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Gmail</label>
					<div class="col-sm-9">
						<form:input path="gmail" cssClass="col-xs-10 col-sm-5"/>
					</div>
			</div>
						<div class="form-group">
						  	<label for="diachi" class="col-sm-3 control-label no-padding-right">Địa chỉ:</label>
						  	<div class="col-sm-9">
						  		<form:textarea path="diachi" rows="5" cols="10" cssClass="form-control" id="diachi"/>
						  	</div>
						</div>
					<input type="hidden" value="1" id="page" name="page"/>
											<input type="hidden" value="6" id="limit" name="limit"/>
						<form:hidden path="id" id="newId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info" onclick="kick()"  type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													cập nhật danh bạ
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info" onclick="kick()"   type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm danh bạ
												</button>
											</c:if>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Hủy
											</button>
							</div>		
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>	

<script>
var imgURL
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
		
function kick() {
	

	var tech = getParameterByName('page');
	
	$('#page').val(tech)
	if(!$('#diachi').val()||!$('#title').val()||!$('#sdt').val()){
		console.log($('#gia').val());
		console.log($('#title').val());
		console.log($('#categoryCode').val());
		alert('vui lòng nhập đủ thông tin');
		
	}
	else{
		$('#formSubmit').submit();
	}
		}
		
		
			
function  change() {
	var file = $('#thumbnail')[0].files[0];

	console.log(file);
	var anh=document.getElementById("anh");
	imgURL = URL.createObjectURL(file)
	
	console.log(imgURL);
	
	anh.src=imgURL;
}
console.log(imgURL)


/*	$('#btnAddOrUpdateNew').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#newId').val();
	    data['thumbnail']=imgURL;
		if(!$('#title').val()){
			alert('vui lòng nhập đủ thông tin');}
		else{
		
	    if (id == "") {
	    	console.log(imgURL)
	    	console.log(data)
	    	addNew(data);
	    } else {
	    	console.log(imgURL)
	    	console.log(data)
	    	updateNew(data);
	    }
	}
	});
	
	function addNew(data) {
		$.ajax({
            url: '${newAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
          
            success: function (result) {
            	window.location.href = "${newURL}?page=1&limit=6&&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${newURL}?page=1&limit=6&message=error_system";
            }
        });
	}
	
	function updateNew(data) {
		$.ajax({
            url: '${newAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
           
            success: function (result) {
            	window.location.href = "${newURL}?page=1&limit=6&&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${newURL}?page=1&limit=6&message=error_system";
            }
        });
	}*/
</script>
</body>
</html>
