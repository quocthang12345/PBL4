<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<c:url var="UserAPI" value="/api/user" />
<c:url var="RegisterURL" value="/dang-ky" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
        <s:url var="bg" value="/template/web/image/bg-register.jpg" />
          <div class="col-lg-5 d-none d-lg-block bg-register-image" style="background-image: url(${bg})"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
			  <c:if test="${not empty messageResponse}">
			  	<div class="alert alert-${alert}">
					  <p>${messageResponse}</p>
				  </div>
			  </c:if>
              <form:form cssClass="user" id="formSubmit" modelAttribute="user">
                <div class="form-group">
                    <form:input cssClass="form-control form-control-user" path="fullName"  placeholder="Full Name" />
                </div>
                <div class="form-group">
                  <form:input cssClass="form-control form-control-user" path="userName" placeholder="UserName" />
                </div>
                <div class="form-group">
                    <form:password cssClass="form-control form-control-user" path="passWord"  placeholder="Password" />
                </div>
                <input type="submit" name="btn-submit" id="btn-submit" class="btn btn-primary btn-user btn-block" value="Register Account" />
              </form:form>
              <hr>
              <div class="text-center">
                <a class="small" href="#">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="<c:url value='/dang-nhap' />">Already have an account? Login!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


<script type="text/javascript">
	$('#btn-submit').click(function(e){
		e.preventDefault();
		var data = {};
		var formData = $('#formSubmit').serializeArray();
		$.each(formData,function(i,v){
			data[""+v.name+""] = v.value
		});
		AddUser(data);
	})
	function AddUser(data){
		$.ajax({
			url:'${UserAPI}',
			type:'POST',
			contentType:'application/json',
			data:JSON.stringify(data),
			dataType:'json',
			error:function(result){
				window.location.href="${RegisterURL}?message=register_error&alert=danger";
			},
			success:function(result){
				window.location.href="${RegisterURL}?message=register_success&alert=success";
			}			
		});
	}
</script>
</body>
</html>