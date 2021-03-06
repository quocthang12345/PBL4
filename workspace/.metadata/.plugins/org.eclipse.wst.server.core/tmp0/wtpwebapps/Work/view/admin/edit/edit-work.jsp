<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp"%>
 <c:url var="workURL" value="/admin-home/edit-work"/> 
 <c:url var="workAPI" value="/api/work"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit-Course</title>
</head>
<body>
<div class="background-edit">
	<div class="container">
        <div class="row position-direct">
            <div class="box-edit col-12 col-sm-12 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-body box-wrap">
                            <div class="box-form">
                                <div class="row">
                                <div class="text-center col-12 col-sm-12"><h3>Edit Work</h3></div>
                                <div class="text-center col-12 col-sm-12">
	                                <c:if test="${not empty messageResponse}">
									  	<div class="alert alert-${alert}">
											  <p>${messageResponse}</p>
										  </div>
									 </c:if>
								 </div>
                                <form:form class="form-edit" id="formSubmit" modelAttribute="work" enctype="multipart/form-data">    
                                        <div class="form-group col-12 col-sm-12">
                                            <label>Name of the work</label>
                                            <form:input path="workName" cssClass="form-control" value="${work.workName}" placeholder="Enter name work....." />
                                        </div>
                                        <div class="form-group col-12 col-sm-12">
                                           <form:select cssClass="form-control" path="teamCode" >
												<form:option value="" label="-- Choose Team --" />
								  	 			<form:options items="${team}" />
										   </form:select>
                                        </div> 
                                        <div class="form-group  col-12 col-sm-12">
                                            <label>Thumbnail</label>
                                            <input type="file" id="fileUpload" name="file" class="form-control-file file" value="Choose Files"/>
                                        </div>
                                        <div class="form-group col-12 col-sm-12">
                                            <label>Description of the work</label>
                                            <form:input path="workDescription" cssClass="form-control" value="${work.workDescription}" placeholder="Enter description work....." />
                                        </div>
                                        <div class="form-group  col-12 col-sm-12">
                                            <label>Content of the work</label>
                                            <form:textarea path="workContent" class="form-control" value="${work.workContent}" rows="5" ></form:textarea>
                                        </div>
                                        <div class="row">
	                                        <c:if test="${not empty course.id}">
		                                        <div class="form-group col-12 col-sm-6 col-md-6">
		                                            <button type="button" class="btn btn-primary btn-lg" id="btnEdit">Update</button>
		                                        </div>
	                                        </c:if>
	                                        <c:if test="${empty course.id}">
		                                        <div class="form-group col-12 col-sm-6 col-md-6">
		                                            <button type="button" class="btn btn-primary btn-lg" id="btnEdit">Insert</button>
		                                        </div>
	                                        </c:if>
	                                        <div class="form-group col-12 col-sm-6 col-md-6">
	                                        	<a type="button" class="btn btn-success btn-lg float-right" href="<c:url value='/admin-home'/>" >Home</a>
	                                        </div>
                                        </div>
                                        <form:hidden path="id" value="${work.id}"/>
                                </form:form>
                            </div>
                        </div>
                        </div>
                    </div>
            </div>
    	</div>
	</div>
</div>

<script>
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
$('#btnEdit').click(function(e){
    e.preventDefault();
    var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData,function(i,v){
        data[""+v.name+""] = v.value;
    });
    data["thumbnail"] = dataArray.image;
    data["base64"] = dataArray.codebase64;    var id = $('#id').val();
    if(id == ""){
        addItem(data);
    }else{
        updateItem(data);
    }
    function addItem(data){
        $.ajax({
           url : "${workAPI}",
           type : "POST",
           contentType: "application/json",
           data: JSON.stringify(data),
           dataType: "json",
           success: function (result){
        	   window.location.href = "${workURL}?message=insert_success&alert=success";
           },
           error: function (error){
        	   window.location.href = "${workURL}?message=insert_error&alert=danger";
           },
        });
    }
    function updateItem(data){
        $.ajax({
           url : "${workAPI}",
           type : "PUT",
           contentType: "application/json",
           data: JSON.stringify(data),
           dataType: "json",
           success: function (result){
        	   window.location.href = "${workURL}?message=update_success&alert=success";
           },
           error: function (error){
        	   window.location.href = "${workURL}?message=update_error&alert=danger";
           },
        });
    }
});
</script>
</body>
</html>s