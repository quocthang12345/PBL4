<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leader</title>
</head>
<body>
	<div class="container content" style="min-height:80vh; padding-top:85px;">
        <div class="row">
            <div class="col-md-9">
                <div class="post-main">
                    <div class="img-main">
                        <img src="https://via.placeholder.com/220x250" style="width: 100px;" class="img-author" />
                    </div>
                    <div class="post">
                        <h3 class="name-author"><span>Trần Quốc Thắng</span> <a href="#" class="xemchitiet">Xem chi tiết</a></h3>
                        <p>In Django, fields with auto_now=True are not always updated correctly. A common practice to work around this is to override the save() method on the model, or to use a pre-save hook. However, this doesn't work when calling Model.objects.update()
                            since save() is not called on all instances in the queryset. A common way to fix this would be to alter the table, for example, in MySQL it may look li...</p>
                    </div>
                </div>
                <div class="post-main">
                    <div class="img-main">
                        <img src="https://via.placeholder.com/220x250" style="width: 100px;" class="img-author" />
                    </div>
                    <div class="post">
                        <h3 class="name-author"><span>Trần Quốc Thắng</span> <a href="#" class="xemchitiet">Xem chi tiết</a></h3>
                        <p>In Django, fields with auto_now=True are not always updated correctly. A common practice to work around this is to override the save() method on the model, or to use a pre-save hook. However, this doesn't work when calling Model.objects.update()
                            since save() is not called on all instances in the queryset. A common way to fix this would be to alter the table, for example, in MySQL it may look li...</p>
                    </div>
                </div>
                <br>
         


                <!-- The Modal -->
			


                <center>
                    <ul class="pagination">
                        <li class="disabled"><a href="#">«</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </center>
            </div>

        </div>
    </div>
        
<script>
    // Get the modal
    function modalBox(){
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