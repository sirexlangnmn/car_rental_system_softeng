<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
    box-sizing: border-box;
}

.columns {
    float: left;
    width: 33.3%;
    padding: 4px;
	background-color: white;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

img {
    border-radius: 12px;
}

.price:hover {
    box-shadow: 0 16px 24px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: red;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: white;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: 5px solid #eee;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}
</style>
</head>
<body>
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

<h2 style="text-align:center; color: green"">Vehicle Gallery</h2>
<div class="container">
<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Ford Everest</li>
	<li  class="grey"><a href="gallery/fordEverest.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 / 10 Hrs <br> Php 3,000 Out of town <br> Php 3,000 with driver</li>
    <li>Model: 2017</li>
    <li>Color: White, Black</li>
    <li>7 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Foton Traveller Deluxe Blue</li>
	<li  class="grey"><a href="gallery/fotonTravellerDeluxeBlue.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 / 10 Hrs in Metro Manila <br> Php 3,000 Out of town <br> 3,000 with driver</li>
    <li>Model: 2017</li>
    <li>Color: Blue</li>
    <li>11 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Foton Traveller White</li>
	<li  class="grey"><a href="gallery/fotonTravellerWhite.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 / 10 Hrs in Metro Manila <br> Php 3,000 Out of town <br> 3,000 with driver</li>
    <li>Model: 2017</li>
    <li>Color: White</li>
    <li>11 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Honda Civic
	<li  class="grey"><a href="gallery/hondaCivic.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 1,200 / 10 Hrs <br> Php 1,800 with driver</li>
    <li>Model: 2016</li>
    <li>Color: Red</li>
    <li>4 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Hyundai Accent</li>
	<li  class="grey"><a href="gallery/hyundaiAccent.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 1,200 / 10 Hrs <br> Php 1,800 with driver</li>
    <li>Model: 2016</li>
    <li>Color: Red</li>
    <li>4 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Mitsubishi Montero</li>
	<li  class="grey"><a href="gallery/mitsubishiMontero.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 / 10 Hrs <br> Php 3,500 with driver</li>
    <li>Model: 2017</li>
    <li>Color: Dark Brown</li>
    <li>7 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>


<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Nissan NV350</li>
	<li  class="grey"><a href="gallery/nissanNV350.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 / 10 Hrs <br> Php 3,000 with driver</li>
    <li>Model: 2017</li>
    <li>Color: Black </li>
    <li>13 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Toyota Altis</li>
	<li  class="grey"><a href="gallery/toyotaAltis.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,000 / 10 Hrs self-drive <br> Php 2,500 with driver</li>
    <li>Model: 2016</li>
    <li>Color: Black</li>
    <li>5 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Toyota Grandia</li>
	<li  class="grey"><a href="gallery/toyotaGrandia.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 2,500 in Metro Manila and self-drive / 10 Hrs <br> Php 3,000 Out of town</li>
    <li>Model: 2016</li>
    <li>Color: White</li>
    <li>5 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Toyota Vios</li>
	<li  class="grey"><a href="gallery/toyotaVios.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 1,200 / 10 Hrs and self-drive <br> Php 1,800</li>
    <li>Model: 2016</li>
    <li>Color: Red</li>
    <li>7 seater</li>
    <li>Automatic </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Toyota Vios Gray</li>
	<li  class="grey"><a href="gallery/toyotaViosGray.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 1,200 / 10 Hrs and self-drive <br> Php 1,800</li>
    <li>Model: 2016</li>
    <li>Color: Gray</li>
    <li>7 seater</li>
    <li>Automatic </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Toyota Innova</li>
	<li  class="grey"><a href="gallery/fordEverest.php"><img src="img/Cars/Slider/8.jpg" height="200" weight="200" alt="Avatar"></a></li>
    <li class="grey">Php 1,200 / 10 Hrs and self-drive <br> Php 1,800</li>
    <li>Model: 2016</li>
    <li>Color: White</li>
    <li>7 seater</li>
    <li>&nbsp </li>
    <li class="grey"><a href="reservation.php" class="button">Rent Now</a></li>
  </ul>
</div>
</div>

<?php include 'footer.php';?> 						
<?php include 'script.php';?>
<?php include'includes/links.php';?>	
</body>
</html>
