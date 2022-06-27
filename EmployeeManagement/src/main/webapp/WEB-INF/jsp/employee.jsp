
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot JSP CRUD</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.4/jquery.validate.min.js"></script>	
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.4/additional-methods.min.js"></script>
<style type="text/css">
input {
	width: 350px;
}

label {
	font-weight: 800px;
}

form .error {
	color: #ff0001;
}

</style>


</head>
<body>

	<div class="container">
		<spring:url value="/insert" var="saveURL" />
		<h2 style="text-align: center">Add New Employee</h2>
		<form:form modelAttribute="employeeForm" method="post"
			action="${saveURL }"  id ="form" name="form">
			<form:hidden path="id" />
			<div class="form-group">
				<label for="name">Employee Name</label><br> <input
					class="input-field" type="text" name="name" id="name"
					path="name" class="form-control"> <br>
				<form:errors path="name" />

			</div>
			<!--------------Designation---------------->
			<div class="form-group">
				<label for="designation">Designation</label><br> <input
					class="input-field" type="text" name="designation" id="designation"
					path="designation"><br>
				<form:errors path="designation" />
			</div>
			<div class="form-group">
				<label for="grade">Grade</label><br> <input class="input-field"
					type="text" name="grade" id="grade" path="grade"><br>
				<form:errors path="grade" />
			</div>

			<div class="form-group">
				<label for="address">Address</label><br>
				<input path="address" class="input-field" id="address" name="address"/><br>
				<form:errors path="address"></form:errors>
			</div>
			<div class="form-group">
				<label for="phone">Mobile Number</label><br>
				<input path="phone" class="input-field" id="phone" name="phone"/><br>
				<form:errors path="phone"></form:errors>
			</div>

			<button type="submit" class="btn btn-primary">Save</button>

			<spring:url value="/cancelInsertOrUpdate" var="cancelURL" />
			<a class="btn btn-primary" href="${cancelURL}" role="button">Cancel</a>
		</form:form>
	</div>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

	<script type="text/javascript" src="/js/form.js"></script>

</body>
</html>