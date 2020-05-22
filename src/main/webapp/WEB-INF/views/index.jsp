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
<title>Homepage</title>
</head>
<body>
<h1>Grades</h1>

<section>
<br>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Type</th>
      <th scope="col">Score</th>
      <th scope="col">Total</th>
      <th scope="col">Percent</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    
    <c:forEach var="grade" items="${grades}">
 	<tr>
      <td><c:out value="${grade.name}"/></td>
      <td>${grade.type}</td>
      <td><fmt:formatNumber type = "number" 
      pattern = "##0.0" value = "${grade.score}"/></td>
      <td><fmt:formatNumber type = "number" 
      pattern = "##0.0" value = "${grade.total}"/></td>
      <c:set var = "percent" scope = "session" 
      value = "${grade.score / grade.total}"/>
      <td><fmt:formatNumber value="${percent}"
      minFractionDigits = "1" type="percent" /></td>
      <td><a class="btn btn-outline-danger" href="/delete?id=${grade.id}">Delete</a></td>
    </tr>
    
 	</c:forEach>
    
  </tbody>
</table>
<br>
<p>
<b>Overall Grade: </b>
<fmt:formatNumber value="${tot_percent}"
      minFractionDigits = "1" type="percent" />
</p>


<a class="btn btn-outline-primary" href="/add">Add Grade</a>

</section>


</body>
</html>