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
          <h4 class = "center" style="color: green">Urvan Zone Car Rental</h4>
        </div>                    
        </div>

  <?php include 'navbar.php';?>
  <?php include 'menu-tab.php';?>
	
  <br>
 <center>

  <h3> 1. Fill up Personal Info &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2. Renting Purpose &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <font color="blue">3. Payment Details</font>
  </h3>
   
  </center>

		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class = "col-md-8 col-lg-8">
					<div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left">Payment Details</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd">

           <div class="alert alert-success">
          <h4><p><b>Step 3:</b> After you pay for downpayment please inform us through email or cellphone or simply back here and
          send the details on <br>
          <b>"Payment Transaction Send Here"</b> that will you find in the lower right part of this page. </p></h4>
          </div>
                    <!-- Form starts.  -->
                     <form class="form-horizontal" role="form" action="payment_save.php" method="post">
                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Vehicle Name</label>
                                  <div class="col-lg-5">
<?php 
include('includes/dbcon.php');
$id = $_SESSION['id'];
$query = mysqli_query($con, "SELECT * FROM reservation natural join menu WHERE rid='$id'");
   		  $row=mysqli_fetch_array($query);
       
          echo "<b>".$row['menu_name']."</b>";

		  {


?>
                                     
         <?php }?>                           

                                  </div>
                                </div>    

                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Payment Details</label>
                                  <div class="col-lg-5">
                                  <h4>
                                    <?php
                                      echo $row['pax'];
									                    echo " (Day/s) ";
                                      echo " x ";
                                      echo number_format($row['price'],2);
									                    echo " (Rent Rate) ";
                                      echo " = ";
                                      echo number_format($row['payable'],2);
									                    echo " (Assessment Payment) ";
                                    ?>
                                   </h4> 
                                  </div>
                                </div>


                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Mode of Payment</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2 " id="exampleSelect1" name="mode" placeholder="Select occasion" required>
                                      <option>Bank to Bank</option>
                                      <option>Pera Padala</option>
                                      <option>Cash</option>
                                    </select>
                                  </div>
                                </div>  
                  
                                <div class="form-group">
                                  <div class="col-lg-offset-2 col-lg-6">
                                    <button type="reset" class="btn btn-sm btn-default">Clear</button>
                                    <button type="submit" class="btn btn-sm btn-primary">Next</button>
                                    
                                  </div>
                                </div>
                              </form>
                  </div>
                </div>
                  <div class="widget-foot">
                    <!-- Footer goes here -->
                  </div>
              </div>		
				</div>
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
$( "#datepicker" ).datepicker({ minDate: 0});


</script>
</body>
</html>



