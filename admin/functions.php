<?php
function mysqlexec($sql){
	$host="localhost"; // Host name
	$username="root"; // Mysql username
	$password=""; // Mysql password
	$db_name="matrimony"; // Database name

// Connect to server and select databse.
	$conn=mysqli_connect("$host", "$username", "$password")or die("cannot connect");

	mysqli_select_db($conn,"$db_name")or die("cannot select DB");

	if($result = mysqli_query($conn, $sql)){
		return $result;
	}
	else{
		echo mysqli_error($conn);
	}


}
function searchid(){
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$profid=$_POST['profid'];
		$sql="SELECT * FROM customer WHERE id=$profid";
		$result = mysqlexec($sql);
    	return $result;
	}
}

function search(){
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $agemin=$_POST['agemin'];
    $agemax=$_POST['agemax'];
    $maritalstatus=$_POST['maritalstatus'];
   
   
    $religion=$_POST['religion'];
 
    $sex = $_POST['sex'];

    $sql="SELECT * FROM customer WHERE 
    age>='$agemin'
    AND age<='$agemax'
    -- AND maritalstatus = '$maritalstatus'
   
    
    -- AND religion = '$religion'
    
    ";

    $result = mysqlexec($sql);
    return $result;

  }
}
function writepartnerprefs($id){
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$agemin=$_POST['agemin'];
		$agemax=$_POST['agemax'];
		$maritalstatus=$_POST['maritalstatus'];
	
		$height=$_POST['height'];
	
		$religion=$_POST['religion'];
	
		$mothertounge=$_POST['mothertounge'];
		$education=$_POST['education'];
		$occupation=$_POST['occupation'];
		$country=$_POST['country'];
		$descr=$_POST['descr'];

		$sql = "UPDATE
				   partnerprefs 
				SET
				   agemin = '$agemin',
				   agemax='$agemax',
				   maritalstatus = '$maritalstatus',
				   
				   height = '$height',
				  
				   religion='$religion',
				   
				   mothertounge = '$mothertounge',
				   education='$education',
				   descr = '$descr',
				   occupation = '$occupation',
				   country = '$country' 
				WHERE
				   custId = '$id'";

		$result = mysqlexec($sql);
		if ($result) {
			echo "<script>alert(\"Successfully updated Partner Preference\")</script>";
			echo "<script> window.location=\"user_index.php?id=$id\"</script>";

		}
		else{
			echo "Error";
		}

	}
}


