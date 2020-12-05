<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="CommentURL" value="/work-detail"/> 
<c:url var="CommentAPI" value="/api/comment"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lesson</title>
</head>
<body>
	<div class="section-detail mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-lg-4 wrap-detail">  
                    <div class="img-detail">
                        <img src="<c:url value='${work.thumbnail}' />" alt="lesson" />
                    </div>
                </div>
                <div class="description-detail col-md-7 col-lg-8">
                    <ul class="label-detail d-flex flex-row">
                        <li class="fact-1">SEO</li>
                        <li class="fact-2">Design</li>
                    </ul>
                    <div class="header-detail">
                        <h2 class="title-detail">${work.workName}</h2>
                        <ul class="info-detail d-flex flex-row">
                            <li><i class="far fa-clipboard"></i> 10 - 20 weeks</li>
                            <li class="mr-5 ml-5"><i class="fab fa-google-play"></i> 102 Lectures</li>
                            <li><i class="fas fa-user"></i> 502 Student Enrolled</li>
                        </ul>
                    </div>
                    <p class="content-detail">
                        ${work.workDescription }
                    </p>
                    <div class="review-detail d-flex flex-row">
                        <div class="star-review">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div class="counter-review ml-3">3572 Reviews</div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8">
                    <div class="overview">
                        <div class="content-overview">
                            <h4 class="title">Course Overview</h4>
                            <p>${work.workContent }</p>
                        </div>
                        <div class="content-overview">
                            <h4 class="title">Requirements</h4>
                            <ul class="list-require">
                                <li>Students voluntarily learn knowledge related to the course</li>
                                <li>Install the necessary tools for the course</li>
                                <li>Having a background in web programming</li>
                                <li>Preparing yourself to search skills on google</li>
                            </ul>
                        </div>
                    </div>
                    <div class="course-circullum">
                        <h3 class="title">Course Circullum</h3>
                        <div class="accordion">
                            <div class="collapse-lesson">
                                <div class="card">
                                    <div class="card-header">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#chapter-1" >
                                            Assignment-Work
                                            </button>
                                        </h2>
                                    </div>
                                
                                    <div id="chapter-1" class="collapse">
                                        <div class="card-body">
                                            <ul class="lesson" >
                                           		<c:forEach var="i" items="${listAssignment}">
	                                                <li>
	                                                    <div class="lecture"><i class="fas fa-forward mr-2"></i>${i.assignmentName}</div>
	                                                    <div style="display: flex; justify-content: center;">
										                    <button id="myBtn" class="btn btn-primary">Xem công việc</button>
										                </div>
	                                                </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div>
                <div class="modal" id="myModal">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content" style="width: 500px;">
                            <div class="modal-header">
                                <h4 class="modal-title">Công việc <span class="close">&times;</span></h4>

                            </div>
                            <div class="container"></div>
                            <div class="modal-body" style="height: 300px;">
                                <ul>
                                    <li>Công việc</li>
                                 
                                </ul>

                            </div>
                            <div class="modal-footer">
                                <button id="myBtn2">Xem nhân viên</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal" id="myModal2" data-backdrop="static">
                    <div class="modal-dialog">
                        <div class="modal-content" style="margin-left: 130px; margin-top: 100px;">
                            <div class="modal-header">
                                <h4 class="modal-title">Danh sách nhân viên
                                    <span class="close">&times;</span></h4>

                            </div>
                            <div class="container"></div>
                            <div class="modal-body">
                                <ul>
                                    <li>Example</li>
                                    
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
               </div>

                  

                    <div class="submit-review">
                        <h4 class="title">Submit Reviews</h4>
                            <form:form modelAttribute="comment" id="formReview">
                                <div class="row mt-2">
                                    <div class="col-12 col-md-12 col-lg-12 col-sm-12">
                                        <form:textarea path="commentContent" cols="10" rows="5" cssClass="submit-content-review p-4" placeholder="Your Review"></form:textarea>
                                    </div>
                                </div>
                                <form:hidden path="workID" value="${work.id}"/> 
                                <form:hidden path="userID" value="${user.id}"/>
                                <div class="row">
                                    <div class="col-12 col-md-12 col-lg-12 col-sm-12">
                                        <a type="submit" id="btn-review" class="btn btn-success">Submit-review</a>
                                    </div>
                                </div>
                            </form:form>
                    </div>
                    <div class="person-review" id="person-review">
                    
	                    <c:forEach var="i" items="${listComment}">
	                        <div class="other-review" id="other-review">
	                            <div class="card">
	                                <div class="row no-gutters">
	                                    <div class="col-md-3 col-lg-3 col-12 col-sm-12">
	                                        <img src="<c:url value='https://via.placeholder.com/100' />" alt="image" class="image-other-review m-5"/> 
	                                    </div>
	                                    <div class="col-md-9 col-lg-9 col-12 col-sm-12">
	                                        <div class="card-body">
	                                            <ul class="title-review d-flex flex-row justify-content-between align-items-center">
	                                                <li class="name-submit-review">${i.fullName}</li>
	                                                <li><i class="fas fa-calendar-alt mr-2"></i>${i.createDate}</li>
	                                            </ul>
	                                            <div class="star mb-2">
	                                                <span class="fa fa-star checked"></span>
	                                                <span class="fa fa-star checked"></span>
	                                                <span class="fa fa-star checked"></span>
	                                                <span class="fa fa-star"></span>
	                                                <span class="fa fa-star"></span>
	                                            </div>
	                                            <ul class="title-review d-flex flex-row justify-content-between align-items-center">
	                                            	<li><div class="text-review">"${i.commentContent}"</div></li>
	                                            	<c:if test="${user.id == i.userID}">
		                                            	<li>
		                                            		<a type="button" id="btnDelete" ><i class="fas fa-trash"><input type="hidden" value="${i.id}" id="deleteID" /></i></a>
		                                            	</li>
	                                            	</c:if>
	                                            </ul>
	                                        </div>   
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                     
                    </div>


                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="box-author">
                        <div class="author-position">
                            <div class="image">
                                <img src="<c:url value='/template/web/image/author-course.jpg' />" alt="author" />
                            </div>
                            <div class="content">
                                <p class="name">
                                    Michael Russell</p>
                                <p class="position">Web Designer in Canada</p>
                            </div>
                        </div>
                        <div class="total-time">
                            <p>Acctual Time</p>
                            <p class="time">14h12p</p>
                        </div>
                        <div class="benefit-course">
                            <h4 class="title">Course Features</h4>
                            <ul class="list-benefit">
                                <li>Fully Programming</li>
                                <li>Help Code to Code</li>
                                <li>Free Trial 7 Days</li>
                                <li>Unlimited Videos</li>
                                <li>24x7 Support</li>
                            </ul>
                        </div>
                        <div class="contact-author d-flex flex-row justify-content-center">
                            <a href="#" class="btn btn-primary pl-5 pr-5 mb-2">Contact</a>
                        </div>
                    </div>

                    <div class="benefit">
                        <div class="title">Course Features</div>
                        <div class="row">
                                <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul class="convenient">
                                        <li><i class="fas fa-user"></i>Student Enrolled: <strong>1740</strong></li>
                                        <li><i class="far fa-file-alt"></i>lectures: <strong>10</strong></li>
                                        <li><i class="fas fa-gamepad"></i>Quizzes: <strong>4</strong></li>
                                        <li><i class="far fa-clock"></i>Duration: <strong>60 hours</strong></li>
                                        <li><i class="fas fa-ribbon"></i>Skill Level: <strong>Beginner</strong></li>
                                        <li><i class="far fa-flag"></i> Language: <strong>English</strong></li>
                                        <li><i class="far fa-sun"></i>Assessment: <strong>Yes</strong></li>
                                    </ul>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
 <script>
 
 $('[id="btnDelete"]').click(function(e){
	 var ids = $('#deleteID').val();
		ConfirmDelete(ids);
	});

	function ConfirmDelete(ids){
		var x = confirm("Are you sure you want to delete?");
		 if (x){
		deleteItem(ids);
		}
	}

	function deleteItem(data){
		$.ajax({
		   url : "${CommentAPI}",
		   type : "DELETE",
		   contentType: "application/json",
		   data: JSON.stringify(data),
		   success: function (result){
        	   $('#person-review').load("${CommentURL}?id=${work.id} #other-review");
        	   location.reload();
		   },
		   error: function (error){
			window.location.href = "${CommentURL}?id=${work.id}";
		   },
		});
	}
 
 
 $('#commentContent').keyup(function(e){
	 	if(e.keyCode == 13) {
	 		var review = $('#commentContent').val();
	 		e.preventDefault();
			if($.trim(review) != ''){
				e.preventDefault();
				InsertReview();
			}
	 	}
	});
 $('#btn-review').on("click",function(e){
		e.preventDefault();
 		var review = $('#commentContent').val();
		if($.trim(review) != ''){
			e.preventDefault();
			InsertReview();
		}
});
 function InsertReview(){
	    var data = {};
	    var formData = $('#formReview').serializeArray();
	    $.each(formData,function(i,v){
	        data[""+v.name+""] = v.value;
	    });
	    Insert(data);
	    function Insert(data){
	        $.ajax({
	           url : "${CommentAPI}",
	           type : "POST",
	           contentType: "application/json",
	           data: JSON.stringify(data),
	           dataType: "json",
	           success: function (result){
	        	   $('#commentContent').val("");
	        	   $('#person-review').load("${CommentURL}?id=${work.id} #other-review");
	        	   location.reload();
	           },
	           error: function (error){
	        	   window.location.href = "${CommentURL}?id=${work.id}";
	           },
	        });
	    }
	} 
 
 
  var modal = document.getElementById("myModal");
  var modal2 = document.getElementById("myModal2");
  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");
  var btn2 = document.getElementById("myBtn2");
  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];
  var span2 = document.getElementsByClassName("close")[1];

  // When the user clicks the button, open the modal 
  btn.onclick = function() {
      modal.style.display = "block";
  }
  btn2.onclick = function() {
      modal2.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }
  span2.onclick = function() {
      modal2.style.display = "none";
  }

 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
     if (event.target == modal) {
         modal.style.display = "none";
     } else if (event.target == modal2) {
         modal2.style.display = "none";
     }
 }
</script>
</body>
</html>