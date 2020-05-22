<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <!-- core -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <!-- format -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Confirm Delete</title>
</head>
<body>
<h1>Delete <c:out value="${grade.name}"/>?</h1>
<p>
Are you sure you want to delete this grade?
</p>
<p>
<i><c:out value="${grade.name}"/></i>
</p>
<p>
<a class="btn btn-outline-primary" href="/">No, Go Back</a> | 
<a class="btn btn-outline-success" href="/delete/yes?id=${id}">Yes, Delete</a>
</p>
</body>
</html>