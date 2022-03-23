<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Customers</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>Customer Details</h2>
			<hr />

			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" /> <br /> <br />

			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Customer List</div>
				</div>

				<div class="panel-body">

					<table class="table table-striped table-bordered">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
						<c:forEach var="tempCustomer" items="${customers}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/deleteForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>
							<tr>
								<td>${tempCustomer.first_name}</td>
								<td>${tempCustomer. last_name}</td>
								<td>${tempCustomer.email}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>	| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<!-- customers -->
			</div>
		</div>
	</div>
</body>
</html>