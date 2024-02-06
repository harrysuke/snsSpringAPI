<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns User List";
%>
<%@ include file="inc_head.jsp"%>
</head>
<body data-pc-preset="preset-1" data-pc-sidebar-caption="true"
	data-pc-direction="ltr" data-pc-theme_contrast="" data-pc-theme="light"
	data-pc-layout="tab" data-pc-direction="ltr">

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

				<div class="col-md-12">
					<div class="card social-profile">
						<img src="https://ableproadmin.com/assets/images/application/img-profile-cover.jpg" alt="" class="w-100 card-img-top" />
						<div class="card-body pt-0">
							<div class="row align-items-end">
								<div class="col-md-auto text-md-start">
									<img class="img-fluid img-profile-avtar" src="https://ableproadmin.com/assets/images/user/avatar-5.jpg" alt="User image" />
								</div>
								<c:if test="${not empty user}">
								<div class="col">
									<div class="row justify-content-between align-items-end">
										<div class="col-md-auto soc-profile-data">
											<h5 class="mb-1"><c:out value="${user.Staff_Name }"/></h5>
											<p class="mb-0"><c:out value="${user.Email }"/></p>
										</div>
										<div class="col-md-auto">
											<button class="btn btn-primary me-1">Message</button>
											<button class="btn btn-outline-secondary">Follow</button>
										</div>
									</div>
								</div>
								</c:if>
								<c:if test="${empty user}">
								<div class="col">User not found.</div>
								</c:if>
							</div>
						</div>
					</div>


				</div>
				<!-- End Row -->
			</div>
			<%@ include file="inc_footer.jsp"%>
	</section>
	<%@ include file="inc_scripts.jsp"%>
</body>
</html>