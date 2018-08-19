<?php 
session_start();
include('includes/dbcon.php');
	
	$id = $_SESSION['id'];
	$venue = $_POST['venue'];
	$date = $_POST['date'];
	$time = $_POST['time'];
	$motif = $_POST['motif'];
	$pax = $_POST['pax'];
	$type = $_POST['type'];
	$ocassion = $_POST['ocassion'];
	$date=date("Y-m-d",strtotime($date));
	$menu = $_POST['menu'];

	$query = mysqli_query($con, "SELECT * FROM `reservation` WHERE r_date='".$date."' AND r_status = 'Approved'");
			if(mysqli_num_rows($query) > 0)
			{

					echo "<script>alert ('Date is already reserved');
					window.history.back(); </script>";
			}
			else{
    // do something
			
			{
      $query=mysqli_query($con,"select * from menu where menu_id='$menu'")or die(mysqli_error($con));
   		  $row=mysqli_fetch_array($query);

   		  $price=$row['menu_price'];

   		  $payable=$price*$pax;
				
				
		mysqli_query($con,"UPDATE reservation SET payable='$payable',balance='$payable',r_venue='$venue',r_date='$date',r_time='$time',r_motif='$motif'
		,r_ocassion='$ocassion',r_type='$type',pax='$pax',price='$price' where rid='$id'")or die(mysqli_error($con)); 

			$_SESSION['id']=$id;

			
			echo "<script>document.location='payment.php'</script>";   
	}}
	
?>