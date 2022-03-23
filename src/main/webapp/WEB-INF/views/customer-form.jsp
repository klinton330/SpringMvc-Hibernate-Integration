<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Customer Form</title>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h1>Customer Form</h1>
			<div class="panel-heading">
				<div class="panel-title">Add Customer</div>
			</div>

			<div class="panel-body">
				<form:form action="saveCustomer" cssClass="form-horizontal"
					method="post" modelAttribute="customer">

					<form:hidden path="id" />

					<div class="form-group">
						<label for="first_name" class="col-md-3 control-label">First
							Name</label>
						<div class="col-md-9">
							<form:input path="first_name" cssClass="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label for="last_name" class="col-md-3 control-label">Second
							Name</label>
						<div class="col-md-9">
							<form:input path="last_name" cssClass="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<form:input path="email" cssClass="form-control" />
						</div>

					</div>

					<div class="form-group">
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<form:button cssClass="btn btn-success" class="btn btn-success">Submit</form:button>
							<input type="button" value="Goto List"
								onclick="window.location.href='list'; return false;"
								class="btn btn-primary" /> <br /> <br />
						</div>
					</div>





				</form:form>
			</div>
		</div>
	</div>
</body>
</html>