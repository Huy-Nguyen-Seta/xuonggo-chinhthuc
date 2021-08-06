<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/quan-tri/the-loai/danh-sach"/>
<c:url var="editNewURL" value="/quan-tri/the-loai/chinh-sua"/>
<c:url var="newAPI" value="/api/cate"/>
<html>
<head>
<title>Chỉnh sửa thể loại</title>
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
					<form:form action="../the-loai/danh-sach" enctype="multipart/form-data" class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
					
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên thể loại</label>
								<div class="col-sm-9">
									<form:input id="name" path="name" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Ảnh đại diện</label>
								<div class="col-sm-9">
									 		<form:input onchange="change()" type="file" path="thumbnail" rows="5" cols="10" cssClass="form-control" id="thumbnail"/>
									 		
									 											<img alt="chưa ảnh nào được chọn" id="anh" style="height: 150px;width: 200px"  src="<c:url value='/resources/images/${model.afterimage }'/>">
									 										
									 		
								</div>
						</div>
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Code thể loại(duy nhất cho mỗi thể loại)</label>
								<div class="col-sm-9">
									<form:input id="code" path="code" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<div class="form-group">
						  	<label for="shortDescription" class="col-sm-3 control-label no-padding-right">Mô tả ngắn :</label>
						  	<div class="col-sm-9">
						  		<form:textarea id="shortDescription" path="shortDescription" rows="5" cols="10" cssClass="form-control" />
						  	</div>
						</div>
					<input type="hidden" value="1" id="page" name="page"/>
											<input type="hidden" value="4" id="limit" name="limit"/>	
						<form:hidden path="id" id="newId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button onclick="kick()" class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Cập nhật thể loại
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button onclick="kick()" class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm thể loại
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
		if(!$('#name').val()||!$('#code').val()){
			alert('vui lòng nhập đủ thông tin');
	
		}
		else{
			$('#formSubmit').submit();
		}
			}
	function  change() {
		var file = $('#thumbnail')[0].files[0];

		console.log(file);

		var imgURL = URL.createObjectURL(file)
		console.log(imgURL);
		var anh=document.getElementById("anh");
		anh.src=imgURL;
	}
	/*$('#btnAddOrUpdateNew').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#newId').val();
	    if (id == "") {
	    	addNew(data);
	    } else {
	    	updateNew(data);
	    }
	});
	
	function addNew(data) {
		$.ajax({
            url: '${newAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editNewURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${newURL}?page=1&limit=4&message=error_system";
            }
        });
	}
	
	function updateNew(data) {
		$.ajax({
            url: '${newAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editNewURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editNewURL}?id="+result.id+"&message=error_system";
            }
        });
	}*/
</script>
</body>
</html>
