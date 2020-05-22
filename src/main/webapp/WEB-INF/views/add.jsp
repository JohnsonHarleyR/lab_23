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
<title>Grade Form</title>
</head>
<body>

<!-- Can we please go over form validation? -->
<!-- I'm gonna ignore the desire to look up a bunch of stuff to validate since
it's not required and I need a slight break. *perfectionism tingling* -->

<h1>Add a Grade</h1>

<section>
<form action="/confirm" method="post">

<p>
<label>Name </label>
<input type="text" name="name" required>
</p>

<p>
<label>Type </label>
<select name="type" required>
  <option value='Assignment'>Assignment</option>
  <option value='Quiz'>Quiz</option>
  <option value='Exam'>Exam</option>
</select>
</p>

<p>
<label>Score </label> <!-- minlength isn't working? -->
<input type="text" name="score" minlength=0 maxlength=150 required>
</p>

<p>
<label>Total </label>
<input type="text" name="total" minlength=0 maxlength=150 required>
</p>

<button class="btn btn-outline-success">Add</button>
<a href="/">Cancel</a>

</form>


</section>


</body>
</html>