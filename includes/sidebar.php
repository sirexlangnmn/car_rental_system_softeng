<div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <!--- Sidebar navigation -->
        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
        <ul id="nav">
          <!-- Main menu with font awesome icon -->
          <li class="open"><a href="dashboard.php"><i class="fa fa-home"></i> Dashboard</a>
          </li>
          <li class="has_sub">
			<a href="#"><i class="fa fa-calendar"></i> Reservation  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>
              <li><a href="reservation.php">Confirmed Reservations</a></li>
              <li><a href="pending.php">Pending Reservations</a></li>
              <li><a href="finished.php">Finished Reservations</a></li>
              <li><a href="cancelled.php">Cancelled Reservations</a></li>
            </ul>
          </li>  
		  
		       <li class="has_sub">
				<a href="#"><i class="fa fa-bar-chart-o"></i>Vehicle Record<span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>
			  <li><a href="menu.php">Vehicle</a></li>
              <li><a href="subcategory.php">Vehicle Category</a></li> 
			  <li><a href="order.php"></i> Vehicle Rented</a></li> 
			  
			<!--
				 <li><a href="record.php"></i> Vehicle Rented</a></li> 
				<li><a href="recordlist.php"></i> Table List</a></li> 
            -->
			</ul>
        	  </li>
		 
		 
                <li class="has_sub">
				<a href="#"><i class="fa fa-bar-chart-o"></i> Schedule of Events  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>
				 <li><a href="event.php">Event/Announcement</a></li>
                 <li><a href="schedule.php">Schedule of Reservation</a></li>
				 <li><a href="calendar.php">Calendar Activities</a></li>
            </ul>
        	  </li>


		 <li class="has_sub">
			<a href="#"><i class="fa fa-file-o"></i>Human Resource  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>			
              <li><a href="members.php">Driver</a></li>
              <li><a href="user.php">Admin</a></li>
		
            </ul>
          </li>    
			
			
		  <li class="has_sub">
			<a href="#"><i class="fa fa-file-o"></i>Messages  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>			
				<li><a href="messages.php"><i class="fa fa-envelope"></i>Email Messages</a></li> 
        <li><a href="messages2.php"><i class="fa fa-envelope"></i>Payment Transaction</a></li> 
				<li><a href="SMSsender2.php"><i class="fa fa-envelope"></i>SMS Messages</a></li> 
			</ul>
          </li> 

		  <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i> Report  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
            <ul>
              <li><a href="#reserve" data-toggle="modal">Reservation</a></li>
              <li><a href="#sales" data-toggle="modal">Monthly Sales</a></li>
                </ul>
			</li>
          
		  
		  <li><a href="backup.php"><i class="fa fa-bar-chart-o"></i> Backup Database</a></li>
    
    
    </div>
	
    <?php include 'report_modal.php'; ?>
    <?php include 'report_sales.php'; ?>