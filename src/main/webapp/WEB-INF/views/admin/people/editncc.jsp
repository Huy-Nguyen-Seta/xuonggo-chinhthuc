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
					<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
				
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên nhà cung cấp</label>
							<div class="col-sm-9">
								<form:input path="fullName" id="title" cssClass="col-xs-10 col-sm-5"/>
							</div>
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
							<form:input path="sdt" cssClass="col-xs-10 col-sm-5"/>
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
						  		<form:textarea path="diachi" rows="5" cols="10" cssClass="form-control" id="shortDescription"/>
						  	</div>
						</div>
					
						<form:hidden path="id" id="newId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info"  type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													cập nhật danh bạ
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info"   type="button" id="btnAddOrUpdateNew">
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

		

		
		
			
function  change() {
	var file = $('#thumbnail')[0].files[0];

	console.log(file);
	var anh=document.getElementById("anh");
	imgURL = URL.createObjectURL(file)
	
	console.log(imgURL);
	
	anh.src=imgURL;
}
console.log(imgURL)

	$('#btnAddOrUpdateNew').click(function (e) {
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
	}
</script>
</body>
</html>
