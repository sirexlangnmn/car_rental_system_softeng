<?php session_start();
if(empty($_SESSION['id'])):
header('Location:index.php');
endif;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>Events/Reservation/Announcement - <?php include('../includes/title.php');?></title>
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
      </button>
      <!-- Site name for smallar screens -->
      <a href="index.html" class="navbar-brand hidden-lg">UrvanZone Car Rental</a>
    </div>
      
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
		                  <div class="pull-left">Events / Reservation / Announcement</div>
		                  <div class="widget-icons pull-right">
		                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
		                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
		                  </div>
		                  <div class="clearfix"></div>
		                </div>

               			<div class="widget-content" style="height:500px">
                  			<div class="padd">
                  				<div class="page-tables">
                  					<div class="col-md-4 col-lg-4 col-sm-4">
									  <div class="widget">
										<!-- Widget title -->
										<div class="widget-head">
										  <div class="pull-left">Finished Reservation</div>
										  <div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
											<a href="#" class="wclose"><i class="fa fa-times"></i></a>
										  </div>  
										  <div class="clearfix"></div>
										</div>
										<div class="widget-content referrer">
										  <!-- Widget content -->
										  <div class="padd">
											<ul class="latest-news">
														<?php
														include('includes/dbcon.php');

															$query=mysqli_query($con,"select * from reservation WHERE r_status = 'Finished' LIMIT 0,5")or die(mysqli_error($con));
															  while ($row=mysqli_fetch_array($query)){
																$id=$row['rid'];
																$what=$row['r_ocassion'];
																$where=$row['r_venue'];
																$date = $row['r_date'];
															   
														?>   												
											  <li>
												<!-- Title and date -->
												<h6><a href="#"> <?php echo $what;?> </a> 
													<span class = "pull-right"><?php echo date("M d, Y",strtotime($date));?></span></h6>
												<p><?php echo $where;?></p>
											  </li>
														<?php }?>                                      
											</ul> 
										  </div>
										  <div class="widget-foot">
										  </div>
										</div>
									  </div>
									</div>	<!--col-->

									<div class="col-md-4 col-lg-4 col-sm-4">
										  <div class="widget">
										<!-- Widget title -->
										<div class="widget-head">
										  <div class="pull-left">Upcoming Reservation</div>
										  <div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
											<a href="#" class="wclose"><i class="fa fa-times"></i></a>
										  </div>  
										  <div class="clearfix"></div>
										</div>
										<div class="widget-content referrer">
										  <!-- Widget content -->
										  <div class="padd">
											<ul class="latest-news">
														<?php
														include('includes/dbcon.php');

															$query=mysqli_query($con,"select * from reservation WHERE r_status = 'Approved' LIMIT 0,5")or die(mysqli_error($con));
															  while ($row=mysqli_fetch_array($query)){
																$id=$row['rid'];
																$what=$row['r_ocassion'];
																$where=$row['r_venue'];
																$date = $row['r_date'];
															   
														?>   												
											  <li>
												<!-- Title and date -->
												<h6><a href="#"> <?php echo $what;?> </a> 
													<span class = "pull-right"><?php echo date("M d, Y",strtotime($date));?></span></h6>
												<p><?php echo $where;?></p>
											  </li>
														<?php }?>                                      
											</ul> 
										  </div>
										  <div class="widget-foot">
										  </div>
										</div>
									  </div>
										</div>
										
										<div class="col-md-4 col-lg-4 col-sm-4">
										  <div class="widget">
										<!-- Widget title -->
										<div class="widget-head">
										  <div class="center">Latest Annoucements</div>
										  <div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
											<a href="#" class="wclose"><i class="fa fa-times"></i></a>
										  </div>  
										  <div class="clearfix"></div>
										</div>
										<div class="widget-content referrer">
										  <!-- Widget content -->
										  <div class="padd">
											<ul class="latest-news">
														<?php
														include('includes/dbcon.php');

															$query=mysqli_query($con,"select * from event LIMIT 0,5")or die(mysqli_error($con));
															  while ($row=mysqli_fetch_array($query)){
																$id=$row['event_id'];
																$what=$row['event_what'];
																$where=$row['event_where'];
																$date = $row['event_date'];
															   
														?>   												
											  <li>
												<!-- Title and date -->
												<h6><a href="#"> <?php echo $what;?> </a> 
													<span class = "pull-right"><?php echo date("M d, Y",strtotime($date));?></span></h6>
												<p><?php echo $where;?></p>
											  </li>
														<?php }?>                                      
											</ul> 
										  </div>
										  <div class="widget-foot">
										  </div>
										</div>
									  </div>
										</div>
									
                   				</div><!--table-->
                  			</div><!--pad-->
                		</div><!--widget-content-->
                  		<div class="widget-foot">
                    	<!-- Footer goes here -->
                 		 </div>
              		</div><!--widget-->		
				</div><!--content-->		

<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

<!-- Modal -->
<div id="addModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title">Add New Vehicle</h4>
            </div>
            <div class="modal-body">
              <!--start form-->
              <form class="form-horizontal" method="post" action="menu_save.php" enctype='multipart/form-data'>
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Vehicle Name</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="menu" id="title" placeholder="Vehicle Name">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Category</label>
                      <div class="col-lg-8"> 
                        <select class="form-control select2" id="exampleSelect1" name="cat">
                         <?php
                            include('../includes/dbcon.php');

                              $result = mysqli_query($con,"SELECT * FROM category ORDER BY cat_name"); 
                                  while ($row = mysqli_fetch_assoc($result)){

                                ?>
                                <option><?php echo $row['cat_name'];?></option>
                        <?php } ?>
                        </select>
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Subcategory</label>
                      <div class="col-lg-8"> 
                        <select class="form-control select2" id="exampleSelect1" name="subcat">
                         <?php

                              $result = mysqli_query($con,"SELECT * FROM subcategory ORDER BY subcat_name"); 
                                  while ($row = mysqli_fetch_assoc($result)){

                                ?>
                                <option><?php echo $row['subcat_name'];?></option>
                        <?php } ?>
                        </select>
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Description</label>
                      <div class="col-lg-8"> 
                        <textarea class="form-control" name="desc" id="title" placeholder="Description"></textarea>
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Rent Price</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="price" id="title" placeholder="Rent Price">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Image</label>
                      <div class="col-lg-8"> 
                        <input type="file" class="form-control" name="image" id="title">
                      </div>
                  </div> 

                  <!-- Buttons -->
                  <div class="form-group">
                      <!-- Buttons -->
                      <div class="col-lg-offset-2 col-lg-6">
                        <button type="submit" class="btn btn-sm btn-primary">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                       </div>
                  </div>
              </form>
              <!--end form-->
            </div>
            
        </div><!--modal content-->
    </div><!--modal dialog-->
</div>
<!--end modal-->  				
			
             
    
    
			
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



