<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<link rel="icon" href="images/gaa.ico" type="image/x-icon">

    <title>GAA Player Training and Nutrition - Nutrition</title>

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
                <a class="navbar-brand" href="index.jsp" ><img src="images/gaa.png" width="35" style="float:left; padding-right:10px;"></img> Player Training and Nutrition</a>
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
                        <a href="#" class="btn btn-success">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            
            <hr>
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="panel panel-default">
                
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-bicycle"></i> Nutrition <span class="label label-primary">New</span></h4>
                    </div>
                    <div class="panel-body">
                    	<a href="nutrition.jsp">
                    	<center><img src="http://zgirls.org/wp-content/uploads/2015/06/Nutrition-for-Athletes-Z-Girls-1.png" width="90%"/></center>
                    	</a>
                       	<hr>
                       	<form name="training" id="nutritionForm" action="../NutritionServlet" method="post" novalidate >	
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span></span>
							  	<input type="text" name="username" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
							</div>
							<br>
		                    <div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span></span>
							  	<input type="text" name="calories" class="form-control" placeholder="Calory Intake" aria-describedby="basic-addon1">
							</div>
							<br>
		                    <div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-time"></span></span>
							  	<input type="text" name="supplementation" class="form-control" placeholder="Supplementation" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-eye-open"></span></span>
							  	<input type="text" name="breakfast" class="form-control" placeholder="Breakfast" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="lunch" class="form-control" placeholder="Lunch" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="dinner" class="form-control" placeholder="Dinner" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="snack" class="form-control" placeholder="Snacks" aria-describedby="basic-addon1">
							</div>
							<br>
		                    <div id="success"></div>
		                    <hr>
		                    <!-- For success/fail messages -->
		                    <button type="submit" class="btn btn-success">Submit Nutrition Log</button>
		                </form>
                    </div>
                </div>
            </div>
            
            <div class="col-md-2"></div>
        </div>
        <!-- /.row -->

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
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
