<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>

	<form action="<%=request.getContextPath()%>/vep/add" method="post">
		<div class="mb-3">
			<label for="rnu">RNU:</label> 
			<input type="text" id="rnu" name="rnu" class="form-control" placeholder="RNU" required>
		</div>
		<div class="mb-3">
			<label for="NRICPassportNo">NRIC Passport No:</label> 
			<input type="text" id="NRICPassportNo" name="NRICPassportNo" class="form-control" placeholder="NRIC Passport No" required>
		</div>
		<div class="mb-3">
			<label for="name">Name:</label> 
			<input type="text" id="name" name="name" class="form-control" placeholder="Name" required>
		</div>
		<div class="mb-3">
			<label for="CompanyName">Company Name:</label> 
			<input type="text" id="CompanyName" name="CompanyName" class="form-control" placeholder="Company Name" required>
		</div>
		<div class="mb-3">
			<label for="VehicleNo">Vehicle No:</label> 
			<input type="text" id="VehicleNo" name="VehicleNo" class="form-control" placeholder="Vehicle No" required>
		</div>
		<div class="mb-3">
			<label for="ContactNo">Contact No:</label> 
			<input type="text" id="ContactNo" name="ContactNo" class="form-control" placeholder="Contact No" required>
		</div>
		<div class="mb-3">
			<label for="DateofVisit">Date of Visit:</label> 
			<input type="text" id="DateofVisit" name="DateofVisit" class="form-control" placeholder="Date of Visit" required>
		</div>
		<div class="mb-3">
			<label for="DateofVisit">Date of Visit:</label> 
			<input type="text" id="DateofVisit" name="DateofVisit" class="form-control" placeholder="Date of Visit" required>
		</div>
		<div class="mb-3">
			<label for="ExpiryDate">Expiry Date:</label> 
			<input type="text" id="ExpiryDate" name="ExpiryDate" class="form-control" placeholder="Expiry Date" required>
		</div>
		<div class="mb-3">
			<label for="LocationtoVisit">Location to Visit:</label> 
			<input type="text" id="LocationtoVisit" name="LocationtoVisit" class="form-control" placeholder="Location to Visit" required>
		</div>
		<div class="mb-3">
			<label for="PurposeofVisit">Purpose of Visit:</label> 
			<input type="text" id="PurposeofVisit" name="PurposeofVisit" class="form-control" placeholder="Purpose of Visit" required>
		</div>
		<div class="mb-3">
			<label for="PermitType">Permit Type:</label> 
			<input type="text" id="PermitType" name="PermitType" class="form-control" placeholder="Permit Type" required>
		</div>
		<div class="mb-3">
		<button type="submit" name="subimt" class="btn btn-primary">Submit</button>
		</div>
	</form>
</body>
</html>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</body>
</html>