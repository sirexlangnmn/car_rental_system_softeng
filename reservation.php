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
 <center><h3><font color="blue"> 1. Fill up Personal Info</font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2. Renting Purpose &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3. Payment Details</h3></center>
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				  <div class = "col-md-8 col-lg-8">
					<div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left" style="color: green">Create Reservation</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd">
          <h3><p><b>1:</b> Fill up all the Personal Information</p></h3>
                    <p style="color:#dc0322; font-size: 12px;"><i>*required fields</i></p>
                    
                    <!-- Form starts.  -->
                     <form class="form-horizontal" role="form" action="reservation_save.php" method="post">
                              
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">First Name</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="text" class="form-control" placeholder="First Name" name="first" style="border: 3px double #CCCCCC;" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Last Name</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="text" class="form-control" placeholder="Last Name" name="last" style="border: 3px double #CCCCCC;" required>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Address</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <textarea class="form-control" rows="1" placeholder="Complete Address" name="address" style="border: 3px double #CCCCCC;"  required></textarea>
                                  </div>
                                </div>    

                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Mobile Number</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="text" class="form-control" value="+63" name="contact" style="border: 3px double #CCCCCC;" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-2 control-label" style="color: green">Email Address</label><span style="color:#dc0322; font-weight: bold;">*</span>
                                  <div class="col-lg-5">
                                    <input type="email" class="form-control" placeholder="Email Address" name="email" style="border: 3px double #CCCCCC;" required>
                                  </div>
                                </div>

								                <div class="form-group">
                                  <label class="col-lg-2 control-label"></label>
                                  <div class="col-lg-5">
                                    <label class="checkbox-inline">
                                      <input type="checkbox" id="inlineCheckbox1" value="option1" required> I agree to the <a href="#facilities" data-toggle="modal">terms and condtion<span style="color:#dc0322; font-weight: bold;">*</span></a> of the Urvan Zone
                                    </label>
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
    </script>
</body>
</html>