function register(){
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$uname=$_POST['name'];
	$pass=$_POST['pass'];
	$email=$_POST['email'];
	$day=$_POST['day'];
	$month=$_POST['month'];
	$year=$_POST['year'];
		$day=$_POST['day'];
		$month=$_POST['month'];
		$year=$_POST['year'];
	$dob=$year ."-" . $month . "-" .$day ;
	$gender=$_POST['gender'];
	require_once("includes/dbconn.php");

	$sql = "INSERT 
			INTO
			   users
			   ( profilestat, username, password, email, dateofbirth, gender, userlevel) 
			VALUES
			   (0, '$uname', '$pass', '$email', '$dob', '$gender', 0)";

	if (mysqli_query($conn,$sql)) {
	  echo "<script>alert(\"Registred Successfully\")</script>";
	  echo "<script> window.location=\"login.php\"</script>";
	
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
}

function isloggedin(){
	if(!isset($_SESSION['id'])){
	 	return false;
	}
	else{
		return true;
	}

}


function processprofile_form($id){
   
	$fname=$_POST['fname'];

	$sex=$_POST['sex'];

	
		$day=$_POST['day'];
		$month=$_POST['month'];
		$year=$_POST['year'];
	$dob=$year ."-" . $month . "-" .$day ;
	
	$religion=$_POST['religion'];

	
	$country = $_POST['country'];
	$state=$_POST['state'];
	$district=$_POST['district'];
	$age=$_POST['age'];
	$maritalstatus=$_POST['maritalstatus'];

	$education=$_POST['education'];
	

	$mothertounge=$_POST['mothertounge'];

	$weight=$_POST['weight'];
	$height=$_POST['height'];
	$occupation=$_POST['occupation'];
	$occupationdescr=$_POST['occupationdescr'];

	$income=$_POST['income'];
	$bros=$_POST['bros'];
	$sis=$_POST['sis'];
	$aboutme=$_POST['aboutme'];
	


	require_once("includes/dbconn.php");
	$sql="SELECT cust_id FROM customer WHERE cust_id=$id";
	$result=mysqlexec($sql);

if(mysqli_num_rows($result)>=1){
	//there is already a profile in this table for loggedin customer
	//update the data
	$sql="UPDATE
   			customer 
		SET
		   
		   age = '$age',
		   sex = '$sex',
		   religion = '$religion',
		 
		   district = '$district',
		   state = '$state',
		   country = '$country',
		   maritalstatus = '$maritalstatus',
		   
		   education  = '$education',
		  
		   firstname = '$fname',
		  
		
		   mothertounge = '$mothertounge',
		  
		   weight = '$weight',
		 
		   dateofbirth = '$dob', 
		   occupation = '$occupation', 
		   occupation_descr = '$occupationdescr', 
		   annual_income = '$income', 
		  
		   no_bro = '$bros', 
		   no_sis = '$sis', 
		   aboutme = '$aboutme'
		WHERE cust_id=$id; "
		   ;
   $result=mysqlexec($sql);
   if ($result) {
   	echo "<script>alert(\"Successfully Updated Profile\")</script>";
   	echo "<script> window.location=\"view_profile.php?id=$id\"</script>";
   }
}else{
	//Insert the data
	$sql = "INSERT 
				INTO
				   customer
				   (cust_id,  age, sex, religion,   district, state, country, maritalstatus,  education, firstname,   mothertounge,  weight, height,  dateofbirth, occupation, occupation_descr, annual_income, no_bro, no_sis, aboutme, profilecreationdate  ) 
				VALUES
				   ('$id', '$age', '$sex', '$religion',  '$district', '$state', '$country', '$maritalstatus',  '$education',  '$fname',   '$mothertounge',  '$weight', '$height',   '$dob', '$occupation', '$occupationdescr', '$income',  '$bros', '$sis', '$aboutme', CURDATE())
			";
	if (mysqli_query($conn,$sql)) {
		echo "<script>alert(\"Successfully Updated Profile\")</script>";
	  echo "<script> window.location=\"view_profile.php?id=$id\"</script>";
	  echo "Back to home";
	  echo "</a>";
	  //creating a slot for partner prefernce table for prefs details with cust id
	  $sql2="INSERT INTO partnerprefs (id, custId) VALUES('', '$id')";
	  mysqli_query($conn,$sql2);
	  $sql2="UPDATE TABLE users SET profilestat=1 WHERE id=$id";
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}

	 
}

//function for upload photo

function uploadphoto($id){
	$target = "profile/". $id ."/";
if (!file_exists($target)) {
    mkdir($target, 0777, true);
}
//specifying target for each file
$target1 = $target . basename( $_FILES['pic1']['name']);



// This gets all the other information from the form
$pic1=($_FILES['pic1']['name']);


$sql="SELECT id FROM photos WHERE cust_id = '$id'";
$result = mysqlexec($sql);

//code part to check weather a photo already exists
if(mysqli_num_rows($result) == 0) {
     // no photo for curret user, do stuff...
		$sql="INSERT INTO photos (id, cust_id, pic1) VALUES ('', '$id', '$pic1' )";
		// Writes the information to the database
		mysqlexec($sql);

		
} else {
    // There is a photo for customer so up
     $sql="UPDATE photos SET pic1 = '$pic1' WHERE cust_id=$id";
		// Writes the information to the database
	mysqlexec($sql);
}

// Writes the photo to the server
if(move_uploaded_file($_FILES['pic1']['tmp_name'], $target1))
{

// Tells you if its all ok
echo "The files has been uploaded, and your information has been added to the directory";
}
else {

// Gives and error if its not
echo "Sorry, there was a problem uploading your file.";
}

}//end uploadphoto function

?>