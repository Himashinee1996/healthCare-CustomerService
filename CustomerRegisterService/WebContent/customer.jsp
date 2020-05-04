<%@page import="com.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer details</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/customer.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">

				<h1>Customer Details</h1>

				<form id="formCustomer" name="formCustomer">

					<!-- First Name -->
					First Name: <input type="text" id="firstName" name="firstName"
						class="form-control form-control-sm">

					<!-- Last Name -->
					<br> Last Name: <input type="text" id="laststName" name="lastName"
						class="form-control form-control-sm">

					<!-- Birthday -->
					<br> Date of Birth: <input type="date" id="dob" name="dob"
						class="form-control form-control-sm">

					<!-- Age -->
					<br> Age: <input type="text" id="age" name="age"
						class="form-control form-control-sm">

					<!-- GENDER -->
					<br> Gender: &nbsp;&nbsp;Male <input type="radio"
						id="genderMale" name="gender" value="Male">
					&nbsp;&nbsp;Female <input type="radio" id="genderFemale"
						name="gender" value="Female" class="form-control form-control-sm">

					<!-- Address -->
					<br> Address: <input type="text" id="address" name="address"
						class="form-control form-control-sm">


					<!-- Phone -->
					<br> Phone Number: <input type="text" id="phone" name="phone"
						class="form-control form-control-sm">

					<!-- Email -->
					<br> Email: <input type="text" id="email" name="email"
						class="form-control form-control-sm">

					<!-- Username -->
					<br> Username: <input type="text" id="username"
						name="username" class="form-control form-control-sm">

					<!-- Password -->
					<br> Password: <input type="text" id="password"
						name="password" class="form-control form-control-sm"> <br>
					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidCustomerIDSave" name="hidCustomerIDSave value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divCustomerGrid">
					<%
						Customer cusObj = new Customer();
						out.print(cusObj.readCustomer());
					%>
				</div>
			</div>
		</div>

	</div>
</body>
</html>