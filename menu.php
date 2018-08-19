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
		<!-- Fixed navbar -->
		



   

<!-- Main content starts -->

<?php include('includes/dbcon.php');?> 
  <div class="page-tables">
			  <div id="legend"> 
	
                          <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">
                     <h6><span style="color:#dc0322; font-weight: bold;">*</span><strong>Note:</strong> Price List are good for 24 hrs and within Metro Manila<span style="color:#dc0322; font-weight: bold;">*</span></h6> 
                  </div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">
                  <div class="padd">
                    
              <!-- Table Page -->
              <div class="page-tables">
                <!-- Table -->
                <div class="table-responsive">
                  <table cellpadding="0" cellspacing="0" border="0" id="data-table" width="100%">
                    <thead>
                      <tr>
                      <th width="40"><div align="center" style="font-size:18px; color:green">Image</div></th>
                      <th width="50"><div align="center" style="font-size:18px; color:green">Vehicle</div></th>
                      <th width="50"><div align="center" style="font-size:18px; color:green">Category</div></th>
                      <th width="50"><div align="center" style="font-size:18px; color:green">Description</div></th>
                      <th width="100"><div align="center" style="font-size:18px; color:green">Manufacturer</div></th>
                      <th width="50"><div align="center" style="font-size:18px; color:green">Car Model</div></th>
                      <th width="100"><div align="center" style="font-size:18px; color:green">Rent Price</div></th>
                      <th width="80"><div align="center" style="font-size:18px; color:green">Status</div></th>
                      <th width="80"><div align="center" style="font-size:18px; color:green">Remarks</div></th>
                      </tr>
                    </thead>
                    <tbody>
<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from menu order by menu_name")or die(mysqli_error($con));
      while ($row=mysqli_fetch_array($query)){
        $id=$row['menu_id'];
        $menu=$row['menu_name'];
        $body=$row['body_no'];
        $subcat=$row['subcat_name'];
        $desc=$row['menu_desc'];
        $plate=$row['plate_no'];
        $manu=$row['manufacturer'];
        $model=$row['car_model'];
        $member=$row['member_name'];
        $price=$row['menu_price'];
        $remarks=$row['remarks'];
        $pic=$row['menu_pic'];
        $status=$row['status'];
        if ($status=="Available") $flag="success";else $flag="danger";
?>                      
                      <tr>
             <td>
               <a href="images/<?php echo $pic;?>" class="image-zoom" rel="prettyPhoto[gallery]" title="<?php echo $menu." - P".$price;?>" alt="<?php echo $menu." - P".$price;?>">
                          <img align="center" class="img-rounded thumbnail" height="150" width="250" src="images/<?php echo $pic;?>" alt="<?php echo $menu." - P".$price;?>">
             </td>
                        <td><?php echo $menu;?></td>
                        <td><?php echo $subcat;?></td>
                        <td><?php echo $desc;?></td>
                        <td><?php echo $manu;?></td>
                        <td><?php echo $model;?></td>
                        <td><?php echo $price;?></td>
                        <td><span class="label label-<?php echo $flag;?>"><?php echo $status;?></span></td>
                        <td><?php echo $remarks;?></td>
                      </tr>

<?php }?>
                    </tbody>

                    <tfoot>
                      <tr>
                  <th width="40"><div align="center" style="font-size:18px; color:green">Image</div></th>
                  <th width="50"><div align="center" style="font-size:18px; color:green">Vehicle</div></th>
                  <th width="50"><div align="center" style="font-size:18px; color:green">Category</div></th>
                  <th width="50"><div align="center" style="font-size:18px; color:green">Description</div></th>
                  <th width="100"><div align="center" style="font-size:18px; color:green">Manufacturer</div></th>
                  <th width="100"><div align="center" style="font-size:18px; color:green">Car Model</div></th>
                  <th width="100"><div align="center" style="font-size:18px; color:green">Rent Price</div></th>
                  <th width="80"><div align="center" style="font-size:18px; color:green">Status</div></th>
                  <th width="80"><div align="center" style="font-size:18px; color:green">Remarks</div></th>
                  
                      </tr>
                    </tfoot>
                  </table>
                  <div class="clearfix"></div>
                </div>
                </div>
              </div>

          
                  </div>
                  <div class="widget-foot">
                    <!-- Footer goes here -->
                  </div>
                </div>
              </div>  
              
            </div>
          </div>
        </div>
      </div>

    <!-- Matter ends -->


    </div>

   <!-- Mainbar ends -->
   <div class="clearfix"></div>

</div>
<!-- Content ends -->


<!-- JS -->
<?php include('includes/js.php');?>  
<?php include 'footer.php';?> 
<?php include 'script.php';?>
</body>
</html>



						