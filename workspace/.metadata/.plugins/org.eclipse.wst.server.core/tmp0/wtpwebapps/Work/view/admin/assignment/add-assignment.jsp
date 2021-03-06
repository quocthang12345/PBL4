<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<c:url var="AddAssigmentURL" value="/admin-home/add-assignment?id=${work.id}"/>
<c:url var="AddAssignmentAPI" value="/api/assignment" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Assignment</title>
</head>
<body>
	<div class="container-fluid">
            <div class="edit-lesson">
                <div class="badge-lesson">
                    <nav>
                        <ol class="d-flex flex-row align-items-center" style="list-style:none;">
                            <li class="breadcrumb-1 mr-2"><a href="<c:url value='/admin-home' />">Admin-Home</a></li>
                            <li><i class="fas fa-chevron-right breadcrumb-2 mr-2"></i></li>
                            <li class="breadcrumb-3"><a href="<c:url value='/admin-home/add-assignment?id=${work.id}' />">Work</a></li>
                        </ol>
                    </nav>
                </div>
                <div class="list-lesson">
                    <div class="lesson-content">
                        <div class="row">
                            <ul class="col-12 col-md-9 col-lg-9 d-flex flex-row align-items-center justify-content-center" style="list-style:none;"s>
                                <div class="row">
                                    <li class="col-12 col-sm-12 col-md-12 col-lg-3 img-lesson"><img src="https://via.placeholder.com/220x250" alt="image-course">
                                    </li>
                                    <li class="col-12 col-sm-12 col-md-12 col-lg-9 pr-0 pl-3 description-lesson">
                                        <h3>${work.workName}</h3>
                                        <p>${work.workContent}</p>
                                    </li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="card pb-5">
                        <div class="card-header title">
	                        <div class="row">
	                        	<div class="col-12">
	                                <p>Assignment</p>
	                            </div>
	                        </div>
                            <div class="row">
                                <div class="col-5">
	                                <form id="formFind" action="<c:url value='/admin-home/add-assignment'/>">
				                		<div class="row mb-2">
					                		<input name="keyword" value="${keyword}" id="keyword" type="search" class="form-control col-8" style="margin:0 10px 0;" onchange="this.form.submit()" onsearch="this.form.submit()" placeholder="Find Lesson">
					                		<input type="hidden" name="Id" value="${work.id}" />;
				                		</div>
				                	</form>
	                			</div>
                                <div class="col-7">
                                    <div class="btn-group float-right">
                                        <a class="btn btn-primary " data-toggle="tooltip" title='Insert Assignment' href="<c:url value='/admin-home/edit-assignment?workid=${work.id}'/>">
                                            <span>	<i class="fa fa-plus-circle "></i> </span>
                                        </a>
                                        <button id="btnDelete" type="button" class="btn btn-warning" data-toggle="tooltip" title='Delete Assignment'>
                                            <span> <i class="fas fa-trash-alt"></i> </span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body spacing pt-0">
                            <ul class="other-lesson">
                  				<c:forEach var="assignment" items="${listAssignment}">
	                                <div class="row">
	                                    <li>
	                                    	<div class="col-2 col-sm-1"><input type="checkbox" value="${assignment.id}"/></div>
	                                        <div class="col-3 col-sm-3">${assignment.assignmentName}</div>
	                                        <div class="col-5 col-sm-5">${assignment.assignmentDescription}</div>
	                                        <div class="col-2 col-sm-3"><a href="<c:url value='/admin-home/edit-assignment?id=${assignment.id}&workid=${work.id}'/>" class="btn btn-primary">
                                            	<i class="fas fa-edit" aria-hidden="true"></i>
                                        	</a></div>
	                                    </li>
	                                </div>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    
 <script>
 $('#btnDelete').click(function(e){
	    var ids = $('input[type=checkbox]:checked').map(function(e){
			return $(this).val();
		}).get();
		ConfirmDelete(ids);
	});

	function ConfirmDelete(ids){
		var x = confirm("Are you sure you want to delete?");
		 if (x){
		deleteItem(ids);
		}
		 else {
		window.location.href = "${AddAssigmentURL}";
		}
	}

	function deleteItem(data){
		$.ajax({
		   url : "${AddAssigmentAPI}",
		   type : "DELETE",
		   contentType: "application/json",
		   data: JSON.stringify(data),
		   success: function (result){
		        window.location.href = "${AddAssigmentURL}";
		   },
		   error: function (error){
			window.location.href = "${AddAssigmentURL}";
		   },
		});
	}

 </script>
 </body>
</html>