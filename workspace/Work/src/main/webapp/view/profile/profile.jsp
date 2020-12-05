<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="ProfileURL" value="/profile"/> 
<c:url var="ProfileAPI" value="/api/user"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
<div class="wrap-profile">
        <div class="badge-profile">
            <nav>
            <security:authorize access="hasRole('ADMIN')">
                <ol class="d-flex flex-row align-items-center" style="list-style:none;">
                    <li class="breadcrumb-1 mr-2"><a href="<c:url value="/admin-home" />">Admin-Home</a></li>
                    <li><i class="fas fa-chevron-right breadcrumb-2 mr-2"></i></li>
                    <li class="breadcrumb-3"><a href="<c:url value="/profile?id=${profile.id}" />">Profile</a></li>
                </ol>
            </security:authorize>
            <security:authorize access="hasRole('USER')">
                <ol class="d-flex flex-row align-items-center" style="list-style:none;">
                    <li class="breadcrumb-1 mr-2"><a href="<c:url value="/trang-chu" />">Home</a></li>
                    <li><i class="fas fa-chevron-right breadcrumb-2 mr-2"></i></li>
                    <li class="breadcrumb-3"><a href="<c:url value="/profile?id=${profile.id}" />">Profile</a></li>
                </ol>
            </security:authorize>
            </nav>
        </div>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-3">
                        <ul class="list-profile pt-4 list-group">
                            <li class="list-group-item list-group-item-action" href="#"><a data-toggle="list" href="#profile">Infomation User</a></li>
                            <li class="list-group-item list-group-item-action"><a data-toggle="list" href="#password">Change Your Password</a></li>
                        </ul>
                    </div>

                    <div class="col-12 col-sm-12 col-md-9">
						<form:form modelAttribute="profile" id="formSubmit" enctype="multipart/form-data">
                        <div class="tab-content">
                            <div class="content-profile p-4 tab-pane fade show active" id="profile">
                                <div class="title-profile">Infomation</div>
                                <div class="text-center col-12 col-sm-12">
		                             <c:if test="${not empty messageResponse}">
									  	<div class="alert alert-${alert}">
											  <p>${messageResponse}</p>
										  </div>
									 </c:if>
								</div>
                                    <div class="description-profile mt-4">
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-3 mb-4">
                                                <div class="img-profile">
                                                    <img src="<c:url value='${profile.userAvatar }'/>" style="width:150px; height:150px;" alt="img-user" />
                                                    <input type="file" id="fileUpload" class="col-8 col-sm-8 col-md-8 form-control ml-4" style="border:none;color: transparent;" value="Choose Avatar" />
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-9 p-0">
                                                <div class="info-profile">
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">FullName</label>
                                                            <form:input path="fullName" cssClass="col-8 col-sm-8 col-md-8 form-control" value="${profile.fullName}" placeholder="Enter FullName" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">UserName</label>
                                                            <form:input path="userName" cssClass="col-8 col-sm-8 col-md-8 form-control" disabled="true" value="${profile.userName}" placeholder="Enter UserName" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">Email</label>
                                                            <input type="text" class="col-8 col-sm-8 col-md-8 form-control" placeholder="Enter Email" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">Phone</label>
                                                            <input type="number" class="col-8 col-sm-8 col-md-8 form-control" placeholder="Enter Phone" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">Infomation User</label>
                                                            <textarea cols="5" rows="5" class="col-8 col-sm-8 col-md-8 form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row justify-content-center align-items-center">
                                                            <input type="reset" class="col-4 col-sm-4 col-md-2 m-0 btn btn-primary" value="Reset">
                                                            <button id="btn-Update" class="col-4 col-sm-4 col-md-2 ml-2 form-control btn btn-success">Update</button>
                                                        </div>
                                                    </div>
                                                    <form:hidden path="id" value="${profile.id}" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                            <div class="content-profile p-4 tab-pane fade" id="password" style="height: 530px;">
                                <div class="title-profile">Change Password</div>
                                    <div class="description-profile mt-4">
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-9 p-0">
                                                <div class="info-profile">
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">New Password</label>
                                                            <form:password path="passWord" cssClass="col-9 col-sm-9 col-md-9 form-control" value="" placeholder="Enter Password" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row align-items-center">
                                                            <label class="col-3 col-sm-3 col-md-3 m-0">Correct Password</label>
                                                            <input type="password" id="correctPassword" class="col-9 col-sm-9 col-md-9 form-control" placeholder="Enter Password Again" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-12 form-group d-flex flex-row justify-content-center align-items-center">
                                                            <input type="reset" class="col-4 col-sm-4 col-md-2 m-0 btn btn-primary" value="Reset">
                                                            <button id="btn-Change" class="col-4 col-sm-4 col-md-2 ml-2 form-control btn btn-success">Update</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
 					</form:form>
                    </div>
                </div>
            </div>
    </div>

<script>
var password = document.getElementById("passWord");
var rePassword = document.getElementById("correctPassword");

var dataArray = {};
$('#fileUpload').change(function () {
    var file =  $('#fileUpload')[0].files[0];
    if (file != undefined) {
        var reader = new FileReader();
        reader.onload = function(e) {
        	dataArray["codebase64"] = e.target.result;
        	dataArray["image"] = file.name;
        };
        reader.readAsDataURL(file);
	}
});
$('#correctPassword').keyup(function(){
	if(password.value !== rePassword.value){
		rePassword.style.border  = "2px solid red";
	}else{
		rePassword.style.border  = "2px solid green";
	}
})

$('#btn-Change').on("click",function(e){
	e.preventDefault();
	UpdateUser();
});

$('#btn-Update').on("click",function(e){
	e.preventDefault();
	UpdateUser();
})

function UpdateUser(){
    var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData,function(i,v){
        data[""+v.name+""] = v.value;
    });
    data["userAvatar"] = dataArray.image;
    data["base64"] = dataArray.codebase64;
    if(password.value !== rePassword.value ){
    	alert("Password invalid!");
    }else{
        updateUser(data);
    }
    function updateUser(data){
        $.ajax({
           url : "${ProfileAPI}",
           type : "PUT",
           contentType: "application/json",
           data: JSON.stringify(data),
           dataType: "json",
           success: function (result){
        	   window.location.href = "${ProfileURL}?id=${profile.id}&message=update_success&alert=success";
           },
           error: function (error){
        	   window.location.href = "${courseURL}?id=${profile.id}&message=update_error&alert=danger";
           },
        });
    }
}


</script>
</body>
</html>