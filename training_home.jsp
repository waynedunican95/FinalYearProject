<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<link rel="icon" href="images/gaa.ico" type="image/x-icon">

    <title>GAA Player Training and Nutrition - Training</title>

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
                        <a href="#" class="btn btn-success">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<!-- 	<!-- Header Carousel --> 
<!--     <header id="myCarousel" class="carousel slide"> -->
<!--         Indicators -->
<!--         <ol class="carousel-indicators"> -->
<!--             <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!--             <li data-target="#myCarousel" data-slide-to="1"></li> -->
<!--             <li data-target="#myCarousel" data-slide-to="2"></li> -->
<!--         </ol> -->

<!--         Wrapper for slides -->
<!--         <div class="carousel-inner"> -->
<!--             <div class="item active"> -->
<!--                 <div class="fill" style="background-image:url('http://s3.amazonaws.com/tg4-docs/tg4-redesign-2015/wp-content/uploads/2015/07/GAA_Peil2.jpg');"></div> -->
<!--                 <div class="carousel-caption"> -->
<!--                     <h2 >Player Management</h2> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="item"> -->
<!--                 <div class="fill" style="background-image:url('http://queens.gaa.ie/wp-content/gallery/mens-football-3/yb4i0102gaa.jpg');"></div> -->
<!--                 <div class="carousel-caption"> -->
<!--                     <h2 >Monitor Training</h2> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="item"> -->
<!--                 <div class="fill" style="background-image:url('http://www.megsandsoph.com/wp-content/uploads/2014/08/Website-Sliders-v2.jpg');"></div> -->
<!--                 <div class="carousel-caption"> -->
<!--                     <h2>Nutritional Food Plans</h2> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->

<!--         Controls -->
<!--         <a class="left carousel-control" href="#myCarousel" data-slide="prev"> -->
<!--             <span class="icon-prev"></span> -->
<!--         </a> -->
<!--         <a class="right carousel-control" href="#myCarousel" data-slide="next"> -->
<!--             <span class="icon-next"></span> -->
<!--         </a> -->
<!--     </header> -->
	
    
    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            
            <hr>
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="panel panel-default">
                
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-bicycle"></i> Training <span class="label label-primary">New</span></h4>
                    </div>
                    <div class="panel-body">
                    	<center><img src="http://www.irishtimes.com/polopoly_fs/1.2374693.1443718184!/image/image.jpg_gen/derivatives/box_620_330/image.jpg" width="90%"/></center>
                    	<a href="training.jsp"></a>
                       	<hr>
                       	<form name="training" id="trainingForm" method="post" action="../TrainingServlet">	
							<br>
		                    <div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span></span>
							  	<input type="text" name="username"class="form-control" placeholder="Username" aria-describedby="basic-addon1">
							</div>
							<br>
		                    <div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-time"></span></span>
							  	<input type="text" name="date" class="form-control" placeholder="Date" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-eye-open"></span></span>
							  	<input type="text" name="team" class="form-control" placeholder="Team" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="duration" class="form-control" placeholder="Duration" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="focus" class="form-control" placeholder="Main Focus" aria-describedby="basic-addon1">
							</div>
							<br>
							<div class="input-group">
							 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-cloud"></span></span>
							  	<input type="text" name="thoughts" class="form-control" placeholder="Thoughts?" aria-describedby="basic-addon1">
							</div>
							<br>
		                    <div id="success"></div>
		                    <hr>
		                    <!-- For success/fail messages -->
		                    <button type="submit" class="btn btn-success">Submit Training Log</button>
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
