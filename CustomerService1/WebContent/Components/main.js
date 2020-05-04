$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

// SAVE ============================================
$(document).on(
		"click",
		"#btnSave",
		function(event) {
			// Clear status msgs-------------
			$("#alertSuccess").text("");
			$("#alertSuccess").hide();
			$("#alertError").text("");
			$("#alertError").hide();

			// Form validation----------------
			var status = validateCustomerForm();

			// If not valid-------------------
			if (status != true) {
				$("#alertError").text(status);
				$("#alertError").show();
				return;
			}

			// If valid----------------------
			var student = getStudentCard($("#txtFName").val().trim(), $(
					"#txtLName").val().trim(), $("#dob").val().trim(), $(
					"#txtAge").val().trim(), $(
					'input[name="rdoGender"]:checked').val(), $("#txtAddress")
					.val().trim(), $("#txtPhone").val().trim(), $("#txtEmail")
					.val().trim(), $("#txtUName").val().trim(), $(
					"#txtPassword").val().trim());
			$("#colStudents").append(student);

			$("#alertSuccess").text("Saved successfully.");
			$("#alertSuccess").show();

			$("#formStudent")[0].reset();
		});

// REMOVE==========================================
$(document).on("click", ".remove", function(event) {
	$(this).closest(".customer").remove();
	$("#alertSuccess").text("Removed successfully.");
	$("#alertSuccess").show();
});

// CLIENT-MODEL=================================================================
function validateCustomerForm() {
	// First Name
	if ($("#txtfName").val().trim() == "") {
		return "Insert first Name.";
	}

	// Last Name
	if ($("#txtName").val().trim() == "") {
		return "Insert Last Name.";
	}

	// Birthday
	if ($("#dob").val().trim() == "") {
		return "Insert Birthday.";
	}

	// Gender
	if ($('input[name="rdoGender"]:checked').length === 0) {
		return "Select gender.";
	}

	// Address
	if ($("#txtAddress").val().trim() == "") {
		return "Insert Address.";
	}

	// Phone Number
	if ($("#txtphone").val().trim() == "") {
		return "Insert Phone Number.";
	}

	// Email
	if ($("#txtEmail").val().trim() == "") {
		return "Insert Email Address.";
	}

	// Username
	if ($("#txtUName").val().trim() == "") {
		return "Insert Username.";
	}

	// password
	if ($("#txtPassword").val().trim() == "") {
		return "Insert password.";
	}

	return true;
}


