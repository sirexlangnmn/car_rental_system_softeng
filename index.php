<?php include 'header.php';?>

<body>
	<br />
	<br />
	<br />
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "img/urvanZone/urvanZone.jpg" height="200" weight="200" alt="Company Logo"/>
							<h3 class = "center" style="color: green">Urvan Zone Car Rental</h3>
					</div>										
				</div>

				
	<?php include 'navbar.php';?>
	<?php include 'menu-tab.php';?>
	


		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12"> <!-- set boundaries screen for image,dapat pare-pareho yun number -->
				<div class = "col-md-9 col-lg-9 image-content"> <!-- size of image content -->
					<div class = "widget">
						<div class = "widget-content">
							<?php include 'slider.php';?> <!-- image slider sa main page -->
						</div>						
					</div>				
				</div>
				

			
				
        <div class="col-md-3 col-lg-3 hideme">
              <!-- Widget -->
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left" style="color: green">Contact Information</div>
                   
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                                               <!-- Contact box -->
                             <div class="support-contact">
                                <!-- Phone, email and address with font awesome icon -->
                                
                                <p><i class="fa fa-phone" style="color: green"></i>&nbsp; Globe / Viber<strong>:</strong> 09178853375</p>
                                <hr />
								<p><i class="fa fa-phone" style="color: green"></i>&nbsp; Sun<strong>:</strong> 09228167106</p>
                                <hr />
								<p><i class="fa fa-phone" style="color: green"></i>&nbsp; Smart<strong>:</strong> 09184825656</p>
                                <hr />
                                <p><i class="fa fa-phone" style="color: green"></i>&nbsp; Landline<strong>:</strong> 02-500-5940</p>
                                <hr />
								<p><i class="fa fa-envelope" style="color: green"></i>&nbsp; Email<strong>:</strong>urvanzonerental@yahoo.com</p>
                                <hr />
                                <p><i class="fa fa-home" style="color: green"></i>&nbsp; Address<strong>:</strong> J9 - 33 Evangelista Avenue Corner F. Marcelo Street Santolan Pasig City </p>
                <hr />
        <p><i class="fa fa-facebook" style="color: green"></i>&nbsp; Facebook<strong>:</strong> facebook.com/urvanzonerental </p>
                <hr />              
                              
                              
                             </div>
                  </div>
                </div>

              </div> 

            </div>
      </div>  
    </div>
    		<br />
	<br />
	<br />
	<div class="container" style="margin-top: 25px;">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>
					 <a class="btn btn-sm btn-success btn-block" href="reservation.php"><i class="icon-calendar"></i> <strong>Book Online Here</strong></a>
					<img src="img/urvanZone/Tracking.png" class="img-responsive"/>
					</p>
				</div>
				
			<div class="col-md-7">
			<h1 style="font-size: 25px; font-weight: bold; color: green">Urvan Zone Car Rental History:</h1>
			<p>    Urvan Zone Car Rental was started year 2008 by Mr. Richard Peradilla in Santolan, Pasig City. He used his own Toyota Innova as a first car to be rented by the client. He also serve as a driver for the rental. As the time goes by, Mr. Peradilla invest more until he comes up with 280 rental cars until the present time.</p>
			<br />
				<h1 style="font-size: 25px; font-weight: bold; color: green">Mission:</h1>
				<p> To become one of the international competitor that reach the potential needs of the clients by in terms of good services and time management.</p>
			<br />
				<h1 style="font-size: 25px; font-weight: bold ; color: green">Vision:</h1>
			<p>To reach the global competitiveness for the potential demand of the client while understanding and learning the nature of the people.</p>
			<br />
				<h1 style="font-size: 25px; font-weight: bold; color: green">Core Values:</h1>
			<p>The Core Values of the Urvan Zone Car Rental Services:</p>
			<br />
			<p>1. To give a good services by terms of giving a good quality of cars.</p>
      <br>
      <p>2. To create a name in the good industry for the greater good.</p>
      <br>
      <p>3. To give unique services to the demand of the good customer.</p>
			<br />
			<br />
		</div>
		</div>
		</div>
		</div>
		<br />
		<br />
				

<?php include 'footer.php';?> 	
<?php include 'script.php';?>
 <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
</body>
</html>



