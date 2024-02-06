<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Dashboard";
%>
<%@ include file="inc_head.jsp"%>
</head>
<body data-pc-preset="preset-1" data-pc-sidebar-caption="true" data-pc-direction="ltr" data-pc-theme_contrast="" data-pc-theme="light" data-pc-layout="tab" data-pc-direction="ltr">

	<!-- [ Sidebar Menu ] start -->
	<%@ include file="inc_sidebar.jsp"%>
	<!-- [ Sidebar Menu ] end -->

	<!-- [ Header Topbar ] start -->
	<%@ include file="inc_navbar.jsp"%>
	<!-- [ Header ] end -->

	<!-- [ Main Content ] start -->
	<section class="pc-container">
		<div class="pc-content">
			<!-- [ Main Content ] start -->
			<div class="row">
			
			<div class="col-md-6 col-xl-3">
            <div class="card social-widget-card bg-primary">
              <div class="card-body">
                <h3 class="text-white m-0"><c:out value="${userCount }"></c:out></h3>
                <span class="m-t-10">SNS Users</span>
                <i class="fa-solid fa-user"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xl-3">
            <div class="card social-widget-card bg-info">
              <div class="card-body">
                <h3 class="text-white m-0"><c:out value="${not empty adminCount ? adminCount: 0}"></c:out></h3>
                <span class="m-t-10">SNS Admin</span>
                <i class="fa-solid fa-user-tie"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xl-3">
            <div class="card social-widget-card bg-success">
              <div class="card-body">
                <h3 class="text-white m-0"><c:out value="${pepCount }"></c:out></h3>
                <span class="m-t-10">PEP Stats</span>
                <i class="fa-solid fa-chart-pie"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xl-3">
            <div class="card social-widget-card bg-danger">
              <div class="card-body">
                <h3 class="text-white m-0"><c:out value="${vepCount }"></c:out></h3>
                <span class="m-t-10">VEP Stats</span>
                <i class="fa-solid fa-chart-pie"></i>
              </div>
            </div>
          </div>				


			</div>
		</div>
		<%@ include file="inc_footer.jsp"%>
	</section>
	<%@ include file="inc_scripts.jsp"%>
</body>
</html>