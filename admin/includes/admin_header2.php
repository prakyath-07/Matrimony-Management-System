<!-- ============================  Navigation Start =========================== -->
<link href="css/navstyle.css" rel='stylesheet' type='text/css' />
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner navbar-inner_1">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
				  <a href="#" class="icon-home"></a>
				  <ul>
				  <?php 
				  if(isloggedin()){
				  	$id=$_SESSION['id'];
				  	echo "<li><a href=\"user_index.php?id=$id\">Home</a></li>";
				  	echo "<li><a href=\"logout.php\">Logout</a></li>";
				  }
				  else{
				  	echo "<li><a href=\"login.php\">Login</a></li>";
				  	echo "<li><a href=\"register.php\">Register</a></li>";
				  }

				  ?>
					
				  </ul>
				</li>
			   </ul>
             </nav>
           </div>
           <a class="brand" href="index.php"><img src="images/logo.png" alt="logo"></a>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
 
		 <!-- mobile display?? -->
		
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <!-- <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="index.php">Home</a></li>
		           
					<li><a href="#profiles">Profiles</a></li>
					<li><a href="#clients">Our Clients</a></li>
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="search.php">Regular Search</a></li>
		                <li><a href="search-id.php">Search By Profile ID</a></li>
		                <li><a href="faq.php">Faq</a></li>
		                
		              </ul>
		            </li>
		            <li class="last"><a href="#about">About</a></li>
		        </ul>
		     </div> -->	 <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
 
 <!-- mobile display?? -->

   <!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		<ul class="nav navbar-nav nav_1">
			<li><a href="admin_index.php">Home</a></li>
		   
			<li><a href="manage_users.php">View Users</a></li>
			<li><a href="#clients">Our Clients</a></li>
			
			<li class="last"><a href="#about">About</a></li>
			<li class="last"><a href="http://localhost/matrimony_my/index.php">Logout</a></li>
		</ul>
	 </div><!-- /.navbar-collapse -->
	</nav>
   </div> <!-- end pull-right -->
  <div class="clearfix"> </div>
</div> <!-- end container -->
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->