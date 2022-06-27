<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot JSP CRUD</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
	






 
</head>
<body>

 <div class="container">
  <h2 style="text-align:center ">Employee Management </h2>
 
  <spring:url value="/insertPage/" var="addURL" />
  <a class="btn btn-primary" href="${addURL}" role="button" style="text-align:center " > <i class="fas fa-user"></i> Add New Employee </a> <br> <br>
  <table class="table table-striped">
   <thead>
    <th scope="row">ID</th>
    <th scope="row">Name</th>
    <th scope="row">Designation</th>
    <th scope="row">Grade</th>
    <th scope="row">Address</th>
    <th scope="row">Phone</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${employees }" var="employee" >
     <tr>
      <td>${employee.id }</td>
      <td>${employee.name }</td>
       <td>${employee.designation }</td>
        <td>${employee.grade }</td>
      <td>${employee.address }</td>
      <td>${employee.phone }</td>
      <td>
       <spring:url value="/update/${employee.id }" var="updateURL" />
       <a class="btn btn-success" href="${updateURL }" role="button"> <i class="fa fa-edit"></i> Update</a> <br>
      </td>
      <td>
       <spring:url value="/delete/${employee.id }" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL }" role="button" > <i class="fa fa-trash"></i> Delete</a> 


       
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
 
 </div>
<script type="text/javascript" src="/js/form-validation.js"></script>
</body>
</html>