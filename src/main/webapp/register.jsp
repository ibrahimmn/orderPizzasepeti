<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link href="index.css" type="text/css" rel="stylesheet"> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
<title>Register</title>
<style>
.container-fluid{
margin-top:-110px ;
}
</style>

</head>
	<body class="bg">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
	<form action="register" method="post" class="form-container">
			<h1 class="header"> Register for PizzaSepeti</h1>
			<div class="form-group">
				<label for="InputName">Full Name</label>
					<input name="name" class="form-control" id="InputName" placeholder="Name" required> 
			</div>
			<div class="form-group">
				<label for="InputAddress">Address</label>
					<input name="address" class="form-control" id="InputAddress" placeholder="Address" required> 
			</div>
  			<div class="form-group">
    			<label for="exampleInputEmail1">Email address</label>
    				<input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email" required>
  			</div>
  			<div class="form-group">
    			<label for="InputPassword">Password</label>
    			
    				<input type="password" pattern=".{6,}" required title="6 characters minimum" name="password" class="form-control" id="password" type="password" placeholder="Password" required>
    				
    			<label for="ConfirmInputPassword1">Confirm Password</label>
    				<input name="passconfirmation" class="form-control" id="passconfirmation" type="password" placeholder="Password" required> 	
  			</div>
  			 
  			<button type="submit" class="btn btn-success btn-block" onclick="index.html">Register</button>
			
	</form>
		</div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
</div>
</body>
</html>
