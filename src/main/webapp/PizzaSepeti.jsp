<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="PizzaSepetibutton.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
  <%@page import ="java.util.ArrayList" 
%>
<%@page import ="hope.load" 
%>
</head>
<body>


<div class="background">
 
<div class="jumbotron">
  <div class="container text-center">
    <div class="head-text">Welcome to PizzaSepeti</div>      
    <div class="subhead-text">Order what you desire</div>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
                              
      </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="logout.jsp" onclick="return confirm('Are you sure you want to Logout?')"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
        <li><a href="cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      </ul>
    </div>
  </div>
</nav> 
<br><br>
<div class="container">
   <div class="panel panel-danger">
    <div class="panel-heading" id="zero">Pick your pizza: </div>
  </div>
</div>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Margherita</div>
        <div class="panel-body"><img src="images/margarita.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - mozzarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1000) %> tl</div>
       <a href="addToCart.jsp?p=1000"><button class="button" style="vertical-align:middle" id="1000" ><span>Add to cart </span></button></a>
       
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Four Cheese</div>
        <div class="panel-body"><img src="images/4cheese.jpg" class="img-responsive" style="height:175px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - mozzarella - gorgonzola - ricotta - Parmesan cheese</div>
        <div class="panel-footer"><%= hope.load.price(1001) %> tl</div>
        <a href="addToCart.jsp?p=1001"><button class="button" style="vertical-align:middle" id="1001" ><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Bbq Chicken</div>
        <div class="panel-body"><img src="images/bbqchicken.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">BBQ sauce - chicken - mozzarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1002) %> tl</div>
        <a href="addToCart.jsp?p=1002"><button class="button" style="vertical-align:middle" id="1002"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Tandoori Chicken</div>
        <div class="panel-body"><img src="images/TandooriChicken.jpg" class="img-responsive" style="height:175px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - tandoori chicken - peppers - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1003) %> tl</div>
        <a href="addToCart.jsp?p=1003"><button class="button" style="vertical-align:middle" id="1003"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Pepperoni</div>
        <div class="panel-body"><img src="images/pepperoni.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - pepperoni - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1004) %> tl</div>
        <a href="addToCart.jsp?p=1004"><button class="button" style="vertical-align:middle" id="1004"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Sucuk</div>
        <div class="panel-body"><img src="images/sucuksever.png" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - sucuk - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1005) %> tl</div>
        <a href="addToCart.jsp?p=1005"><button class="button" style="vertical-align:middle" id="1006"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Pastrami and Sucuk</div>
        <div class="panel-body"><img src="images/pastramiandsucuk.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - pastrami - sucuk - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1006) %> tl</div>
        <a href="addToCart.jsp?p=1006"><button class="button" style="vertical-align:middle" id="1007"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Vegi</div>
        <div class="panel-body"><img src="images/vegi.png" class="img-responsive" style="height:175px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - peppers - olives - mushrooms - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1007) %> tl</div>
        <a href="addToCart.jsp?p=1007"><button class="button" style="vertical-align:middle" id="1008"> <span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Doner pizza</div>
        <div class="panel-body"><img src="images/Donerpizza.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Pizza sauce - doner - mozarella cheese</div>
        <div class="panel-footer"><%= hope.load.price(1008) %> tl</div>
        <a href="addToCart.jsp?p=1008"><button class="button" style="vertical-align:middle" id="1009"> <span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br>
<div class="container">
   <div class="panel panel-danger">
    <div class="panel-heading" id="zero">Pick your dessert : </div>
  </div>
</div>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chocolate Souffle</div>
        <div class="panel-body"><img src="images/souffle.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(3000) %> tl</div>
        <a href="addToCart.jsp?p=3000"><button class="button" style="vertical-align:middle" id="3000"><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Nutella Pizza</div>
        <div class="panel-body"><img src="images/nutella.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(3001) %> tl</div>
        <a href="addToCart.jsp?p=3001"><button class="button" style="vertical-align:middle" id="3001"><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Tiramisu</div>
        <div class="panel-body"><img src="images/tiramisu.png" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(3002) %> tl</div>
        <a href="addToCart.jsp?p=3002"><button class="button" style="vertical-align:middle" id="3002"><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="container">
   <div class="panel panel-danger">
    <div class="panel-heading" id="zero">Pick your drinks : </div>
  </div>
</div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Pepsi</div>
        <div class="panel-body"><img src="images/pepsi.jpg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2000) %> tl</div>
        <a href="addToCart.jsp?p=2000"><button class="button" style="vertical-align:middle" id="2000"><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Fanta</div>
        <div class="panel-body"><img src="images/fanta.jpg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2001) %> tl</div>
        <a href="addToCart.jsp?p=2001"><button class="button" style="vertical-align:middle" id="2001"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Sprite</div>
        <div class="panel-body"><img src="images/sprite.jpeg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2002) %> tl</div>
        <a href="addToCart.jsp?p=2002"><button class="button" style="vertical-align:middle" id="2002"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Ice Tea Peach</div>
        <div class="panel-body"><img src="images/icetea.jpg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2003) %> tl</div>
        <a href="addToCart.jsp?p=2003"><button class="button" style="vertical-align:middle" id="2003"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Cappy peach</div>
        <div class="panel-body"><img src="images/peach2.jpg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2004) %> tl</div>
        <a href="addToCart.jsp?p=2004"><button class="button" style="vertical-align:middle" id=""><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Ayran</div>
        <div class="panel-body"><img src="images/ayran.jpg" class="img-responsive" style="height:295px; width:100%" alt="Image"></div>
        <div class="panel-footer"><%= hope.load.price(2005) %> tl</div>
        <a href="addToCart.jsp?p=2005"><button class="button" style="vertical-align:middle" id="103"><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Designed and Developed by Ibrahim Mnaimne and Ahmad Kerdieh</p>  
  
</footer>
</div>
</body>
</html>