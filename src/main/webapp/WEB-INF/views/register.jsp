<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/dang-ky"/>
<c:url var="editNewURL" value="/dang-ky"/>
<c:url var="newAPI" value="/api/user"/>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	
   <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <h2 class="text-center mb-4">Register</h2>
              <div class="auto-form-wrapper">
                   <c:if test="${not empty message}">
						<div class="alert alert-${alert}">
  							${message}
						</div>
					</c:if>
              <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
                  <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="FullName" id="fullName" name="fullName">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                    
                  </div>
               
                     <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="PhoneNumber" id="sdt" name="sdt">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                    
                  </div>
                    <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Gmail" id="gmail" name="gmail">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                    <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Address" id="diachi" name="diachi">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Username" id="username" name="username">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="password" class="form-control" placeholder="Password" id="password" name="password">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="password" class="form-control" placeholder="Confirm Password">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group d-flex justify-content-center">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked> I agree to the terms </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-primary submit-btn btn-block" id="btnAddOrUpdateNew">Register</button>
                  </div>
                  <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Already have and account ?</span>
                    <a href="<c:url value='/dang-nhap'/>" class="text-black text-small">Login</a>
                  </div>
            </form:form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
	<script type="text/javascript">
	

	$('#btnAddOrUpdateNew').click(function (e) {
	
    var kt=true;
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
            if(v.value==""){
              window.location.href = "${editNewURL}?message=sai"; // xử lý k đủ tt
              kt=false;

           }
        });
	    //xử lý trùng user
	    var c="${list}";
		var c1=c.substr(1,c.length-2);
		var c2=c1.split(",");
		var us=data["username"];
	  c2.forEach(element => {
		
		  if(element.replace(" ","")==us){
			
			  window.location.href = "${editNewURL}?message=trung";
			  kt=false;
		  }
		  
	  });
    //kt xử lý 
	  if(kt){
	    	addNew(data);
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
            	window.location.href = "${editNewURL}?message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${editNewURL}?message=insert_success";
            }
        });
	}
	

	</script>
</body>
</html>