<?php session_start();
if(empty($_SESSION['id'])):
header('Location:index.php');
endif;
?>
<?php include 'header.php';?>

<body>
<br />
<br />
<br />
<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "img/urvanZone/urvanZone.jpg"/>
					<h4 class = "center">UrvanZone Car Rental</h4>
				</div>										
				</div>

  <?php include 'navbar.php';?>
  <?php include 'menu-tab.php';?>
  
    <div class = "content">
      <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class = "col-md-9 col-lg-9">
          <div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left title">Reservation Summary</div>
                  <div class="widget-icons pull-right">
                    <button class="btn btn-primary hideme" onClick="window.print()"><i class="fa fa-print"></i></button>
                    <a href="finish.php" class="btn btn-danger hideme"><i class="fa fa-sign-out"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd" style="heighyt:850px">
                    <div class="alert alert-success">
                      <b>Reminder: Please print your reservation summary and take note of your reservation code for reservation inquiry.</b>
                    </div>

					
					<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "left user-icon">
						<img src = "img/urvanZone/urvanZone.jpg" height="200" weight="200" alt="Company Logo"/>
					</div>										
				</div>
					
                   <h3 style="text-align:center"><b>UrvanZone Car Rental</b></h3>
<h6 style="text-align:center"><b>Address:</b> J9 - 33 Evangelista Avenue Corner F. Marcelo Street Santolan, Pasig City</h6>
<h6 style="text-align:center">Contact us on:</h6>
<h6 style="text-align:center"><b>Globe / Viber:</b> 09178853375</h6>
<h6 style="text-align:center"><b>Sun:</b> 09228167106</h6>
<h6 style="text-align:center"><b>Smart:</b> 09184825656</h6>
<h6 style="text-align:center"><b>Landline:</b> 02-500-5940</h6>
<h6 style="text-align:center"><b>Email :</b> urvanzonerental@yahoo.com</h6>
<h6 style="text-align:center"><b>Facebook :</b> facebook.com/urvanzonerental</h6>
<hr>

<table style="width:100%">
<?php
include('includes/dbcon.php');
    $rcode=$_REQUEST['rcode'];
    $query=mysqli_query($con,"select * from reservation natural join menu where r_code='$rcode'")or die(mysqli_error($con));
      $row=mysqli_fetch_array($query);
        $rcode=$row['r_code'];
        $first=$row['r_first'];
        $last=$row['r_last'];
        $contact=$row['r_contact'];
        $address=$row['r_address'];
        $date=$row['r_date'];
        $venue=$row['r_venue'];
        $balance=$row['balance'];
        $payable=$row['payable'];
        $ocassion=$row['r_ocassion'];
        $member=$row['member_name'];
        $status=$row['r_status'];
        $motif=$row['r_motif'];
        $time=$row['r_time'];
        $time=$row['r_time'];
        $type=$row['r_type'];
		$mid=['$menu_id'];

?>                      
                                       
                      <tr>
                        <td><strong>RCode: </strong></td>
                        <td><?php echo $rcode;?></td>
                         <td><strong>Purpose of Renting:</strong></td>
                        <td><?php echo $venue;?></td>
                      </tr>
                      <tr>  
                        <td><strong> Client Name: </strong></td>
                        <td><?php echo $last." ,".$first;?></td>
						<td><strong>Suggested Car Color: </strong></td>
                        <td><?php echo $motif;?></td>
					 </tr>
                      <tr>
                        <td><strong>Contact #: </strong></td>
                        <td><?php echo $contact;?></td>
                       <td><strong>Destination: </strong></td>
                        <td><?php echo $ocassion;?></td>
                      </tr> 
                      <tr>
                        <td><strong>Address: </strong></td>
                        <td><?php echo $address;?></td>
						 <td><strong>Type: </strong></td>
                        <td><?php echo $type;?></td>
                      </tr>   
                      <tr>  
                      <td><strong>Payable: </strong></td>
                        <td>P <?php echo number_format($payable,2);?></td>
                        <td><strong>Duration: </strong></td>
                        <td><?php echo $row['pax'];?></td>
                      </tr>  
                      <tr>  
					   
						
                      </tr>  
                      <tr> 
					   <td><strong>Mode of Payment: </strong></td>
                        <td><?php echo $row['modeofpayment'];?></td>
						<td><strong>Pick Up Date: </strong></td>
                        <td><?php echo date("M d, Y",strtotime($date));?></td>
                      </tr>  

                      <tr>  
                        <td>Status:</td>
                        <th><?php echo $row['r_status'];?></th>
						<td><strong>Pick Up Time: </strong></td>
                        <td><?php echo date("h:i a",strtotime($time));?></td>                       
                   </tr>
				   <tr>
				   <td></td>
				   <th> </th>
				    <td><strong>Destination: </strong></td>
                        <td><?php echo $ocassion;?></td>
                   </tr>
                      
</table>
<br>
<div style="width:50%;float:left">
  <h4><?php echo $row['menu_name'];?></h4>
  <span>Rent Duration x Rent Price = <?php echo $row['pax'];?> * <?php echo $row['price'];?> = <?php echo $row['payable'];?></span>
  <ul>


</div>


                  </div><!--pad-->  
                </div>
          </div><!--widget-->          
        </div><!--col 9-->
        <?php include('right-sidebar.php');?>
        
      </div>  
    </div>
<?php include 'footer.php';?>   
<?php include 'script.php';?>
<script>
         $(function () {
         //Initialize Select2 Elements
         $(".select2").select2();
         

     })
    </script>
</body>
</html>



