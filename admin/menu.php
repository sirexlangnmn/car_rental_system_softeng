
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
  <title>Vehicle - <?php include('../includes/title.php');?></title>
  <?php include('../includes/links.php');?>
  
</head>

<body>

<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
    <div class="conjtainer">
      <!-- Menu button for smallar screens -->
      <div class="navbar-header">
      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
      <span>Vehicle</span>
      </button>
      <!-- Site name for smallar screens -->
      <a href="index.html" class="navbar-brand hidden-lg">Urvan Zone Car Rental</a>
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

        <div class="clearfix"></div>

      </div>
      <!-- Page heading ends -->



       <!-- Matter -->

                  <div class="widget">
                <div class="widget-head">
                  <div class="pull-left"> Vehicle
                    <a rel="tooltip" data-placement="bottom" title="Add New Vehicle" id="Add New Vehicle" href="#addModal" class="btn btn-info" data-toggle="modal">Add New Vehicle</a>
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
              <div class="table-responsive">
                <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered dataTable" id="data-table" aria-describedby="example_info">
                <div class="pull-right">
                <a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Print</a>
                </div>
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Vehicle Name</th>
                        <th>Body No.</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Plate No.</th>
                        <th>Manufacturer</th>
                        <th>Car Model</th>
                        <th>Driver Assigned</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Remarks</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
include('../includes/dbcon.php');

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
        $pic=$row['menu_pic'];
        $status=$row['status'];
        $remarks=$row['remarks'];
        if ($status=="Available") $flag="success";else $flag="danger";
?>                      
                      <tr>
             <td>
             <a href="../images/<?php echo $pic;?>" class="image-zoom" rel="prettyPhoto[gallery]">
             <img style="height:50px; width:50px" src="../images/<?php echo $pic;?>">
             </a>
             </td>
                        <td><?php echo $menu;?></td>
                        <td><?php echo $body;?></td>
                        <td><?php echo $subcat;?></td>
                        <td><?php echo $desc;?></td>
                        <td><?php echo $plate;?></td>
                        <td><?php echo $manu;?></td>
                        <td><?php echo $model;?></td>
                        <td><?php echo $member;?></td>
                        <td><?php echo $price;?></td>
                        <td><span class="label label-<?php echo $flag;?>"><?php echo $status;?></span></td>
                        <td><?php echo $remarks;?></td>
                        <td>
                            
                              <a rel="tooltip" data-placement="bottom" title="Update Vehicle Detail" id="Update Vehicle Detail" href="#update" class="btn btn-info" data-target="#update<?php echo $id;?>" data-toggle="modal">
                                <i class="fa fa-pencil"></i>
                              </a>
                            
                            <a rel="tooltip" data-placement="bottom" title="Delete Vehicle Detail" id="Delete Vehicle Detail" href="#delete" class="btn btn-danger" data-target="#delete<?php echo $id;?>" data-toggle="modal">
                                <i class="fa fa-times"></i>
                              </a>
                        </td>
                      </tr>
<!-- Modal -->
<div id="update<?php echo $id;?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title">Update Category</h4>
            </div>
            <div class="modal-body" style="height:500px">
              <!--start form-->
              <form class="form-horizontal" method="post" action="menu_update.php" enctype='multipart/form-data'>
                  <!-- Title -->
                  <input type="hidden" name="id" value="<?php echo $id;?>">
                 
                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Vehicle Name</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="menu" id="title" placeholder="Vehicle Name" value="<?php echo $menu;?>">
                      </div>
                  </div> 

                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Body No.</label>
                      <div class="col-lg-8"> 
                        <input type="number" class="form-control" name="body" id="title" placeholder="Body No" value="<?php echo $body;?>">
                      </div>
                  </div> 

                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Category</label>
                      <div class="col-lg-8"> 
                        <select class="form-control select2" id="exampleSelect1" name="subcat">
                         <?php
                              echo "<option>$subcat</option>";
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
                      <label class="control-label col-lg-4" for="title">Description</label>
                      <div class="col-lg-8"> 
                        <textarea class="form-control" name="desc" id="title" placeholder="Description"><?php echo $desc;?></textarea>
                      </div>
                  </div> 
                  
                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Plate No.</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="plate" id="title" placeholder="Plate No" value="<?php echo $plate;?>">
                      </div>
                  </div> 

                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Manufacturer</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="manu" id="title" placeholder="Manufacturer" value="<?php echo $manu;?>">
                      </div>
                  </div> 

                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Car Model</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="model" id="title" placeholder="Car Model" value="<?php echo $model;?>">
                      </div>
                  </div> 

                 

                                    <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Driver Assigned</label>
                      <div class="col-lg-8"> 
                        <select class="form-control select2" id="exampleSelect1" name="member">
                         <?php
                              echo "<option>$member</option>";
                              $result = mysqli_query($con,"SELECT * FROM member ORDER BY member_name"); 
                                  while ($row = mysqli_fetch_assoc($result)){

                                ?>
                                <option><?php echo $row['member_name'];?></option>
                        <?php } ?>
                        </select>
                      </div>
                  </div> 




                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Rent Price</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="price" id="title" placeholder="Rent Price" value="<?php echo $price;?>">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Image</label>
                      <div class="col-lg-8"> 
                        <input type="hidden" class="form-control" id="image" name="image1" value="<?php echo $pic;?>"> 
                        <input type="file" class="form-control" name="image" id="title">
                      </div>
                  </div>       
                              
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="password">Status</label>
                      <div class="col-lg-8"> 
                        <select class="form-control" id="exampleSelect1" name="status">
                                <option><?php echo $status;?></option>
                                <option>Available</option>
                                <option>Reserve</option>
                        </select>
                      </div>
                  </div>     
                
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Remarks</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="remarks" id="title" placeholder="Reservation Duration" value="<?php echo $remarks;?>">
                      </div>
                  </div> 
                                
                  <!-- Buttons -->
                  <div class="col-md-4">
                  </div>  
                  <div class="col-md-8">
                        <button type="submit" class="btn btn-sm btn-primary" name="update">Update</button>
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

