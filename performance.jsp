<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Performance</title>
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
                        <a href="contact.jsp">Contact</a>
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

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Performance 
                    <small>Overview</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Nutrition</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-6">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive" src="https://yangsaisi.files.wordpress.com/2014/08/nutrition.jpg" alt="">
                            
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="http://cdn3.bigcommerce.com/s-ea2phhxz/products/108/images/374/athletes_stack_ic_red_protein_bcaas_1__41879.1425507569.1280.1280.jpg?c=2" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="https://upload.wikimedia.org/wikipedia/commons/c/c2/Protein_shake.jpg" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>

            <div class="col-md-6">
                <h3>Performance Monitoring</h3>
                <ul>
                    <li>Monitoring althetes performance</li>
                    <li>Logged Calorie Intake</li>
                    <li>Player/Manager reports</li>
                </ul>
                <p>
	                The player's performance through training and their progress in the gym 
	                will be recorded and reported at the end of every session. 
	                The player's own view of his/her performance and their manager's view 
	                (where applicable) will be logged.
	                <br>
	                <br>
	                Nowadays, the equipment that athletes use can monitor thier efforts in training,
	                this equipment can show where the certain individual is strongest and weakest. 
	                For instance a player that is'nt fir enough would try to improve the distance ran 
	                in a training/match session. Heart rate monitors also help to track the effort you
	                put into your sessions, and give the player good feedback on where they are.
                </p>
                
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header"></h3>
            </div>

            <div class="col-sm-4 col-xs-4">
                <a href="training.jsp">
                    <img class="img-responsive img-hover img-related" src="images/Galway_boys_warm_up2014.png" alt="">
                </a>
            </div>

            <div class="col-sm-4 col-xs-4">
                <a href="performance.jsp">
                    <img class="img-responsive img-hover img-related" src="images/SINIannounceDartfishPartnership2.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-4 col-xs-4">
                <a href="nutrition.jsp">
                    <img class="img-responsive img-hover img-related" src="images/Avonmore.png" alt="">
                </a>
            </div>


        </div>
        <!-- /.row -->

        <hr>
    <footer>
            <div class="row">
                <div class="col-lg-4"  style="text-align:left;">
                	<a href="home.jsp"> Home |</a>
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
        
        <hr>
	<!-- Footer -->
        

    
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
