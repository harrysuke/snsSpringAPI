<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Add Customer</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>
<%@ include file="inc_navbar.jsp"%>
<div class="container">
	<h2>Add Customer</h2>

	<form action="<%=request.getContextPath()%>/customer/add" method="post">

		<div class="mb-3">
			<label for="firstname">First Name:</label>
			<input type="text" id="firstname" name="firstname" class="form-control"
				required="true" />
		</div>
		<div class="mb-3">
			<label for="lastname">Last Name:</label>
			<input type="text" id="lastname" name="lastname" class="form-control" required="true" />
		</div>
		<div class="mb-3">
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" class="form-control" required="true" />
		</div>
		<div class="mb-3">
			<input type="submit" value="Add Customer" class="btn btn-primary">
		</div>
	</form>
</div>

<%@ include file="inc_footer.jsp" %>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
