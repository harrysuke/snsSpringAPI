<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Vep Update";
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
							<h5>Vep List</h5>
							<small>...</small>
						</div>
						<div class="card-body">
							<div class="dt-responsive">
								<form action="${pageContext.request.contextPath}/vep/update"
									method="post">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="rnu">RNU:</label> <input type="text" id="rnu"
													class="form-control" name="rnu" value="${vep.rnu}" required />
											</div>
											<div class="form-group">
												<label for="nRICPassportNo">NRIC Passport No:</label> <input
													type="text" id="nRICPassportNo" name="nRICPassportNo"
													class="form-control" value="${vep.nRICPassportNo}"
													placeholder="NRIC Passport No" required>
											</div>
											<div class="form-group">
												<label for="name">Name:</label> <input type="text" id="name"
													class="form-control" name="name" value="${vep.name}"
													required />
											</div>
											<div class="form-group">
												<label for="companyName">Company Name:</label> <input
													type="text" id="companyName" name="companyName"
													class="form-control" value="${vep.companyName}" required />
											</div>
											<div class="form-group">
												<label for="vehicleNo">Vehicle No:</label> <input
													type="text" id="vehicleNo" name="vehicleNo"
													value="${vep.vehicleNo}" class="form-control"
													placeholder="Vehicle No" required>
											</div>
											<div class="form-group">
												<label for="contactNo">Contact No:</label> <input
													type="text" id="contactNo" name="contactNo"
													value="${vep.contactNo}" class="form-control"
													placeholder="Contact No" required>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="dateofVisit">Date of Visit:</label> <input
													type="date" id="dateofVisit" name="dateofVisit"
													id="pc-datepicker-1" value="${vep.dateofVisit}"
													class="form-control" placeholder="Date of Visit" required>
											</div>

											<div class="form-group">
												<label for="expiryDate">Expiry Date:</label> <input
													type="date" id="expiryDate" name="expiryDate"
													id="pc-datepicker-1" value="${vep.expiryDate}"
													class="form-control" placeholder="Expiry Date" required>
											</div>
											<div class="form-group">
												<label for="locationtoVisit">Location to Visit:</label> <input
													type="text" id="locationtoVisit" name="locationtoVisit"
													value="${vep.locationtoVisit}" class="form-control"
													placeholder="Location to Visit" required>
											</div>
											<div class="form-group">
												<label for="purposeofVisit">Purpose of Visit:</label> <input
													type="text" id="purposeofVisit" name="purposeofVisit"
													value="${vep.purposeofVisit}" class="form-control"
													placeholder="Purpose of Visit" required>
											</div>
											<div class="form-group">
												<label for="permitType">Permit Type:</label> <input
													type="text" id="permitType" name="permitType"
													value="${vep.permitType}" class="form-control"
													placeholder="Permit Type" required>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6"></div>
										<div class="col-sm-6 text-sm-end mt-3 mt-sm-0">
											<button type="submit" name="submit" class="btn btn-primary">Update</button>
											<a href="/sns/vep/list" class="btn btn-light-secondary">Cancel</a>
											<input type="hidden" name="id" value="${vep.id}" />
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