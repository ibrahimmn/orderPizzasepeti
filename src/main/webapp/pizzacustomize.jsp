<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Customize your pizza</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="PizzaSepetibutton.css">   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .head-text {
    color: black;
    font-family: Lobster;
    font-size: 100px;
  }
  .subhead-text{
    color: rgb(67, 202, 232);
    font-family: Lobster;
    font-size: 70px;}
  
    .navbar {
     position: fixed;
     top: 0px;
     z-index:10;
     
    }
    
     .jumbotron {
      margin-bottom: 0;
    }
   
    
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    #zero{
    height:80px;
     text-align: center;
     font-size: 40px;
    }
    .background{
    background: url('images/pizzalogin.jpg');
    
    }

  </style>
</head>
<body>

<div class="background">

<div class="jumbotron">
  <div class="container text-center">
    <div class="head-text">PizzaSepeti</div>      
    <div class="subhead-text">Customize your order</div>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                     
      </button>
    
    </div>
    
     <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="PizzaSepeti.jsp"><button class="btn btn-warning"><i class="fa fa-angle-left"> Back to home</i></button></a></li>
       
      </ul> 
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="logout.jsp" onclick="return confirm('Are you sure you want to Logout?')"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
        <li><a href="cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      </ul>
    </div>
    </div>
  </div>
</nav> 
<br><br>

    <div class="container">
   <div class="panel panel-danger">
    <div class="panel-heading" id="zero">Customize your pizza as you want : </div>
  </div>
</div>
<center>
<form action="addtocart.java">

<label style=" text-decoration: underline;color:white; font-size:40px" for="quantity"> Quantity :</label><br>
 
  <input type="number" id="quantity"  name="quantity" min="1" value="1" step="1"><br>
  
   <label style=" text-decoration: underline;color:white; font-size:40px" for="size"> Size :</label><br>
  <select style="width:30%; height:40px" name="size" id="size">
  <option value="small">Small</option>
    <option value="medium">Medium</option>
    <option value="large">Large</option>
   
  </select>
 <br>
           
  <label style=" text-decoration: underline;color:white; font-size:40px" for="crust"> Crust :</label><br>
  <select style="width:30%; height:40px" name="crust" id="crust">
  <option value="classic">Classic</option>
    <option value="deeppan">Deep Pan</option>
    <option value="thinNcrispy">Thin and Crispy</option>
    <option value="cheesy">Cheesy Crust</option>
  </select>
  
  <h2 style=" text-decoration: underline;color:white; font-size:40px"> Choose dough thickness</h2>
<input style="width:33px;" type="checkbox" name="thickness" value="thick"> <span style="color:white;font-size:33px;" >Thick dough</span>
<input style="width:33px;" type="checkbox" name="thickness" value="classic"> <span style="color:white;font-size:33px;" >Classic dough</span><BR>
<input style="width:33px;" type="checkbox" name="thickness" value="thin"> <span style="color:white;font-size:33px;" >Thin dough</span><BR>
<h2 style=" text-decoration: underline;color:white; font-size:40px"> Add extra toppings :</h2>
<input style="width:33px;" type="checkbox" name="toppings" value="Pizzasauce"> <span style="color:white;font-size:33px;" >Pizza sauce</span>
<input style="width:33px;" type="checkbox" name="toppings" value="Cheese"> <span style="color:white;font-size:33px;" >Cheese</span><BR>
<input style="width:33px;" type="checkbox" name="toppings" value="Sucuk"> <span style="color:white;font-size:33px;" >Sucuk</span>
<input style="width:33px;" type="checkbox" name="toppings" value="Pastrami"> <span style="color:white;font-size:33px;" >Pastrami</span><BR>
<input style="width:33px;" type="checkbox" name="toppings" value="Chicken"> <span style="color:white;font-size:33px;" >Chicken</span>
<input style="width:33px;" type="checkbox" name="toppings" value="Pepperoni"> <span style="color:white;font-size:33px;" >Pepperoni</span><BR>

  <br><br><br>
  <input class="button" type="submit" value="Submit"><br><br>
</form>
</center>
<footer class="container-fluid text-center">
  <p>Designed and Developed by Ibrahim Mnaimne and Ahmad Kerdieh</p>  
  
</footer>
</div>
</body>
</html>