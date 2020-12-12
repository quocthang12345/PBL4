<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>        
<body>
			<!-- This is a start of the Banner Page -->
            <div class="container-fluid">
                <div class="row">
                    <s:url var="bg" value="/template/web/image/cty.jpg" />
                    <div class="img-banner col-12 col-lg-12 col-md-12 col-sm-12" style="background-image:url(${bg})">
                        <div class="content-banner col-12 col-lg-4 col-md-4 col-sm-12 pb-4">
                            <div class="content">
                                <h1>
                                <br><p style="font-size:25px;font-weight:600;color:rgb(218,11,78);margin:0">Tìm kiếm bộ phận</p></h1>
                                <p class="text-description">Tra cứu bộ phận trong công ty</p>
                            <form action="<c:url value='/redirect' />" >
                            	<input style="width:150%" class="input-search" type="search" name="key" id="key" onsearch="this.form.submit()" onchange="this.form.submit()" placeholder="Nhập bộ phận bạn đang làm?" >
                            </form>
                            </div>            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="content-course d-flex flex-row">
                            <div class="content-left col-4 col-lg-4 col-md-4 col-sm-4">
                                    <div class="description">
                                        <div class="row">
                                            <div class="icon-course col-12 col-sm-12 col-md-3 col-lg-3">
                                                <div class="icon-cmr">
                                                    <i class="fas fa-video"></i>
                                                </div>
                                            </div>
                                            <div class="short-description col-12 col-sm-12 col-md-9 col-lg-9">
                                                <p class="title-course">Nằm trong top 10 công ty phát triển Việt Nam</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            <div class="content-center col-4 col-lg-4 col-md-4 col-sm-4">
                                    <div class="description">
                                        <div class="row">
                                            <div class="icon-course col-12 col-sm-12 col-md-3 col-lg-3">
                                                <div class="icon-cmr">
                                                    <i class="fas fa-medal"></i>
                                                </div>
                                            </div>
                                            <div class="p-0 pr-4 short-description col-12 col-sm-12 col-md-9 col-lg-9">
                                                <p class="title-course">Trung tâm đào tạo nhân lực hàng đầu Việt Nam</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            <div class="content-right col-4 col-lg-4 col-md-4 col-sm-4">
                                    <div class="description">
                                        <div class="row">
                                            <div class="icon-course col-12 col-sm-12 col-md-3 col-lg-3">
                                                <div class="icon-cmr">
                                                    <i class="fas fa-infinity"></i>
                                                </div>
                                            </div>
                                            <div class="short-description col-12 col-sm-12 col-md-9 col-lg-9">
                                                <p class="title-course">Thân thiện với khách hàng</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                    </div>
                </div>
            </div>
            <!-- End Banner Page -->

            <!-- This is a start of the Feature Page -->
            
            <!-- End Feature Page -->


            <!-- This is a start of the Item Page -->
            <div class="container-fluid">
            <div class="container-item">
                <div class="wrap-item">
                    <div class="title-item">
                        <div class="big-title"><span style="color:rgb(218, 11, 78)"> DANH SÁCH BỘ PHẬN</div>
                    </div>
                    <div class="content-item">
                        <div class="row d-flex flex-row justify-content-center align-items-center">
	                        <div class="item i-1 col-12 col-sm-12 col-lg-3 col-md-3">
		                            <ul>
		                                <li class="img-item item-img-1"><img src="<c:url value='/template/web/icon/marketing.png'/>" /></li>
		                                <li class="content">
		                                    <p class="header-title title-item-1"><a href="<c:url value='/list-work?keyword=Marketing' />" style="text-decoration:none;">Marketing</a></p>
		                            </ul>
	                        </div>
                        <div class="item i-2 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-2"><img src="<c:url value='/template/web/icon/it.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-2"><a href="<c:url value='/list-work?keyword=IT/' />" style="text-decoration:none;">Kĩ thuật</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-3 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-3"><img src="<c:url value='/template/web/icon/care.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-3"><a href="<c:url value='/list-work?keyword=GUEST-SERVICE' />" style="text-decoration:none;">Chăm sóc khách hàng</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-4 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-4"><img src="<c:url value='/template/web/icon/security.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-4"><a href="<c:url value='/list-work?keyword=security' />" style="text-decoration:none;">An ninh</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-5 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-5"><img src="<c:url value='/template/web/icon/finance.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-5"><a href="#" style="text-decoration:none;">Tài vụ</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-6 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-6"><img src="<c:url value='/template/web/icon/accountant.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-6"><a href="#" style="text-decoration:none;">Kế Toán</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-7 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-7"><img src="<c:url value='/template/web/icon/team.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-7"><a href="#" style="text-decoration:none;">Nhân sự</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="item i-8 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-8"><img src="<c:url value='/template/web/icon/sales.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-8"><a href="#" style="text-decoration:none;">Sales</a></p>  
                                </li>
                            </ul>
                        </div>
                        <div class="item i-9 col-12 col-sm-12 col-lg-3 col-md-3">
                            <ul>
                                <li class="img-item item-img-9"><img src="<c:url value='/template/web/icon/settings.png'/>" /></li>
                                <li class="content">
                                    <p class="header-title title-item-9"><a href="#" style="text-decoration:none;">Bảo trì</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- End Item Page -->

            <!-- This is a start of the Info Page -->
           

</body>

</html>