<!-- Modal -->
<div id="delete<?php echo $id;?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title">Delete Vehicle Record</h4>
            </div>
            <div class="modal-body" style="height:140px">
              <!--start form-->
              <form class="form-horizontal" method="post">
                  <input type="hidden" class="form-control" name="id" value="<?php echo $id;?>">
                  <div class="alert alert-danger">
                      Are you sure you want to delete the Vehicle record? <?php echo $menu;?>?
                    </div>                     
                  <!-- Buttons -->
                  <div class="form-group">
                      <!-- Buttons -->
                      
                        <button type="submit" class="btn btn-sm btn-primary" name="del">Delete</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                      
                  </div>
              </form>
              <!--end form-->
            </div>
           
        </div><!--modal content-->
    </div><!--modal dialog-->
</div>
<!--end modal-->                     
<?php }?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Image</th>
                        <th>Vehicle Name</th>
                        <th>Body No.</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Plate No.</th>
                        <th>Manufacturer</th>
                        <th>Car Model</th>
                        <th>Driver Assigned</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Remarks</th>
                        <th>Action</th>
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

<!-- Footer starts -->
<?php include('../includes/footer.php');?>  

<!-- Footer ends -->

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
                        <input type="text" class="form-control" name="menu" id="title" placeholder="Vehicle Name" required>
                      </div>
                  </div> 
                  
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Body No.</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="body" id="title" placeholder="Body No." required>
                      </div>
                  </div> 
            
            
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Category</label>
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
                        <textarea class="form-control" name="desc" id="title" placeholder="Description" required></textarea>
                      </div>
                  </div> 

                   <!-- Title -->
                   <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Plate No.</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="plate" id="title" placeholder="Plate No." required>
                      </div>
                  </div> 
            
                    <!-- Title -->
                   <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Manufacturer</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="manu" id="title" placeholder="Manufacturer" required>
                      </div>
                  </div> 

                   <!-- Title -->
                   <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Car Model</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="model" id="title" placeholder="Car Model" required>
                      </div>
                  </div> 

                 

                   <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Driver Assigned</label>
                      <div class="col-lg-8"> 
                        <select class="form-control select2" id="exampleSelect1" name="member">
                         <?php

                              $result = mysqli_query($con,"SELECT * FROM member ORDER BY member_name"); 
                                  while ($row = mysqli_fetch_assoc($result)){

                                ?>
                                <option><?php echo $row['member_name'];?></option>
                        <?php } ?>
                        </select>
                      </div>
                  </div> 

                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Rent Price</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="price" id="title" placeholder="Rent Price" required>
                      </div>
                  </div> 


                   <!-- Title -->
                   <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Remarks</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="remarks" id="title" placeholder="Reservation Duration" required>
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
<?php
    if (isset($_POST['del']))
    {
    $id=$_POST['id'];

  // sending query
  mysqli_query($con,"delete from menu WHERE menu_id='$id'")
  or die(mysqli_error());
  echo "<script>document.location='menu.php'</script>";
    }
    ?>
<!-- JS -->
<?php include('../includes/js.php');?>  

</body>
</html>




