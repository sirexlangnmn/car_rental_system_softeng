<?php

    ini_set( 'display_errors', 1 );
    
    error_reporting( E_ALL );
    
    $from = "potolin.federx@gmail.com";
    
    $to = "potolin.federex@gmail.com";
    
    $subject = "Checking PHP mail";
    
    $message = "This is just for testing. Not confident if it is working properly";
    
    $headers = "From: Federex A. Potolin" . $from;
    
    mail($to,$subject,$message, $headers);
    
    echo "<script>
		alert('Check Your Email Inbox for the details');		
	</script>";
	header('location:http://facebook.com/eannarex_88@yahoo.com');
?>
