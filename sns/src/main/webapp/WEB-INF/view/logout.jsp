<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%
	String title = "Sns Logout";
%>
<%@ include file="inc_head.jsp"%>
</head>
<body data-pc-preset="preset-1" data-pc-sidebar-caption="true"
	data-pc-direction="ltr" data-pc-theme_contrast="" data-pc-theme="light"
	data-pc-layout="tab" data-pc-direction="ltr">

	<div class="auth-main">
		<div class="auth-wrapper v2">
			<div class="auth-sidecontent">
				<img class="img-fluid" src="https://ableproadmin.com/assets/images/pages/img-soon-2.svg" alt="img" />
			</div>
			<div class="auth-form">
				<div class="card my-5">
					<div class="card-body">
						<h2>Logout Successful</h2>
						<p class="mt-4 text-muted">You have been logged out successfully.</p>
						<a href="/sns/home/login" class="btn btn-primary mb-3">Back To Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="inc_scripts.jsp"%>
</body>
</html>
