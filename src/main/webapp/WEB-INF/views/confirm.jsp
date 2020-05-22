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
<title>Grade Confirmation</title>
</head>
<body>

<section>
<h1>Grade Added</h1>
<p>
The grade was added to the database.
</p>
</section>

<section>
<h2>Details</h2>
<p>
<label>Name: </label>
<c:out value="${grade.name}"/>
</p>
<p>
<label>Type: </label>
${grade.type}
</p>
<p>
<label>Score: </label>
<fmt:formatNumber type = "number" pattern = "##0.0" value = "${grade.score}"/>
</p>
<p>
<label>Total: </label>
<fmt:formatNumber type = "number" pattern = "##0.0" value = "${grade.total}"/>
</p>
<p>
<a class="btn btn-outline-primary" href="/">Return to Grade List</a>
</p>

</section>


</body>
</html>