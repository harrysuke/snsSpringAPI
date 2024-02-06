<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Pep Update";
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
				<!-- DOM/Jquery table start -->
				<div class="col-sm-12">
					<div class="card">
						<div class="card-header">
							<h5>Pep List</h5>
							<small>...</small>
						</div>
						<div class="card-body">
							<div class="dt-responsive">
								<form action="${pageContext.request.contextPath}/pep/update"
									method="post">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="rnu">RNU:</label> <input type="text" id="rnu"
													class="form-control" name="rnu" value="${pep.rnu}" required />
											</div>
											<div class="form-group">
												<label for="identityNo">IdentityNo:</label> <input
													type="text" id="identityNo" name="identityNo"
													class="form-control" value="${pep.identityNo}"
													placeholder="IdentityNo" required>
											</div>
											<div class="form-group">
												<label for="name">Name:</label> <input type="text" id="name"
													class="form-control" name="name" value="${pep.name}"
													required />
											</div>
											<div class="form-group">
												<label for="contactNo">Contact No:</label> <input
													type="text" id="contactNo" name="contactNo"
													value="${pep.contactNo}" class="form-control"
													placeholder="Contact No" required>
											</div>
											<div class="form-group">
												<label for="eMailAddress">EMail Address:</label> <input
													type="text" id="eMailAddress" name="eMailAddress"
													value="${pep.EMailAddress}" class="form-control"
													placeholder="EMail Address" required>
											</div>
											<div class="form-group">
												<label for="homeAddress">HomeAddress:</label> 
												<textarea id="homeAddress" name="homeAddress"
													value="${pep.homeAddress}" class="form-control"
													placeholder="Home Address" required></textarea>
											</div>
											
											
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="locationtoVisit">Location to Visit:</label> <input
													type="text" id="locationtoVisit" name="locationtoVisit"
													class="form-control" value="${pep.locationtoVisit}" required />
											</div>
											<div class="form-group">
												<label for="purposeofVisit">Purpose of Visit:</label> <input
													type="text" id="purposeofVisit" name="purposeofVisit"
													class="form-control" value="${pep.purposeofVisit}" required />
											</div>
											<div class="form-group">
												<label for="companyName">Company Name:</label> <input
													type="text" id="companyName" name="companyName"
													value="${pep.companyName}" class="form-control"
													placeholder="Company Name" required>
											</div>
											<div class="form-group">
												<label for="officeAddress">Office Address:</label> 
												<textarea id="officeAddress" name="officeAddress"
													value="${pep.officeAddress}" class="form-control"
													placeholder="Office Address" required></textarea>
											</div>
											<div class="form-group">
												<label for="contactNoOffice">Contact No Office:</label> <input
													type="text" id="contactNoOffice" name="contactNoOffice"
													value="${pep.contactNoOffice}" class="form-control"
													placeholder="Contact No Office" required>
											</div>
											<div class="form-group">
												<label for="vehicleNo">Vehicle No:</label> <input
													type="text" id="vehicleNo" name="vehicleNo"
													value="${pep.vehicleNo}" class="form-control"
													placeholder="Vehicle No" required>
											</div>
											
											
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6"></div>
										<div class="col-sm-6 text-sm-end mt-3 mt-sm-0">
											<button type="submit" name="submit" class="btn btn-primary">Update</button>
											<a href="/sns/vep/list" class="btn btn-light-secondary">Cancel</a>
											<input type="hidden" name="id" value="${pep.id}" />
										</div>
									</div>
								</form>

							</div>
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