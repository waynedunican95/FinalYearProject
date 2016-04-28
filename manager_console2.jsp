<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<link rel="icon" href="images/gaa.ico" type="image/x-icon">

    <title>GAA Player Training and Nutrition</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/modern-business.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp" ><img src="images/gaa.png" width="35" style="float:left; padding-right:10px;"></img> Player Training and Nutrition</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav nav-pills navbar-right">
                    <li>
                        <a href="home.jsp">Home</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li>
                        <a href="register.jsp" class="btn btn-success">Logout</a>
                    </li>
                     <li>
                    	<font style="align:center; color:blue; weight:bold;"> Welcome! <br> ${sessionScope.username}</font>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
		<!-- Service Panels -->
        <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Manager Console</h2>
            </div>
			<div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-body">
                    <br>
						<form method="post"  action="SearchTrainingServlet">
						<center><img class="img-responsive img-hover img-related" src="images/Galway_boys_warm_up2014.png" width="80%" alt=""></center>
						<br>
						<div class="input-group">
							<input type="text" name="username" id="playerName" class="form-control" placeholder="Search Player By Username" aria-describedby="basic-addon2">
							<span class="input-group-addon" id="basic-addon2">e.g johndoe_123</span>
						</div>
						<br>
							<button type="submit" class="btn btn-success">Search Training</button>
						</form>
						
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-body">
                    	<br>
						<form method="post"  action="SearchNutritionServlet">
						<center><img class="img-responsive img-hover img-related" src="images/Avonmore.png" width="80%" alt=""></center>
						<br>
						<div class="input-group">
							<input type="text" name="username" id="playerName" class="form-control" placeholder="Search Player By Username" aria-describedby="basic-addon2">
							<span class="input-group-addon" id="basic-addon2">e.g johndoe_123</span>
						</div>
						<br>
							<button type="submit" class="btn btn-success">Search Nutrition</button>
						</form>
					</div>
				</div>
				
			</div>
			
			<div class="col-md-4">
				<div class="panel panel-default text-center">
					<div class="panel-body">
						<br>
						<form method="post"  action="SearchPerformanceServlet">
						<center><img class="img-responsive img-hover img-related" src="images/SINIannounceDartfishPartnership2.jpg" width="80%" alt=""></center>
						
						<br>
						<div class="input-group">
							<input type="text" name="username" id="playerName" class="form-control" placeholder="Search Player By Username" aria-describedby="basic-addon2">
							<span class="input-group-addon" id="basic-addon2">e.g johndoe_123</span>
						</div>
						<br>
							<button type="submit" class="btn btn-success">Search Performance</button>
						</form>
						
					</div>
				</div>
				
			</div>
			<div class="col-md-12">
				<div class="panel panel-default text-center">
					<div class="panel-body">
						<br>
						<form method="post"  action="OfferFeedbackServlet">
						<br>
						<div class="input-group">
							<input type="text" name="username" id="playerName" class="form-control" placeholder="Search Player By Username" aria-describedby="basic-addon2">
							<span class="input-group-addon" id="basic-addon2">e.g johndoe_123</span>
						</div>
						<div class="form-group form-group-lg">
							<br>
							<input type="text" name="feedback" id="feedback" class="form-control" placeholder="Offer Feedback" aria-describedby="basic-addon2">
						</div>
						<br>
							<button type="submit" class="btn btn-success">Offer Feedback</button>
						</form>
						
					</div>
				</div>
				
			</div>
                    
			</br>
            
            
        </div>
        

	<hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-4"  style="text-align:left;">
                	<a href="index.jsp"> Home |</a>
                    <a href="contact.jsp"> Contact Us |</a>
                    <a href="https://www.google.ie/maps/place/Athlone+Institute+of+Technology/@53.4189394,-7.905093,15z/data=!4m2!3m1!1s0x0:0x1f3a077e5c4fdffd"> Where are we? |</a>
                    <a href="meetTheTeam.jsp"> Meet the Team</a>
                </div>  
                <div class="col-lg-4"  style="text-align:center;">  
                	<img src="images/gaa.png" width="35"/>
                    <br>
                </div>
                <div class="col-lg-4" style="text-align:right;">
                	<a href="training.jsp"> Training |</a>
                    <a href="nutrition.jsp"> Nutrition |</a>
                    <a href="performance.jsp"> Peformance </a>
                </div>
            </div>
        </footer>

    </div>
    
    <script src="js/jquery.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
