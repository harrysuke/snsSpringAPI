<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>

<div class="container">
    <h2>Login</h2>

    <form action="<%=request.getContextPath()%>/user/login" method="post">
        <div class="mb-3">
            <label for="User_Id">User Id:</label>
            <input type="text" id="User_Id" name="User_Id" class="form-control" placeholder="User_Id" required>
        </div>
        <div class="mb-3">
            <label for="katalaluan">Password:</label>
            <input type="password" id="katalaluan" name="katalaluan" class="form-control" placeholder="Katalaluan" required>
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-primary">Login</button>
            <a href="<%=request.getContextPath()%>/user/register" class="btn btn-link">Register</a>
        </div>
    </form>

</div>



<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
