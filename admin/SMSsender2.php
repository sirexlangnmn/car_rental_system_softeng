<?php session_start();
if(empty($_SESSION['id'])):
header('Location:index.php');
endif;
?>

<?php
//##########################################################################
// ITEXMO SEND SMS API - PHP - CURL-LESS METHOD
// Visit www.itexmo.com/developers.php for more info about this API
//##########################################################################
function itexmo($number,$message,$apicode){
$url = 'https://www.itexmo.com/php_api/api.php';
$itexmo = array('1' => $number, '2' => $message, '3' => $apicode);
$param = array(
    'http' => array(
        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        'method'  => 'POST',
        'content' => http_build_query($itexmo),
    ),
);
$context  = stream_context_create($param);
return file_get_contents($url, false, $context);}
//##########################################################################

if($_POST){
  $number = $_POST['number'];
  $name = $_POST['name'];
  $msg = $_POST['msg'];
  $api = "TR-AARON680810_CC3KE";
  $text = $name.":".$msg;

if (!empty($_POST['name']) && ($_POST['name']) && ($_POST['msg'])){
$result = itexmo($number,$text,$api);
    if ($result == ""){
    echo "iTexMo: No response from server!!!
    Please check the METHOD used (CURL or CURL-LESS).
    Please CONTACT US for help. ";  
    }else if ($result == 0){
    echo "Message Sent!";
    }
    else{ 
    echo "Error Num ". $result . " was encountered!";
    }
  }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  
  
  <title>SMS Module - <?php include('../includes/title.php');?></title>
  <?php include('../includes/links.php');?>
	 <?php include('../includes/sidebar.php');?>
</head>

<body>

<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
    <div class="conjtainer">
      <!-- Menu button for smallar screens -->
      <div class="navbar-header">
      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
      <span>UrvanZone</span>
    
      
      <?php include('../includes/topbar.php');?>
    

    </div>
  </div>



<!-- Main content starts -->

<div class="content" style="margin-top:10px">

    <!-- Sidebar -->
    <?php include('../includes/sidebar.php');?>

    <!-- Sidebar ends -->

        <!-- Main bar -->
    <div class="mainbar">
      
      <!-- Page heading -->
      <div class="page-head">
        <h2 class="pull-left"><i class="fa fa-home"></i> Dashboard</h2>

        <!-- Breadcrumb -->
       <div class="bread-crumb pull-right">
          <a href="dashboard.php"><i class="fa fa-home"></i> Home</a> 
        </div>
        
    
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class = "col-md-9 col-lg-9">
					<div class="widget wgreen">
                
		                <div class="widget-head">
		                  <div class="pull-left">SMS</div>
		                  <div class="widget-icons pull-right">
		                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
		                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
		                  </div>
		                  <div class="clearfix"></div>
		                </div>

               			<div class="widget-content" style="height:350px">
                  			<div class="padd">
                  		
										<!-- Widget title -->
	     
            <form method="POST" action="SMSsender2.php">
            <div class="form-group">
            <center>
              <label for="name">Client Name:</label>
              <input type="text" maxlength="35" class="form-control" id="name" placeholder="Your Client" name="name" align="center" required>
             </center>
              </div>
              
              <div class="form-group">
              <center>
              <label for="number">Client Mobile Number:</label>
              <input type="text" maxlength="15" class="form-control" id="number" placeholder="Number Here" name="number" align="center" required>
              </center>
              </div>
              
              <div class="form-group">
              <center>
              <label for="msg">Message Summary:</label>
              <textarea class="form-control rows="3" name="msg" placeholder="Summary of the Reservation" align="center" onkeyup="countChar(this)" required></textarea>
              </center>
              </div>
            <p class="text-right" id="charNum">100</p>
              <button type="submit" class="btn btn-success">Send</button>
            </form>		
  <br><br>
    </div>
    </div>
    </div>
	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   

			<script>
      function countChar(val){
        var len = val.value.length;
        if (len >=100){
          val.value = val.value.substring(0,100);
      }else{
        $('#charNum').text(100-len);
      }
    };
    </script>
    <br><br>
    </div>
    </div>
    </div>
										
										  </div>
										</div>
									  </div>
									</div>	<!--col-->

									
                   				</div><!--table-->
                  			</div><!--pad-->
                		</div><!--widget-content-->
                  		<div class="widget-foot">
                    	<!-- Footer goes here -->
                 		 </div>
              		</div><!--widget-->		
				</div><!--content-->		
				

    </div>

   <!-- Mainbar ends -->
   <div class="clearfix"></div>

</div>
<!-- Content ends -->

<!-- Footer starts -->
<?php include('../includes/footer.php');?>  

<!-- Footer ends -->

<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 
			
             
    
    
			
			</div>	
		</div>
	

<script>
         $(function () {
         //Initialize Select2 Elements
         $(".select2").select2();
         

     })
    </script>
</body>
</html>



