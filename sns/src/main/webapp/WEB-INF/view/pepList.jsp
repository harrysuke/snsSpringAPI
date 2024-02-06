<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Pep List";
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
											<th>RNU</th>
											<th>IdentityNo</th>
											<th>Name</th>
											<th>ContactNo</th>

											<th>Home Address</th>
											<th>LocationtoVisit</th>
											<th>PurposeofVisit</th>
											<th>CompanyName</th>
											<th>OfficeAddress</th>
											<th>ContactNoOffice</th>
											<th>VehicleNo</th>
											<th>Action</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>RNU</th>
											<th>IdentityNo</th>
											<th>Name</th>
											<th>ContactNo</th>

											<th>Home Address</th>
											<th>LocationtoVisit</th>
											<th>PurposeofVisit</th>
											<th>CompanyName</th>
											<th>OfficeAddress</th>
											<th>ContactNoOffice</th>
											<th>VehicleNo</th>
											<th>Action</th>
										</tr>
									</tfoot>
									<c:forEach items="${pepList}" var="pep">
										<tr>
											<td><c:out value="${pep.id}"></c:out></td>
											<td><c:out value="${pep.rnu}"></c:out></td>
											<td><c:out value="${pep.identityNo}"></c:out></td>
											<td><c:out value="${pep.name }"></c:out></td>
											<td><c:out value="${pep.contactNo }"></c:out></td>

											<td><c:out value="${pep.homeAddress }"></c:out></td>
											<td><c:out value="${pep.locationtoVisit }"></c:out></td>
											<td><c:out value="${pep.purposeofVisit }"></c:out></td>
											<td><c:out value="${pep.companyName }"></c:out></td>
											<td><c:out value="${pep.officeAddress }"></c:out></td>
											<td><c:out value="${pep.contactNoOffice }"></c:out></td>
											<td><c:out value="${pep.vehicleNo }"></c:out></td>
											<td>
											<a href="/sns/pep/edit/<c:out value="${pep.id}"></c:out>"><i class="fa-solid fa-pencil"></i></a>
											<a href="/sns/pep/delete/<c:out value="${pep.id}"></c:out>"><i class="fa-solid fa-trash-can"></i></a>
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