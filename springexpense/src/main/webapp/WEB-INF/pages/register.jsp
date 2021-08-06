<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Register</title>
<script>
	function checkPassword(form) {
		txtpw = form.txtpw.value;
		txtconfirmpw = form.txtconfirmpw.value;

		// If password not entered
		if (txtpw == '')
			alert("Please enter Password");

		// If confirm password not entered
		else if (txtconfirmpw == '')
			alert("Please enter confirm password");

		// If Not same return False.    
		else if (txtpw != txtconfirmpw) {
			alert("\nPassword did not match: Please try again...")
			return false;
		}

		// If same return True.
		else {
			alert("Password Match: Welcome to Employee portal")
			return true;
		}
	}
</script>
<style>
body {
	color: #fff;
	background-image: linear-gradient(to bottom right, #1DA1F2, #CEFF1A);
	font-family: 'Roboto', sans-serif;
	height: 100vh;
}

.form-control {
	height: 40px;
	color: #1A1414;
}

.form-control, .btn {
	border-radius: 25px;
	width: 100%;
	background-color: #1DA1F2;
	outline: none;
	border: 2px solid;
}

.form-control, .btn:hover {
	border-color: #1DA1F2;
	background-color: #1DA1F2;
	transition: .1s;
}

.signup-form {
	width: 400px;
	margin: 0 auto;
	padding: 30px 1px;
	margin-top: 40px;
}

.signup-form h2 {
	color: #636363;
	margin: 0 0 10px;
	position: relative;
	text-align: center;
}

.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}

.signup-form h2:before {
	left: 0;
}

.signup-form h2:after {
	right: 0;
}

.signup-form .hint-text {
	color: #999;
	padding-bottom: 0;
	margin-bottom: 20px;
	text-align: center;
}

.signup-form form {
	color: #999;
	height: auto;
	border-radius: 60px;
	margin-bottom: 15px;
	background: white;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.signup-form .form-group {
	padding-bottom: 7px;
}

.signup-form input[type="checkbox"] {
	margin-top: 3px;
}

.signup-form .btn {
	font-size: 18px;
	font-weight: bold;
	min-width: 150px;
	outline: none !important;
}

.signup-form .row div:first-child {
	padding-right: 10px;
}

.signup-form .row div:last-child {
	padding-left: 10px;
}

.signup-form a {
	color: white;
	text-decoration: underline;
}

.signup-form a:hover {
	text-decoration: none;
}

.signup-form form a {
	color: #1DA1F2;
	text-decoration: none;
}

.signup-form form a:hover {
	text-decoration: underline;
}

.signup-form .col-xs-6:focus {
	outline: none;
	box-shadow: none;
	border: none;
}

.signup-form .col-xs-6 {
	padding-bottom: 10px;
	padding-top: 0;
}

.signup-form .col-xs-6 .form-control {
	position: relative;
	border: none;
	height: 40px;
	font-size: 16px;
	background: none;
	outline: none;
	border-radius: 0;
	width: 100%;
	text-align: left;
	border-bottom: 1px solid #CFD2CD;
}

.signup-form .form-control {
	padding-top: 0;
	border: none;
	height: 30px;
	font-size: 16px;
	background: none;
	outline: none;
	padding-bottom: 0px;
	width: 100%;
	border-radius: 0;
	border-bottom: 1px solid #CFD2CD;
}

.signup-form .form-group {
	padding-top: 3px;
}

#passwordHelpBlock {
	padding-left: 15px;
	padding-bottom: 0;
}
</style>

</head>
<body>
	<div class="signup-form">
		<form<%--  onSubmit="return checkPassword(this)"
			action="${pageContext.request.contextPath}/RegisterController?action=LOGIN"
			method="post" --%>>
			<h2 style="color: #1A1414">Register</h2>
			<p style="color: #3D2F2F" class="hint-text">Create an account to
				be a member!</p>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-6">
						<input type="text" class="form-control" name="txtfname"
							placeholder="First Name" required="required">
					</div>
					<div class="col-xs-6">
						<input type="text" class="form-control" name="txtlname"
							placeholder="Last Name" required="required">
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="email" class="form-control" name="txtemail"
					placeholder="Email" required="required">
			</div>
			<div class="form-group">
				<input type="password" id="password" class="form-control"
					name="txtpw" placeholder="Password" required="required" /> <small
					id="passwordHelpBlock" class="form-text text-muted"
					aria-describedby="passwordHelpBlock"> Your password must be
					8-20 characters long. </small>
			</div>
			<div class="form-group">
				<input type="password" id="password" class="form-control"
					name="txtconfirmpw" placeholder="Confirm Password"
					required="required" /> <span id='message'></span>
			</div>
			<div class="form-group">
				<label style="color: #3D2F2F" class="checkbox-inline"><input
					type="checkbox" required="required"> I accept the <a
					href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Register</button>
			</div>
		</form>
		<div class="text-center">
			Already have an account? <a href="employee_login.jsp">Sign in</a>
		</div>
	</div>

</body>
</html>