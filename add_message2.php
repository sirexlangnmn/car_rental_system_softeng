<?php
include 'includes/dbcon.php';
	$fullname = $_POST['fullname'];
	$email = $_POST['email'];
	$r_code = $_POST['r_code'];
	$t_code = $_POST['t_code'];
	$message = $_POST['message'];
	$date = date("Y-m-d H:i:s");
	
	
		mysqli_query($con,"INSERT INTO message_transaction(fullname,email,r_code,transaction_code,message,date) 
			VALUES('$fullname','$email','$r_code','$t_code','$message','$date')")or die(mysqli_error());  
			echo "<script type='text/javascript'>alert('Successfully Sent Message. We will email and SMS notify you for our response thank you!');</script>";
			echo "<script>document.location='reservation.php'</script>";  	
	
?>