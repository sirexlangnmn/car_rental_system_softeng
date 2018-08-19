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
	
	
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class = "col-md-8 col-lg-8">
					<div class = "widget">
						<div class = "widget-head" style="color: green">
							Map Of Our Location
						</div>
						<div class = "widget-content">
						
							<iframe src="https://www.google.com.ph/maps/place/Evangelista+Ave,+Pasig,+1800+Metro+Manila/@14.6179628,121.0792767,17z/data=!3m1!4b1!4m5!3m4!1s0x3397b82047f24ecf:0x9b540e389afa8777!8m2!3d14.6179628!4d121.0814654?hl=en" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						
						</div>
					</div>				
				</div>
				
				<div class = "col-md-4 col-lg-4">
					<div class = "widget">
						<div class = "widget-head" style="color: green">
							Message/Feedback
						</div>
						<div class = "widget-content">
							<div class = "padd">
								<form class="form-horizontal" action = "add_message.php" method="post">                              
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Fullname</label>
                                  <div class="col-lg-8">
                                    <input name = "fullname" type="text" class="form-control" placeholder="Please type your name" required >
                                  </div>
                                </div>                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Email</label>
                                  <div class="col-lg-8">
                                    <input type="email"  name = "email" class="form-control" placeholder="Please type your email" required>
                                  </div>
                                </div>
								<div class="form-group">
                                  <label class="col-lg-3 control-label">Subject</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "subject" class="form-control" placeholder="Subject" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Comments</label>
                                  <div class="col-lg-8">
                                    <textarea name = "message" class="form-control" rows="5" placeholder="Comments here....."required></textarea>
                                  </div>
                                </div>
								<div class="form-group">
                                  <div class="col-lg-offset-3 col-lg-8">
                                    <button  class="btn btn-sm btn-success btn-block">Send</button>                                  
                                  </div>
                                </div>
                              </form>

						</div>
						</div>
					</div>		
				</div>				
				<div class = "col-md-4 pull-right">
					<div class = "widget">
						<div class = "widget-head center">
							 <a class="btn btn-social-icon btn-facebook" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-facebook']);"><span class="fa fa-facebook"></span></a>							 
							 <a class="btn btn-social-icon btn-instagram" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-instagram']);"><span class="fa fa-instagram"></span></a>
							 <a class="btn btn-social-icon btn-twitter" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-twitter']);"><span class="fa fa-twitter"></span></a>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class = "content">
			<div class = "col-lg-12 col-md-12  col-sm-12">
				<div class = "col-lg-12 col-md-12 col-sm-12 ">
					<div class = "title-header">
						<h2 class = "center">
						People of Urvan Zone Car Rental Services
						</h2>
					</div>					
				</div>
				<br/>
				<br/>
				<br/>
			<!--		<div class = "col-lg-3 col-md-3 col-sm-3">  -->
					
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/rex1x1.png"/>
					</div>
					<h4 class = "center">Federex A. Potolin</h4>
					<h5 class = "center">Palaboy | HampasLupa</h5> 										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/braza.jpg"/>
					</div>
					<h4 class = "center">Jeric Braza</h4>
					<h5 class = "center">Technical Support</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/peralta.jpg"/>
					</div>
					<h4 class = "center">John Carl Peralta</h4>
					<h5 class = "center">Project Manager</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/ron.jpg"/>
					</div>
					<h4 class = "center">Ron Henguillo</h4>
					<h5 class = "center">Software Engineer</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/santos.png"/>
					</div>
					<h4 class = "center">Aaron Santos</h4>
					<h5 class = "center">Asst. Project Manager / System Analyst</h5>										
				</div>

				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/angelicapic.jpeg"/>
					</div>
					<h4 class = "center">Angelica Valenzuela</h4>
					<h5 class = "center">Database Designer</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/zorca.jpg"/>
					</div>
					<h4 class = "center">Princess Mae Zorca</h4>
					<h5 class = "center">Web Designer</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/jhe.jpg"/>
					</div>
					<h4 class = "center">Jhen Pagtalunan</h4>
					<h5 class = "center">Web Designer</h5>										
				</div>
				
				<div class = "col-lg-3 col-md-3 col-sm-3">
										
				</div>
			</div>
		


	
		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
 
<?php include 'footer.php';?> 						
<?php include 'script.php';?>
<?php include'includes/links.php';?>
