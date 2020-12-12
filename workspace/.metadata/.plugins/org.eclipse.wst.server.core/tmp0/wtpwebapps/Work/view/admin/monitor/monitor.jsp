<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="workURL" value="/admin-home"/> 
<c:url var="workAPI" value="/api/work"/> 
<%@page import="com.SpringMVC.util.SecurityUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monitoring</title>
</head>
<body>
<div id="wrapper">
	<!-- Sidebar -->
	    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	
	      <!-- Sidebar - Brand -->
	      <a class="sidebar-brand d-flex align-items-center justify-content-center" href='<c:url value='/admin-home' />'>
	        <div class="sidebar-brand-icon rotate-n-15">
	          <i class="fas fa-laugh-wink"></i>
	        </div>
	        <div class="sidebar-brand-text mx-3">Trang Quản Trị </div>
	      </a>
	
	      <!-- Divider -->s
	      <hr class="sidebar-divider my-0">
	
	      <!-- Nav Item - Dashboard -->
	      <li class="nav-item active">
	        <a class="nav-link" href='<c:url value='/admin-home/list' />'>
	          <i class="fas fa-fw fa-tachometer-alt"></i>
	          <span>Danh sách bộ phận</span></a>
	      </li>
	      
	      <li class="nav-item active">
	        <a class="nav-link" href='<c:url value='/admin-home/monitor-user' />'>
	          <i class="fas fa-fw fa-tachometer-alt"></i>
	          <span>Giám sát hoạt động</span></a>
	      </li>
	
	
	      <!-- Divider -->
	      <hr class="sidebar-divider d-none d-md-block">
	
	      <!-- Sidebar Toggler (Sidebar) -->
	      <div class="text-center d-none d-md-inline">
	        <button class="rounded-circle border-0" id="sidebarToggle"></button>
	      </div>
	
	    </ul>
	    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-2 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

		  <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
     	<!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Dropdown - Messages -->
			<li class="nav-item dropdown no-arrow mx-1 pt-3">
				<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-envelope fa-fw"></i>
					<span class="badge badge-danger badge-counter">4</span>
				</a>
				 <!-- Dropdown - Messages -->
				<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
					<h6 class="dropdown-header">
						 Message
					</h6>
					<a class="dropdown-item d-flex align-items-center" href="#">
						<div class="dropdown-list-image mr-3">
							 <img class="rounded-circle" src="https://via.placeholder.com/30.jpg" alt="">
							 <div class="status-indicator bg-success"></div>
						</div>
						<div class="font-weight-bold">
							  <div class="text-truncate">Text</div>
							  <div class="small text-gray-500">Time</div>
						</div>
					</a>
	                <a class="dropdown-item d-flex align-items-center" href="#">
		                  <div class="dropdown-list-image mr-3">
		                    <img class="rounded-circle" src="https://via.placeholder.com/30.jpg" alt="">
		                    <div class="status-indicator"></div>
		                  </div>
		                  <div>
		                    <div class="text-truncate">Text</div>
		                    <div class="small text-gray-500">Time</div>
		                  </div>
		                </a>
		                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
		              </div>
		            </li>
		            <div class="topbar-divider d-none d-sm-block"></div>
	            	<li class="form-group nav-item dropdown no-arrow mx-1 pt-3">
	                      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=SecurityUtils.getPrincipal().getFullName()%></span>
			                <img class="img-profile rounded-circle" src="<c:url value='${user.userAvatar }' />" style="width:40px; height:40px;"/>
			              </a>
		              <!--User Information -->
		              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
			                <a class="dropdown-item" href="<c:url value='/profile?id=${user.id}' />">
			                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
			                  Profile
			                </a>
			                <a class="dropdown-item" href="#">
			                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
			                  Activity Log
			                </a>
			                <div class="dropdown-divider"></div>
			                <a class="dropdown-item" href="<c:url value='/thoat'/>">
			                  <span class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></span>
			                  Logout
			                </a>
		              </div>
             	  </li>
          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh sách hoạt động của USER </h6>
            </div>
            <div class="card-body">
	              <div class="row">
	                <div class="col-sm-12">
	                	  <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
			                  <thead>
			                    <tr role="row">
				                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" style="width: 98px;">Username</th>
				                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" style="width: 69px;">Datetime</th>
				                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" style="width: 31px;">RequestMethod</th>
				                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" style="width: 69px;">RequestURL</th>
				                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" style="width: 69px;">UserAgent</th>
				                </tr>
			                  </thead>
	       
			                   <tbody>
			                   <c:forEach var="i" items="${activities}">
				                  <tr role="row" class="odd">
				                      <td class="sorting_1">${i.createBy}</td>
				                      <td>${i.createDate}</td>
				                      <td>${i.requestMethod}</td>
				                      <td>${i.url}</td>
							      	  <td>${i.userAgent}</td>
				                  </tr>
				               </c:forEach>
			                   </tbody>
	                		</table>
	               		</div>
	                </div>
				</div>
			</div>
  	
			</div>
		   <!-- /.container-fluid -->
        </div>


      </div>
      <!-- End of Main Content -->
      </div>

  <!-- End of Page Wrapper -->



</body>
</html>