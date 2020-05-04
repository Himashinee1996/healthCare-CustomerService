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

				<form id="formCustomer">

					<!-- First Name -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">First Name: </span>
						</div>
						<input type="text" id="txtFName" name="txtFName">
					</div>

					<!-- Last Name -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Last Name: </span>
						</div>
						<input type="text" id="txtLName" name="txtLName">
					</div>

					<!-- Birthday -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Date of Birth:
							</span>
						</div>
						<input type="date" id="dob" name="dob">
					</div>

					<!-- Age -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Age: </span>
						</div>
						<input type="text" id="txtAge" name="txtAge">
					</div>

					<!-- GENDER -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="rdoGenderMale"
							name="rdoGender" value="Male"> &nbsp;&nbsp;Female <input
							type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">
					</div>

					<!-- Address -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Address: </span>
						</div>
						<input type="text" id="txtAddress" name="txtAddress">
					</div>

					<!-- Phone -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Phone Number:
							</span>
						</div>
						<input type="text" id="txtPhone" name="txtPhone">
					</div>

					<!-- Email -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Email: </span>
						</div>
						<input type="text" id="txtEmail" name="txtEmail">
					</div>

					<!-- Username -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Username: </span>
						</div>
						<input type="text" id="txtUName" name="txtUName">
					</div>

					<!-- Password -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Password: </span>
						</div>
						<input type="text" id="txtPassword" name="txtPassword">
					</div>

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>
					<input type="button" id="btnSave" value="Save"
						class="btn btn-primary">
				</form>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12" id="colCustomers"></div>
		</div>
	</div>
</body>
</html>