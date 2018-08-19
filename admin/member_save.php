<?php 

include('../includes/dbcon.php');
	
	$last = $_POST['last'];
	$first = $_POST['first'];
	$contact = $_POST['contact'];
	$address = $_POST['address'];
	
	$result = mysqli_query($con,"SELECT member_name FROM member where member_name='$last'"); 
        $count = mysqli_num_rows($result);

          if ($count==0)
          {

			$name = $_FILES["image"]["name"];
			if ($name=="")
			{
				$name="default.gif";
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
			mysqli_query($con,"INSERT INTO member(member_name,specialty,member_contact,member_address,member_pic,member_status) 
			VALUES('$last','$first','$contact','$address','$name','active')")or die(mysqli_error());  
			echo "<script type='text/javascript'>alert('Successfully added new member!');</script>";
			echo "<script>document.location='members.php'</script>";   
		}
		else
		{
			echo "<script type='text/javascript'>alert('Company Driver record already added!');</script>";
			echo "<script>document.location='members.php'</script>";   	
		}
	
?>