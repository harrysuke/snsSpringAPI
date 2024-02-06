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
					<div class="card table-card">
						<div class="card-body">
							<div class="text-end p-4 pb-sm-2">
								<a href="#" class="btn btn-primary" data-bs-toggle="modal"
									data-bs-target="#customer-edit_add-modal"> <i
									class="fa-solid fa-plus"></i> Add User
								</a>
							</div>
							<div class="table-responsive">
								<table class="table table-hover" id="pc-dt-simple">
									<thead>
										<tr>
											<th>ID</th>
											<th>Username</th>
											<th>Fullname</th>
											<th>Email</th>
											<th>Access Level</th>
											<th class="text-center">Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty user}">
											<c:forEach var="user" items="${users}">
												<tr>
													<td><c:out value="${user.User_Id}" /></td>
													<td><a href="/sns/user/profile/<c:out value="${user.User_Id}" />"><c:out value="${user.Username}" /></a></td>
													<td><c:out value="${user.Staff_Name}" /></td>
													<td><c:out value="${user.Email}" /></td>
													<td><c:out value="${user.Access_Level}" /></td>
													<td></td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty user }">
											<tr>
												<td colspan="6">User not found.</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>
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