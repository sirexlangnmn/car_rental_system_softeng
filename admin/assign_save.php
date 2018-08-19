<?php 

include('../includes/dbcon.php');
	
	$id = $_POST['id'];
	$team = $_POST['member_name'];


		mysqli_query($con,"UPDATE reservation SET member_id='$member_name' where rid='$id'")or die(mysqli_error($con)); 

			echo "<script type='text/javascript'>alert('Successfully assigned a Driver!');</script>";
			echo "<script>document.location='reservation.php'</script>";   
	
	
?>