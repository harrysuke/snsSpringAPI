<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Register";
%>
<%@ include file="inc_head.jsp"%>
</head>
<body data-pc-preset="preset-1" data-pc-sidebar-caption="true"
	data-pc-direction="ltr" data-pc-theme_contrast="" data-pc-theme="light"
	data-pc-layout="tab" data-pc-direction="ltr">

	<div class="auth-main">
		<div class="auth-wrapper v2">
			<div class="auth-sidecontent">
				<img
					src="https://dashcode-react.codeshaper.net/assets/ils1.488442d7.svg"
					alt="images" class="img-fluid img-auth-side">
			</div>
			<div class="auth-form">
				<div class="card my-5">
					<div class="card-body">
					<h4 class="text-center f-w-500 mb-3">Sign up with your email.</h4>
						<form action="<%=request.getContextPath()%>/user/register"
							method="post">
							<div class="form-group mb-3">
								<label for="User_Id">User ID:</label> <input type="text"
									id="User_Id" name="User_Id" class="form-control"
									placeholder="User ID" required>
							</div>
							<div class="form-group mb-3">
								<label for="Staff_Name">Staff Name:</label> <input type="text"
									id="Staff_Name" name="Staff_Name" class="form-control"
									placeholder="Staff_Name" required>
							</div>
							<div class="form-group mb-3">
								<label for="Username">User Name:</label> <input type="text"
									id="Username" name="Username" class="form-control"
									placeholder="Username" required>
							</div>
							<div class="form-group mb-3">
								<label for="email">Email:</label> <input type="email" id="Email"
									name="Email" placeholder="Email" class="form-control" required>
							</div>
							<div class="form-group mb-3">
								<label for="katalaluan">Password:</label> <input type="password"
									id="katalaluan" name="katalaluan" class="form-control"
									placeholder="Katalaluan" required>
							</div>
							<div class="d-grid mt-4">
								<button type="submit" class="btn btn-primary">Sign up</button>
							</div>
						</form>
						<div class="d-flex justify-content-between align-items-end mt-4">
							<h6 class="f-w-500 mb-0">Don't have an Account?</h6>
							<a href="<%=request.getContextPath()%>/user/login" class="link-primary">Create Account</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="inc_scripts.jsp"%>
</body>
</html>