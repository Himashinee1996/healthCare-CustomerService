$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	// If valid------------------------
	$("#formCustomer").submit();
});

// UPDATE==========================================
$(document).on(
		"click",
		".btnUpdate",
		function(event) {
			$("#hidCustomerIDSave").val(
					$(this).closest("tr").find('#hidCustomerIDUpdate').val());
			$("#firstName").val($(this).closest("tr").find('td:eq(0)').text());
			$("#lastName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#dob").val($(this).closest("tr").find('td:eq(2)').text());
			$("#age").val($(this).closest("tr").find('td:eq(3)').text());
			$("#gender").val($(this).closest("tr").find('td:eq(4)').text());
			$("#address").val($(this).closest("tr").find('td:eq(5)').text());
			$("#phone").val($(this).closest("tr").find('td:eq(6)').text());
			$("#email").val($(this).closest("tr").find('td:eq(7)').text());
			$("#username").val($(this).closest("tr").find('td:eq(8)').text());
			$("#password").val($(this).closest("tr").find('td:eq(9)').text());
		});

// CLIENTMODEL=========================================================================
function validateCustomerForm() {
	// First Name
	if ($("#firstNsme").val().trim() == "") {
		return "Insert first Name.";
	}

	// Last Name
	if ($("#lastName").val().trim() == "") {
		return "Insert Last Name.";
	}

	// Date of Birth
	if ($("#dob").val().trim() == "") {
		return "Insert Birthday.";
	}
	// Age-------------------------------
	if ($("#age").val().trim() == "") {
		return "Insert Age.";
	}
	// is numerical value
	var tmpAge = $("#age").val().trim();
	if (!$.isNumeric(tmpAge)) {
		return "Insert a numerical value for Age.";
	}

	// Gender------------------------
	if ($('input[name="gender"]:checked').length === 0) {
		return "Select gender.";
	}

	// Address
	if ($("#address").val().trim() == "") {
		return "Insert Address.";
	}

	// Phone
	if ($("#phone").val().trim() == "") {
		return "Insert Phone.";
	}

	// email
	if ($("#email").val().trim() == "") {
		return "Insert email.";
	}

	// Username
	if ($("#username").val().trim() == "") {
		return "Insert Username.";
	}

	// Password
	if ($("#password").val().trim() == "") {
		return "Insert Password.";
	}

	return true;
}