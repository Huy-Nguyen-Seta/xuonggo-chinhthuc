<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/quan-tri/bai-viet/danh-sach"/>
<c:url var="editNewURL" value="/quan-tri/bai-viet/chinh-sua"/>
<c:url var="newAPI" value="/api/new"/>
<html>
<head>
<title>Chỉnh sửa sản phẩm</title>
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
					<form:form action="../bai-viet/danh-sach" enctype="multipart/form-data" method="post"   class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
						<div class="form-group">
							  <label for="categoryCode" class="col-sm-3 control-label no-padding-right">Thể loại:</label>
							  <div class="col-sm-9">
							  	 <form:select  path="categoryCode" id="categoryCode">
							  	 	<form:option value="" label="-- Chọn thể loại --"/>
							  	 	<form:options items="${categories}"/>
							  	 </form:select>
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
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên sản phẩm</label>
								<div class="col-sm-9">
									<form:input id="title" path="title" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Chất liệu</label>
								<div class="col-sm-9">
									<form:input id="chatlieu" path="chatlieu" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<div class="form-group">
							<label for="categoryCode" class="col-sm-3 control-label no-padding-right">Kích thước:</label>
							<div class="col-sm-9">
								 
								<label for="cars">Chọn chiều dài:</label>

								<select name="chieudai" id="chieudai" style="width: 120px">
								  <option value="1">1M</option>
								  <option value="2">2M</option>
								  <option value="3">3M</option>
								  <option value="4">4M</option>
								   <option value="5">5M</option>
								  <option value="6">6M</option>
								  <option value="7">7M</option>
								  <option value="8">8M</option>
								</select>
								
								
							</div>
							<div class="col-sm-9" style="position: relative;left: 230px;top:-30px">
								 
								<label for="cars">Chọn chiều rộng:</label>

								<select name="chieurong" id="chieurong" style="width: 120px">
								  <option value="1">1M</option>
								  <option value="2">2M</option>
								  <option value="3">3M</option>
								  <option value="4">4M</option>
								   <option value="5">5M</option>
								  <option value="6">6M</option>
								  <option value="7">7M</option>
								  <option value="8">8M</option>
								</select>
								
								
							</div>
					  </div>
                  	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Số lượng tồn</label>
						<div class="col-sm-9">
							<form:input id="soluongton" path="soluongton" cssClass="col-xs-10 col-sm-5"/>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Giá sản phẩm</label>
					<div class="col-sm-9">
						<form:input id="gia" path="gia" cssClass="col-xs-10 col-sm-5"/>
					</div>
			</div>
						<div class="form-group">
						  	<label for="shortDescription" class="col-sm-3 control-label no-padding-right">Mô tả ngắn:</label>
						  	<div class="col-sm-9">
						  		<form:textarea path="shortDescription" rows="5" cols="10" cssClass="form-control" id="shortDescription"/>
						  	</div>
						</div>
						<div class="form-group">
						  	<label for="content" class="col-sm-3 control-label no-padding-right">Nội dung:</label>
						  	<div class="col-sm-9">
						  		<form:textarea path="content" rows="5" cols="10" cssClass="form-control" id="content"/>
						  	</div>
						</div>
						<div class="form-group">
						  	<label for="popular" class="col-sm-3 control-label no-padding-right">Xét phổ biến:</label>
						   <div class="form-check">
                  <form:radiobutton path="popular" class="form-check-input" value="true"  />
               <label class="form-check-label" for="flexRadioDefault1">
             Sản phẩm gợi ý
                  </label>
                </div>
                <div class="form-check">
                <form:radiobutton path="popular"  class="form-check-input"  value="false"  />
               <label class="form-check-label" for="flexRadioDefault2">
             Sản phẩm không gợi ý
               </label>
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
													Cập nhật bài viết
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button onclick="kick()" class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm bài viết
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
function isNumber(n) { 
    	return /^-?[\d.]+(?:e-?\d+)?$/.test(n);
    	} 
function kick() {
		

		var tech = getParameterByName('page');
		
		$('#page').val(tech)
		if(!$('#gia').val()||!$('#title').val()||!$('#categoryCode').val()){
			console.log($('#gia').val());
			console.log($('#title').val());
			console.log($('#categoryCode').val());
			alert('vui lòng nhập đủ thông tin');
			
		}else if(!isNumber( $('#soluongton').val())||!isNumber($('#gia').val())){
			
		
			alert("bạn đã nhập sai dữ liệu");
		
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
