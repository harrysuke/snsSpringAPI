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
										<c:if test="${not empty users}">
											<c:forEach var="user" items="${users}">
												<tr>
													<td><c:out value="${user.User_Id}" /></td>
													<td><c:url var="profileUrl"
															value="/sns/user/profile/${user.User_Id}" /> <a
														href="${profileUrl}"> <c:out value="${user.Username}" />
													</a></td>
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


		<div class="modal fade" id="customer-edit_add-modal"
			data-bs-keyboard="false" tabindex="-1" aria-hidden="true">
			<form method="post" action="/sns/user/adduser">
				<div
					class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="mb-0">User</h5>
							<a href="#" class="avtar avtar-s btn-link-danger btn-pc-default"
								data-bs-dismiss="modal"> <i class="ti ti-x f-20"></i>
							</a>
						</div>
						<div class="modal-body">
							<div class="mb-3">
								<label for="User_Id" class="col-form-label">User_Id:</label> <input
									type="text" class="form-control" id="User_Id" name="User_Id">
							</div>
							<div class="mb-3">
								<label for="Staff_Name" class="col-form-label">Staff_Name:</label>
								<input type="text" class="form-control" id="Staff_Name"
									name="Staff_Name">
							</div>
							<div class="mb-3">
								<label for="Username" class="col-form-label">Username:</label> <input
									type="text" class="form-control" id="Username" name="Username">
							</div>
							<div class="mb-3">
								<label for="Email" class="col-form-label">Email:</label> <input
									type="email" class="form-control" id="Email" name="Email">
							</div>
							<div class="mb-3">
								<label for="katalaluan" class="col-form-label">Password:</label>
								<input type="password" class="form-control" id="katalaluan"
									name="katalaluan">
							</div>
						</div>
						<div class="modal-footer justify-content-between">
							<ul class="list-inline me-auto mb-0">
								<li class="list-inline-item align-bottom"><a href="#"
									class="avtar avtar-s btn-link-danger btn-pc-default w-sm-auto"
									data-bs-toggle="tooltip" title="Delete"> <i
										class="ti ti-trash f-18"></i>
								</a></li>
							</ul>
							<div class="flex-grow-1 text-end">
								<button type="button" class="btn btn-link-danger btn-pc-default"
									data-bs-dismiss="modal">Cancel</button>
								<button type="submit" name="submit" class="btn btn-primary"
									data-bs-dismiss="modal">Save</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>


		<%@ include file="inc_footer.jsp"%>
	</section>
	<%@ include file="inc_scripts.jsp"%>
</body>
</html>