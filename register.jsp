
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>
	<link rel="icon" href="images/gaa.ico" type="image/x-icon">

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
                        <a href="contact.html">Contact</a>
                    </li>
                    <li>
                        <a href="register.jsp" class="btn btn-primary">Sign Up/Login</a>
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
            <div class="col-lg-12">
                <h1 class="page-header">
                    Register
                </h1>
			</div>
			<div class="container">

	        <!-- Marketing Icons Section -->
	        
	        
	    </div>
			<div class="row">
            <div class="col-md-8" >
                <h3>Enter Details</h3>
                <form name="register" id="registerForm" method="post" action="../RegisterServlet" >
                	<br>
                	<div class="input-group">
					 	<span  class="input-group-addon" id="basic-addon1">@</span>
					  	<input type="text" name="username" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
					</div>
					<br>
					<div class="input-group">
					  	<input name="password" type="text" class="form-control" placeholder="Password" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">e.g John Doe</span>
					</div>
					<br>
                    <div class="input-group">
					  	<input name="name" type="text" class="form-control" placeholder="Full Name" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">e.g John Doe</span>
					</div>
					<br>
                    
                    <div class="input-group">
					  	<input name="email" type="text" class="form-control" placeholder="Email Address" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">@example.com</span>
					</div>
					<br>
					<div class="input-group">
					  	<input name="phone" type="text" class="form-control" placeholder="Phone" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">087 123 456 7</span>
					</div>
					<br>
					
					<div class="input-group">
					  	<input name="dob" type="text" class="form-control" placeholder="D.O.B" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">e.g 1-1-12</span>
					</div>
					<br>
					<div class="input-group">
					  	<input name="position" type="text" class="form-control" placeholder="Position" aria-describedby="basic-addon2">
					  	<span class="input-group-addon" id="basic-addon2">e.g Player/Manager</span>
					</div>
					<br>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-success">Register</button>
                </form>
            </div>
			<div class="col-md-4" style="float:right;">
                <div class="panel panel-default">
                
                    <div class="panel-heading">
                        <h4> Already Registered?</h4>
                    </div>
                    <div class="panel-body">
                    	<a href="login.jsp" class="btn btn-primary" style="width:100%;">Login</a>
                       	<hr>
                       	<p>Already a member? Click here to login.</p>
                        
                    </div>
                </div>
            
	        </div>
        </div>
        <!-- /.row -->
        
            <hr>
            
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
