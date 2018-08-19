<?php 
session_start();
include('includes/dbcon.php');
	
	$id = $_SESSION['id'];
	$mode = $_POST['mode'];

		mysqli_query($con,"UPDATE reservation SET modeofpayment='$mode',r_status='pending' where rid='$id'")or die(mysqli_error($con)); 

$query = mysqli_query($con, "SELECT * FROM reservation natural join menu WHERE rid='$id'");
      $row=mysqli_fetch_array($query);
        $rcode=$row['r_code'];
        $first=$row['r_first'];
        $last=$row['r_last'];
        $contact=$row['r_contact'];
        $address=$row['r_address'];
        $email=$row['r_email'];
        $date=$row['r_date'];
        $venue=$row['r_venue'];
        $balance=$row['balance'];
        $payable=$row['payable'];
        $ocassion=$row['r_ocassion'];
        $status=$row['r_status'];
        $motif=$row['r_motif'];
        $time=$row['r_time'];
        $time=$row['r_time'];
        $type=$row['r_type'];

    ini_set( 'display_errors', 1 );
    
    error_reporting( E_ALL );
    
    $from = "potolin.federex@gmail.com";
    
    $to = $email;
    
    $subject = "Reservation Details";
    
    $message = "Dear $first $last. Below are your reservation details to UrvanZone Car Rental<br>
    	Reservation Code: $rcode
    	Pick Up Date: $date
    	Pick Up Time: $time
    	Purpose of Rent: $venue
    	Motif: $motif
    	Destination: $ocassion
    	Total Payable: $payable
    	Package: $menu

        For Banking Transaction:
             Present in any BDO branch the copy of receipt and the reservation code and pay in this bank account 1234-aBcDeFg-098765

        For Money Transfer:
            Smart Padala: 1212-3434-5656-7878
            Bayad Center: 1234-aBcDeFg-098765
            Cebuana: 1234-aBcDeFg-098765
            Palawan: 1234-aBcDeFg-098765
    	
    ";
    
    $headers = "From:" . $from;
    
    mail($to,$subject,$message, $headers);
    
    echo "<script>
		alert('Check Your Email Inbox for the details');		
	</script>";

			
			echo "<script>document.location='summary.php'</script>";   
	
?>