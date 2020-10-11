<?php require_once("../includes/dbconn.php");?>
<?php



$id=$_GET['id'];
$query=mysqli_query($conn,"delete from users where id='$id'");
header('location:delete_users.php');



?>
