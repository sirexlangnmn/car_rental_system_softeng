<?php
include('../includes/dbcon.php');

 if (isset($_POST['update']))
 { 
	$id = $_POST['id'];
	$menu = $_POST['menu'];
	$body = $_POST['body'];
	$subcat = $_POST['subcat'];
	$desc = $_POST['desc'];
	$plate = $_POST['plate'];
    $manu = $_POST['manu'];
    $model = $_POST['model'];
    $member = $_POST['member'];
	$price = $_POST['price'];
	$status = $_POST['status'];	
	$remarks = $_POST['remarks'];

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
		 mysqli_query($con,"UPDATE menu SET menu_name='$menu',body_no='$body',subcat_name='$subcat',menu_desc='$desc',plate_no='$plate',manufacturer='$manu',car_model='$model',member_name='$member',menu_price='$price',status='$status',
	 	menu_pic='$name',remarks='$remarks' where menu_id='$id'")
		 or die(mysqli_error($con)); 

		echo "<script type='text/javascript'>alert('Successfully updated vehicle details!');</script>";
		echo "<script>document.location='menu.php'</script>";
	
} 

