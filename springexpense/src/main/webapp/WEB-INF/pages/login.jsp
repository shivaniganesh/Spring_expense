<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Login</title>
<style>
        body {
            color: #fff;
            background-image: linear-gradient(to bottom right, #1DA1F2, #CEFF1A);
            font-family: 'Roboto', sans-serif;
        }

        .form-control{
            height: 40px;

            color: #1A1414;
            outline: none;
        }

        .form-control, .btn{        
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
        .signup-form{
            width: 400px;
            margin: 0 auto;
            padding: 30px 1px;
            height: 100vh;

        }
        .signup-form h2{
            color: #636363;

            margin: 0 0 10px;
            position: relative;
            text-align: center;
        }
        .signup-form h2:before, .signup-form h2:after{
            content: "";
            height: 2px;
            width: 30%;
            background: #d4d4d4;
            position: absolute;
            top: 50%;
            z-index: 2;
        }	
        .signup-form h2:before{
            left: 0;
        }
        .signup-form h2:after{
            right: 0;
        }
        .signup-form .hint-text{
            color: #999;
            padding-bottom: 13px;

            margin-bottom: 20px;
            text-align: center;
        }
        .signup-form form{
            color: #999;
            border-radius: 60px;
            margin-bottom: 15px;
            background: white;
            box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 40px;
            height: auto;
            margin-top: 90px;

        }
        .signup-form .form-group{
            margin-bottom: 20px;
        }
        .signup-form input[type="checkbox"]{
            margin-top: 3px;
        }
        .signup-form .btn{        
            font-size: 18px;
            font-weight: bold;		
            min-width: 150px;
            outline: none !important;
        }
 	
        .signup-form a{
            color: white;
            text-decoration: underline;
        }
        .signup-form a:hover{
            text-decoration: none;
        }
        .signup-form form a{
            color: #1DA1F2;
            text-decoration: none;
        }	
        .signup-form form a:hover{
            text-decoration: underline;
        }



        .signup-form .col-xs-6 .form-control{
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
        .signup-form .form-control{

        	padding-top: 0;
        	border: none;
        	height: 40px;
        	font-size: 16px;
        	background: none;
        	outline: none;
        	padding-bottom: 0px;
        	width: 100%;
        	border-radius: 0;
        	border-bottom: 1px solid #CFD2CD;

        }
        #passwordHelpBlock {
			padding-left: 13px;
			padding-bottom: 0;
		}

    </style>
</head>
<body>
 <div class="signup-form">
        <form><!-- add action and method -->
            <h2 style="color: #1A1414">Login</h2>

            <div class="form-group">
                <input type="email" class="form-control" name="txtemail" placeholder="Email" required="required">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="txtpw" placeholder="Password" required="required">
                <small
					id="passwordHelpBlock" class="form-text text-danger"
					aria-describedby="passwordHelpBlock">  ${NOTIFICATION}</small>
            </div>
   
            <div class="form-group">
                <label style="color: #1A1414" class="checkbox-inline"><input type="checkbox" required="required"> Stay signed in?</label>
            </div>
            <div class="form-group">
                <button type="submit" name="action" value="LOGIN" class="btn btn-primary">Login</button>
            </div>
        </form>
        <div class="text-center">Forgot password? <a href="#">Reset password</a></div>
    </div>
</body>
</html>