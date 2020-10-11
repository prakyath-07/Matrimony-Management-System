
<?php //include("includes/admin_header.php");?>
<head>
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>

<?php require_once("../includes/dbconn.php");?>
<?php //include_once("includes/navigation.php");?>
<body>
<?php include_once("admin_index.php");?>

<div class="span9">
					<div class="content">

	<div class="module">
							<div class="module-head">
								<h3>Manage Users</h3>
							</div>
							<div class="module-body table">



							
								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
									<thead>
										<tr>
											<th>User ID</th>
											<th> Name</th>
											<th>Email </th>
											<th>DOB</th>
											<th>Gender </th>
											<th>Action</th>
										
										</tr>
									</thead>
									<tbody>
                                    <?php $query=mysqli_query($conn,"select * from users");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>									
										<tr>
											<td align="center"><?php echo htmlentities($row['id']);?></td>
											<td align="center"><?php echo htmlentities($row['username']);?></td>
											<td align="center"><?php echo htmlentities($row['email']);?></td>
											<td align="center"> <?php echo htmlentities($row['dateofbirth']);?></td>
										
											<td align="center"><?php echo htmlentities($row['gender']);?></td>

<td align="center"><!-- <a href="javascript:void(0);" onClick="popUpWindow('http://localhost/cms/admin/userprofile.php?uid=<?php echo htmlentities($row['id']);?>');" title="View Details">
<button type="button" class="btn btn-primary">View Detials</button>
											</a> -->
<a href="view_profile.php?id=<?php echo htmlentities($row['id']);?>">
<button type="button" class="btn btn-primaryr">View Details</button></a>

										</td>
											
										<?php $cnt=$cnt+1; } ?>
										
								</table>
							</div>
						</div>						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->