
<%@page import="com.Customer"%>
<%
	// Save------------
	if (request.getParameter("email") != null) {
		Customer cusObj = new Customer();
		String stsMsg = "";

		//Insert--------------------------
		if (request.getParameter("hidCustomerIDSave") == "") {
			stsMsg = cusObj.insertCustomer(request.getParameter("firstName"), request.getParameter("lastName"),
					request.getParameter("dob"), request.getParameter("age"), request.getParameter("gender"),
					request.getParameter("address"), request.getParameter("phone"),
					request.getParameter("email"), request.getParameter("username"),
					request.getParameter("password"));
		} else//Update----------------------
		{
			stsMsg = cusObj.updateCustomer(request.getParameter("hidCustomerIDSave"),
					request.getParameter("firstName"), request.getParameter("lastName"),
					request.getParameter("dob"), request.getParameter("age"), request.getParameter("gender"),
					request.getParameter("address"), request.getParameter("phone"),
					request.getParameter("email"), request.getParameter("username"),
					request.getParameter("password"));
		}
		session.setAttribute("statusMsg", stsMsg);
	}

	//Delete-----------------------------
	if (request.getParameter("hidCustomerIDDelete") != null) {
		Customer cusObj = new Customer();
		String stsMsg = cusObj.deleteCustomer(request.getParameter("hidCustomerIDDelete"));
		session.setAttribute("statusMsg", stsMsg);
	}
%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer details</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-8">

				<h1 class="m-3">Customer Details</h1>

				<form id="formCustomer" name="formCustomer" method="post"
					action=customer.jsp>

					<!-- First Name -->
					First Name: <input type="text" id="firstName" name="firstName"
						class="form-control form-control-sm">

					<!-- Last Name -->
					<br> Name: <input type="text" id="laststName" name="lastName"
						class="form-control form-control-sm">

					<!-- Birthday -->
					<br> Date of Birth: <input type="date" id="dob" name="dob"
						class="form-control form-control-sm">

					<!-- Age -->
					<br> Age: <input type="text" id="age" name="age"
						class="form-control form-control-sm">

					<!-- GENDER -->
					<br> Gender: &nbsp;&nbsp;Male <input type="radio"
						id="genderMale" name="genderMale" value="Male">
					&nbsp;&nbsp;Female <input type="radio" id="genderFemale"
						name="genderFemale" value="Female"
						class="form-control form-control-sm">

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

				<div id="alertSuccess" class="alert alert-success">%
					out.print(session.getAttribute("statusMsg")); %</div>
				<div>
					<div id="alertError" class="alert alert-danger"></div>

					<br> % 
						Customer cusObj = new Customer();
						out.print(cusObj.readCustomer());
					 %

				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12" id="colCustomers"></div>
		</div>
	</div>
</body>
</html>