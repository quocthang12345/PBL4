<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="/common/taglib.jsp"%>
<c:url value="/admin-home/edit-assignment?workid=${assignment.workId}" var="AssignmentURL"/>
<c:url value="/api/assignment" var="AssigmentAPI" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Assignment</title>
</head>
<body>
<div class="background-edit" style="padding:168px 0px;">
	<div class="container">
        <div class="row position-direct">
            <div class="box-edit col-12 col-sm-12 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-body box-wrap">
                            <div class="box-form">
                                <div class="row">
                                <div class="text-center col-12 col-sm-12 col-md-12 "><h3>Edit assignment</h3></div>
                                <div class="text-center col-12 col-sm-12">
	                                <c:if test="${not empty messageResponse}">
									  	<div class="alert alert-${alert}">
											  <p>${messageResponse}</p>
										  </div>
									 </c:if>
								 </div>
                                <form:form id="formSubmit" modelAttribute="assignment" cssClass="form-edit">
                                        <div class="form-group col-12 col-sm-12">
                                            <label>Name of the lesson</label>
                                            <form:input path="assignmentName" value="${assignment.assignmentName}" cssClass="form-control" placeholder="Enter name course....." />
                                        </div>
                                        <div class="form-group col-12 col-sm-12 col-md-12 ">
                                            <label>Description of the lesson</label>
                                            <form:input path="assignmentDescription" value="${assignment.assignmentDescription}" cssClass="form-control" placeholder="Enter description course....." />
                                        </div>
                                        <div class="form-group col-12 col-sm-12 col-md-12 ">
                                            <label>Video of the lesson</label>
                                            <input type="text" id="Video" class="form-control" placeholder="Link Here"/>
                                        </div>
                                        <div class="row">
	                                        <c:if test="${empty assignment.id}">
		                                        <div class="form-group col-12 col-sm-6 col-md-6">
		                                            <a type="button" class="btn btn-primary btn-lg" id="btnEdit">Insert</a>
		                                        </div>
	                                        </c:if>
	                                        <c:if test="${not empty assignment.id}">
		                                        <div class="form-group col-12 col-sm-6 col-md-6">
		                                            <a type="button" class="btn btn-primary btn-lg" id="btnEdit">Update</a>
		                                        </div>
	                                        </c:if>
	                                        <div class="form-group col-12 col-sm-6 col-md-6">
		                                        <a class="btn btn-success btn-lg float-right" href="<c:url value='/admin-home/add-assignment?id=${assignment.workId}' />">Home</a>
		                                    </div>
	                                    </div>
                                        <form:hidden path="id" value="${assignment.id}" />
                                        <form:hidden path="workId" value="${assignment.workId}" />
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
$('#btnEdit').click(function(e){
    e.preventDefault();
    var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData,function(i,v){
        data[""+v.name+""] = v.value;
    });
    var id = $('#id').val();
    if(id == ""){
       var rs = addItem(data);
       console.log(rs);
    }else{
        updateItem(data);
    }
    function addItem(data){
        $.ajax({
           url : "${AssigmentAPI}",
           type : "POST",
           contentType: "application/json",
           data: JSON.stringify(data),
           dataType: "json",
           success: function (result){
        	   window.location.href = "${AssigmentURL}&message=insert_success&alert=success";
           },
           error: function (error){
        	   window.location.href = "${AssigmentURL}&message=insert_error&alert=danger";
           },
        });
    }
    function updateItem(data){
        $.ajax({
           url : "${AssigmentAPI}",
           type : "PUT",
           contentType: "application/json",
           data: JSON.stringify(data),
           dataType: "json",
           success: function (result){
        	   window.location.href = "${AssigmentURL}&message=update_success&alert=success";
           },
           error: function (error){
        	   window.location.href = "${AssigmentURL}&message=update_error&alert=danger";
           },
        });
    }
});
</script>
</body>
</html>