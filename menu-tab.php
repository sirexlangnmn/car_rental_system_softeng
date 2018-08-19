<!-- Header starts -->
  <header>
    <div class="container">
      <div class="row">
        <!-- Logo section -->
        <div class="col-md-8">
          <!-- Logo. -->
          <div class="logo">
           <a href="index.php"> <h2 class = "logo-text"><span class="bold" style="color: green">Urvan Zone Car Rental</span></h2></a>	
           
          </div>
          <!-- Logo ends -->
        </div>
        <!-- Button section -->
        <div class="col-md-7">
          <!-- Buttons -->
          <ul class="nav nav-tabs">
            <!-- Comment button with number of latest comments count -->          

            <!-- Message button with number of latest messages count-->
			<li class="dropdown dropdown-big">
              <a rel="tooltip" style="color: green" data-placement="bottom" title="Home" id="Home" href="index.php">
                <i class="fa fa-hom"></i> Home
              </a>                
            </li>
			
			
            <li class="dropdown dropdown-big">
              <a rel="tooltip" style="color: green" data-placement="bottom" title="Pricing Table" id="Pricing Table" class="dropdown-toggle" href="menu.php">
                <i class="fa fa-cutler"></i> Pricing Table
              </a>                
            </li>

            <li class="dropdown dropdown-big">
              <a rel="tooltip" style="color: green" data-placement="bottom" title="Vehicle Gallery" id="Vehicle Gallery" class="dropdown-toggle" href="pricingtable.php">
                <i class="fa fa-cutler"></i> Vehicle Gallery
              </a>                
            </li>
			
			     
            <!-- Members button with number of latest members count -->
            <li class="dropdown dropdown-big">
                         <a rel="tooltip" style="color: green" data-placement="bottom" title="Schedule Reservation" id="Schedule Reservation" class="dropdown-toggle" href="reservation.php">
                <i class="fa fa-penci"></i> Schedule a Reservation 
              </a>                
            </li> 
			<!-- Members button with number of latest members count -->
            <li class="dropdown dropdown-big">
              <a rel="tooltip" style="color: green" data-placement="bottom" title="Contact Us" id="Contact Us" class="dropdown-toggle" href="contactus2.php">
                <i class="fa fa-phon"></i> Contact Us 
              </a>                

			   <li class="dropdown dropdown-big">
              <a rel="tooltip" style="color: green" data-placement="bottom" title="Testimonials" id="Testimonials" class="dropdown-toggle" href="testimonials.php">
                <i class="fa fa-cutler"></i> Testimonials
              </a>                
            </li>

			  
		  </li> 
          </ul>
        </div>
        <!-- Data section -->
		</div>
		</div>
		<?php include 'login_modal.php'; ?>
		<?php include 'details_modal.php'; ?>		
	  <?php include 'reservation_modal.php'; ?>
	  <?php include 'facilities_modal.php'; ?>
	  <?php include 'culinary_modal.php'; ?>
    
  </header>
  