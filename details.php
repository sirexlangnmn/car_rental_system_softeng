<?php session_start();
if(empty($_SESSION['id'])):
header('Location:index.php');
endif;
?>
<?php include 'header.php';?>
    <script language="JavaScript"><!--
javascript:window.history.forward(1);
//--></script>

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
 <center><h3> 1. Fill up Personal Info&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font color="blue">2.Renting Purpose </font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3. Payment Details</h3></center>
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class = "col-md-8 col-lg-8">
					<div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left" style="color: green">Reservation Details</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd">
          <h3><p><b>2:</b> Fill up Information for Renting Purpose</p></h3>
                    <p style="color:#dc0322; font-size: 12px;"><i>*required fields</i></p>
					<!-- Form starts.  -->
                       <form class="form-horizontal" role="form" action="details_save.php" method="post">
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Purpose for Renting</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                              <select class="form-control select2 " id="exampleSelect1" name="venue" placeholder="Destination" style="border: 3px double #CCCCCC;" required>
                                      <option></option>
									                    <option>Personal Use</option>
									                    <option>Travel Vacation</option>
                                      <option>Business Purpose</option>
                                      <option>Government Purpose</option>
                                      <option>Occasion </option>
                                      <option>Lipat Bahay</option>
                                      <option>Service to Airport</option>
                                    </select>
                                  </div>
                                </div> 


                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Pick up date</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="text" id="datepicker" class="form-control" name="date" style="border: 3px double #CCCCCC;" required>
                                    <span class = "label label-warning">Check if date is available</span>
                                  </div>
                                </div>
								
								<!--
								
                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Drop date</label>
                                  <div class="col-lg-5">
                                   <input type="text" id="datepicker" class="form-control hasDatepicker" name="date" required="">
								   <span class = "label label-warning">Check if date is available</span>
                                  </div>
                                </div>

							-->

					
							
							
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Pick up time</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <div id="datetimepicker" class="input-append input-group dtpicker">
                                     
									  <input data-format="hh:mm A" class="form-control" type="time" name="time" id="datepicker" style="border: 3px double #CCCCCC;" required="true">
                                      <span class="input-group-addon">
                                        <i data-time-icon="fa fa-clock-o" data-date-icon="fa fa-calendar" class="fa fa-clock-o"></i>
                                      </span>
                                    </div>
                                  </div>
                                </div>

                                <!-- Aalisin ito -->
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Desired car color</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <select class="form-control select2 " id="exampleSelect1" name="motif" placeholder="Destination" style="border: 3px double #CCCCCC;" required>
                                        <option></option>
									                    <option>Black</option>
                                      <option>Red</option>
                                      <option>Blue</option>
                                      <option>White</option>
                                      <option>Grey</option>
                                      <option>Orange</option>
                                      <option>Green</option>
                                      <option>Yellow</option>
                                    </select>
                                  </div>
                                </div>  
								
                                <!-- Aalisin ito -->


                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Destination</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <select class="form-control select2 " id="exampleSelect1" name="ocassion" placeholder="Destination" style="border: 3px double #CCCCCC;" required>
                                        <option></option>
									                    <option>Quezon City</option>
                                      <option>Bulacan</option>
                                      <option>Manila</option>
                                      <option>Valenzuela</option>
                                      <option>Makati</option>
                                      <option>Laguna</option>
                                      <option>Cavite</option>
                                      <option>Batangas</option>
								                  	  <option>Outside Metro Manila</option>
                                    </select>
                                  </div>
                                </div>  
								
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">No. of days</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="number" class="form-control" min="1" placeholder="Duration" name="pax" style="border: 3px double #CCCCCC;" required>
                                  </div>
                                </div> 
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Type</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-2">
                                    <input type="radio" class="form-radio" name="type" value="Self Driven" required> Self Driven
                                  </div>
                                  <div class="col-lg-2">
                                    <input type="radio" class="form-radio" name="type" value="Rent with Driver" required> Rent with Driver
                                  </div>
                                 <div class="col-lg-2">
                                    <input type="radio" class="form-radio" name="type" value="Rent with Kargador" required> Rent with Helper
                                  </div>
                                </div>  
                               <div class="form-group">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">
<?php
include('includes/dbcon.php');

?>    


          <div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
					<div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left" style="color: green">Select Vehicle</div>
 
				<!-- Widget content -->
				
				  <table class="table table-striped table-bordered table-hover">
                    <tbody>
               
			     <tr>
                      <td>
                <select class="form-control select2 " id="exampleSelect1" name="menu" placeholder="Select Desired Vehicle">
                  <option value="0">--Select Car Here--</option>
                  <?php
                      $result = mysqli_query($con,"SELECT * FROM menu"); 
                          while ($row = mysqli_fetch_assoc($result)){
                  ?>
                          <option value="<?php echo $row['menu_id'];?>"><?php echo $row['menu_name'];?></option>
                  <?php } ?>
                </select>
				  </td>
                    </tr> 
				</tbody></table>
			   <div class="widget-foot">
                  </div>
                </div>
              </div>
			</div>
            </div>
			
			
			
              <!--end widget-->
            
             
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



