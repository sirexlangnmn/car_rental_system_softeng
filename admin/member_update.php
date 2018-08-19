<?php
include('../includes/dbcon.php');

 if (isset($_POST['update']))
 { 
	$id = $_POST['id'];
	$last = $_POST['last'];
	$first = $_POST['first'];
	$contact = $_POST['contact'];
	$address = $_POST['address'];	
	$status = $_POST['status'];	
	 
	 $image = $_FILES["image"]["name"];
		 if ($image=="")
		 {
			$name=$_POST['image1']; 
		 }
		else
		{
			$name = $_FILES["image"]["name"];
			$type = $_FILES["image"]["type"];
			$size = $_FILES["image"]["size"];
			$temp = $_FILES["image"]["tmp_name"];
			$error = $_FILES["image"]["error"];
			
				if ($error > 0){
					die("Error uploading file! Code $error.");
					}
				else{
					if($size > 100000000000) //conditions for the file
					{
					die("Format is not allowed or file size is too big!");
					}
				else
					  {
					move_uploaded_file($temp, "../images/".$name);
					  }
					}
		}
 mysqli_query($con,"UPDATE member SET member_name='$last',specialty='$first',member_contact='$contact',member_address='$address',member_status='$status', member_pic='$name' where member_id='$id'")
	 or die(mysqli_error($con)); 

		echo "<script type='text/javascript'>alert('Successfully updated member details!');</script>";
		echo "<script>document.location='members.php'</script>";
	
} 

