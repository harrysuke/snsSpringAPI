<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Vep List";
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
				<!-- DOM/Jquery table start -->
				<div class="col-sm-12">
					<div class="card">
						<div class="card-header">
							<h5>Vep List</h5>
							<small>...</small>
						</div>
						<div class="card-body">
							<div class="dt-responsive table-responsive">

								<table id="datatable" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>ID</th>
											<th>NRIC/Passport</th>
											<th>Name</th>
											<th>CompanyName</th>
											<th>VehicleNo</th>
											<th>ContactNo</th>
											<th>DateofVisit</th>
											<th>ExpiryDate</th>
											<th>LocationtoVisit</th>
											<th>PurposeofVisit</th>
											<th>Action</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>NRIC/Passport</th>
											<th>Name</th>
											<th>CompanyName</th>
											<th>VehicleNo</th>
											<th>ContactNo</th>
											<th>DateofVisit</th>
											<th>ExpiryDate</th>
											<th>LocationtoVisit</th>
											<th>PurposeofVisit</th>
											<th>Action</th>
										</tr>
									</tfoot>
									<c:forEach items="${vepList}" var="vep">
										<tr>
											<td><c:out value="${vep.id}"></c:out></td>
											<td><c:out value="${vep.NRICPassportNo}"></c:out></td>
											<td><c:out value="${vep.name }"></c:out></td>
											<td><c:out value="${vep.companyName }"></c:out></td>
											<td><c:out value="${vep.vehicleNo }"></c:out></td>
											<td><c:out value="${vep.contactNo }"></c:out></td>
											<td><c:out value="${vep.dateofVisit }"></c:out></td>
											<td><c:out value="${vep.expiryDate }"></c:out></td>
											<td><c:out value="${vep.locationtoVisit }"></c:out></td>
											<td><c:out value="${vep.purposeofVisit }"></c:out></td>
											<td>
											<a href="/sns/vep/edit/<c:out value="${vep.id}"></c:out>"><i class="fa-solid fa-pencil"></i></a>
											<a href="/sns/vep/delete/<c:out value="${vep.id}"></c:out>"><i class="fa-solid fa-trash-can"></i></a>
											</td>
										</tr>
									</c:forEach>
								</table>
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