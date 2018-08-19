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
  <title>Driver - <?php include('../includes/title.php');?></title>
  <?php include('../includes/links.php');?>
  
</head>

<body>

<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
    <div class="conjtainer">
      <!-- Menu button for smallar screens -->
      <div class="navbar-header">
      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
      <span>Driver</span>
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

      <div class="matter">
        <div class="container">
          <div class="row">
            <div class="col-md-12">

              <div class="widget">
                <div class="widget-head">
                  <div class="pull-left"> Users
                    <a href="#addModal" class="btn btn-info" data-toggle="modal">Add New Company Driver</a>
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
                        <th>Full Name</th>
                        <th>Specialty</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
include('../includes/dbcon.php');

    $query=mysqli_query($con,"select * from member order by member_name")or die(mysqli_error($con));
      while ($row=mysqli_fetch_array($query)){
        $id=$row['member_id'];
        $last=$row['member_name'];
        $first=$row['specialty'];
        $contact=$row['member_contact'];
        $address=$row['member_address'];
    $pic=$row['member_pic'];
        $status=$row['member_status'];
        if ($status=="active") $flag="success";else $flag="danger";
?>                      
                      <tr>
               <td>
             <a href="../images/<?php echo $pic;?>" class="image-zoom" rel="prettyPhoto[gallery]">
             <img style="height:50px; width:50px" src="../images/<?php echo $pic;?>">
             </a>
             </td>
                        <td><?php echo $last;?></td>
                        <td><?php echo $first;?></td>
                        <td><?php echo $contact;?></td>
                        <td><?php echo $address;?></td>
                        <td><span class="label label-<?php echo $flag;?>"><?php echo $status;?></span></td>
                        <td>
                              <a href="#myModal" class="btn btn-info" data-target="#update<?php echo $id;?>" data-toggle="modal">
                                <i class="fa fa-pencil"></i>
                              </a>
                        </td>
                      </tr>
<!-- Modal -->
<div id="update<?php echo $id;?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title">Update Company Driver Details</h4>
            </div>
            <div class="modal-body" style="height:250px">
              <!--start form-->
              <form class="form-horizontal" method="post" action="member_update.php" enctype='multipart/form-data'>
                  <!-- Title -->
                 <input type="hidden" name="id" value="<?php echo $id;?>">
          <!-- Title -->                 
         <div class="form-group">
                      <label class="control-label col-lg-4" for="title">Full Name</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="last" id="title" placeholder="Write Full Name" value="<?php echo $last;?>">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="username">Specialty</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="first" id="username" placeholder="Specialty" value="<?php echo $first;?>">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="password">Contact #</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="contact" id="password" placeholder="Write contact number" value="<?php echo $contact;?>">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-4" for="password">Complete Address</label>
                      <div class="col-lg-8"> 
                        <textarea class="form-control" name="address" id="password" placeholder="Write complete address"><?php echo $address;?></textarea>
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
                                <option>Active</option>
                                <option>Inactive</option>
                        </select>
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
<?php }?>
                    </tbody>
                    <tfoot>
                      <tr>
              <th>Image</th>
                        <th>Full Name</th>
                        <th>Specialty</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Status</th>
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
              <h4 class="modal-title">Add New Company Driver</h4>
            </div>
            <div class="modal-body">
              <!--start form-->
              <form class="form-horizontal" method="post" action="member_save.php" enctype='multipart/form-data'>
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="title">Full Name</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="last" id="title" placeholder="Write Full Name" required>
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="username">Specialty</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="first" id="username" placeholder="Write Specialty" required>
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="password">Contact #</label>
                      <div class="col-lg-8"> 
                        <input type="text" class="form-control" name="contact" id="password" placeholder="Write contact number">
                      </div>
                  </div> 
                  <!-- Title -->
                  <div class="form-group">
                      <label class="control-label col-lg-2" for="password">Complete Address</label>
                      <div class="col-lg-8"> 
                        <textarea class="form-control" name="address" id="password" placeholder="Write complete address"></textarea>
                      </div>
                  </div>     

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
<!-- JS -->
<?php include('../includes/js.php');?>  

</body>
</html>