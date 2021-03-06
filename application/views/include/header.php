<!DOCTYPE html>
<html lang="en">
<head>
      <meta http-equiv="content-type" content="text/html;charset=UTF-8" />      
      <title>VK Bike Service</title>
	  <meta name="description" content="">
      <!-- =-=-=-=-=-=-= Favicons Icon =-=-=-=-=-=-= -->
      <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
      <!-- =-=-=-=-=-=-= Mobile Specific =-=-=-=-=-=-= -->
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <!-- =-=-=-=-=-=-= Bootstrap CSS Style =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/bootstrap.css">
      <!-- =-=-=-=-=-=-= Template CSS Style =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/style.css">
      <!-- =-=-=-=-=-=-= Font Awesome =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/font-awesome.css" type="text/css">
      <!-- =-=-=-=-=-=-= Flat Icon =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>css/flaticon.css" rel="stylesheet">
      <!-- =-=-=-=-=-=-= Et Line Fonts =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/et-line-fonts.css" type="text/css">
      <!-- =-=-=-=-=-=-= Menu Drop Down =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/carspot-menu.css" type="text/css">
      <!-- =-=-=-=-=-=-= Animation =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/animate.min.css" type="text/css">
      <!-- =-=-=-=-=-=-= Select Options =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>css/select2.min.css" rel="stylesheet" />
      <!-- =-=-=-=-=-=-= noUiSlider =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>css/nouislider.min.css" rel="stylesheet">
      <!-- =-=-=-=-=-=-= Listing Slider =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>css/slider.css" rel="stylesheet">
      <!-- =-=-=-=-=-=-= Owl carousel =-=-=-=-=-=-= -->
      <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/owl.carousel.css">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/owl.theme.css">
      <!-- =-=-=-=-=-=-= Check boxes =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>skins/minimal/minimal.css" rel="stylesheet">
      <!-- =-=-=-=-=-=-= PrettyPhoto =-=-=-=-=-=-= -->
      <link rel="stylesheet" href="<?php echo base_url();?>css/jquery.fancybox.min.css" type="text/css" media="screen"/>
      <!-- =-=-=-=-=-=-= Responsive Media =-=-=-=-=-=-= -->
      <link href="<?php echo base_url();?>css/responsive-media.css" rel="stylesheet">
      <!-- =-=-=-=-=-=-= Template Color =-=-=-=-=-=-= -->
      <link rel="stylesheet" id="color" href="<?php echo base_url();?>css/colors/defualt.css">
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CSource+Sans+Pro:400,400i,600" rel="stylesheet">
      <!-- JavaScripts -->
      
      <script src="js/modernizr.js"></script>
       <script>
$(document).ready(function(){
    $("#select-bike").click(function(){
        $("#tab-bike").toggle();
    });
});
</script>
   </head>
   <body>
      <!-- =-=-=-=-=-=-= Preloader =-=-=-=-=-=-= -->
      <div class="preloader"></div>
      
 <div class="colored-header">
	 <!-- Navigation Menu -->
	 <div class="clearfix"></div>
	 <!-- menu start -->
	 <nav id="menu-1" class="mega-menu">
		<!-- menu list items container -->
		<section class="menu-list-items">
		   <div class="container">
			  <div class="row">
				 <div class="col-lg-12 col-md-12">
					<!-- menu logo -->
					<ul class="menu-logo">
					   <li>
						  <a href="index.php"><img src="<?php echo base_url();?>images/logo.png" alt="logo"> </a>
					   </li>
					</ul>
					<!-- menu links -->
					<ul class="menu-links">
					   <!-- active class -->
					   <li><a href="<?php echo base_url('/');?>">Home</a></li>
					   <li><a href="javascript:void(0)">Sponge Bucket</a></li>
					   
					   <li>
						  <a href="javascript:void(0)">User <i class="fa fa-angle-down fa-indicator"></i></a>
						  <ul class="drop-down-multilevel">
							 <li><a href="<?php echo base_url('login');?>">Login</a></li>
							 <li><a href="<?php echo base_url('registration');?>">Register</a></li>
							 <li><a href="<?php echo base_url('service-request');?>">Request Service</a></li>
						  </ul>
					   </li>
					   
					   <li><a href="javascript:void(0)">Ownership Transfer</a></li>
					   
						<li>
						  <a href="javascript:void(0)">Plans <i class="fa fa-angle-down fa-indicator"></i></a>
						  <ul class="drop-down-multilevel">
							 <li><a href="<?php echo base_url('subscription-plan');?>">Subscription Plan</a></li>
							 <li><a href="<?php echo base_url('pricing');?>">Pricing</a></li>
						  </ul>
					   </li>
					   
					   <li><a href="javascript:void(0)">Need Help?</a></li>
					   <li><a href="<?php echo base_url('term-condition');?>">Term Condition</a></li>
					</ul>
					<ul class="menu-search-bar">
					   <li>
						  <a>
							 <div class="contact-in-header clearfix">
								<i class="flaticon-customer-service"></i>
								<span>
								Call Us Now
								<br>
								<strong>111 222 333 444</strong>
								</span>
							 </div>
						  </a>
					   </li>
					</ul>
				 </div>
			  </div>
		   </div>
		</section>
	 </nav>
	 <!-- menu end -->
  </div>