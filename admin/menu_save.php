<?php 

include('../includes/dbcon.php');
	
		$menu= $_POST['menu'];
        $body=$_POST['body'];
        $subcat=$_POST['subcat'];
        $desc=$_POST['desc'];
        $plate=$_POST['plate'];
        $manu=$_POST['manu'];
        $model=$_POST['model'];
        $member=$_POST['member'];
        $price=$_POST['price'];
        $remarks=$_POST['remarks'];

	$result = mysqli_query($con,"SELECT menu_name FROM menu where menu_name='$menu'"); 
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
				mysqli_query($con,"INSERT INTO menu(
					menu_name,
					body_no,
					subcat_name,
					menu_desc,
					plate_no,
					manufacturer,
					car_model,
					member_name,
					menu_price,
					menu_pic,
					status,
					remarks) 
					VALUES('$menu','$body','$subcat','$desc','$plate','$manu','$model','$member',
					'$price','$name','$status','$remarks')")or die(mysqli_error());  
					echo "<script type='text/javascript'>alert('Successfully added new vehicle!');</script>";
					echo "<script>document.location='menu.php'</script>";   
		}
		else
		{
					echo "<script type='text/javascript'>alert('Vehicle record already added!');</script>";
					echo "<script>document.location='menu.php'</script>";  
		}	
?>

