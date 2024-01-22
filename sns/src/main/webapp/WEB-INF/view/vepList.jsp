<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/dataTables.bootstrap.min.css"
	integrity="sha512-BMbq2It2D3J17/C7aRklzOODG1IQ3+MHw3ifzBHMBwGO/0yUqYmsStgBjI0z5EYlaDEFnvYV7gNYdD3vFLRKsA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<meta charset="UTF-8">
<title>SNS</title>
</head>
<body>
<%@ include file="inc_navbar.jsp"%>
<div class="container">
	<table class="table" id="myTable">
		<thead>
			<tr>
				<th>ID</th>
				<th>RNU</th>
				<th>NRIC Passport No</th>
				<th>name</th>
				<th>companyName</th>
				<th>vehicleNo</th>
				<th>contactNo</th>
				<th>dateofVisit</th>
				<th>expiryDate</th>
				<th>locationtoVisit</th>
				<th>purposeofVisit</th>
				<th>permitType</th>
			</tr>
		</thead>
		<c:forEach items="${vepList}" var="vep">
			<tr>
				<td><c:out value="${vep.id}"></c:out></td>
				<td><c:out value="${vep.rnu}"></c:out></td>
				<td><c:out value="${vep.NRICPassportNo}"></c:out></td>
				<td><c:out value="${vep.name }"></c:out></td>
				<td><c:out value="${vep.companyName }"></c:out></td>
				<td><c:out value="${vep.vehicleNo }"></c:out></td>
				<td><c:out value="${vep.contactNo }"></c:out></td>
				<td><c:out value="${vep.dateofVisit }"></c:out></td>
				<td><c:out value="${vep.expiryDate }"></c:out></td>
				<td><c:out value="${vep.locationtoVisit }"></c:out></td>
				<td><c:out value="${vep.purposeofVisit }"></c:out></td>
				<td><c:out value="${vep.permitType }"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<%@ include file="inc_footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"
		integrity="sha512-BkpSL20WETFylMrcirBahHfSnY++H2O1W+UnEEO4yNIl+jI2+zowyoGJpbtk6bx97fBXf++WJHSSK2MV4ghPcg=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap5.min.js"
		integrity="sha512-Fg4eN8x1JYP5+pCHtphLssZSJmKJfq2w6fM5fdC18+7yoKqn+KK1u5FeIvTrJmye2qmTkwWp4b7SfM9SWDk7HQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		$(document).ready(function() {
			$("#myTable").DataTable();
		});
	</script>
</body>
</html>