<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.jsp.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
</head>
<body>

    <h2>Error Page</h2>

    <div>
        <p>An error occurred: ${errorMessage}</p>
        <p>Please contact the administrator for assistance.</p>
    </div>

</body>
</html>
