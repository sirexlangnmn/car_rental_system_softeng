<?php include 'header.php';?>
<style>
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.button2 {
  display: inline-block;
  padding: 5px 5px;
  font-size: 14px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #blue}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>

<body class = "admin_body" style = "background-color:black !important; background:none;">

<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    
    <a style = "color:white;" href="../index.php">UrvanZone Car Rental</a>
  </div>
  <!-- User name -->
  <div class="lockscreen-name">System Administrator</div>

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
		<img src = "../img/urvanZone/urvanZone.jpg" height="200" weight="200" alt="Company Logo"/>
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form class="lockscreen-credentials" action = "login.php"method = "POST">
     
      <div class="input-group">
        <input type="username" name = "username" class="form-control" placeholder="username" autofocus>
        <input type="password" name = "password" class="form-control" placeholder="password" autofocus>

        <div class="input-group-btn">
          <button name = "login"class="button"><i class="fa fa-arrow-right "></i></button>
           </div>     
      </div>
    </form>
	
	

     
<div class="lockscreen-wrapper">
  
    
         <div align="center"> 	
<button type="submit" onClick="setDifference(this.form);" class="btn btn-info"><i class="icon-check"></i>Forgot Password?</button>
<button type="submit" onClick="setDifference(this.form);" class="btn btn-info"><i class="icon-check"></i>Register New User</button>
       </div>
	   </div>
		 
		 
      
		
					
	
 
	
	
    <!-- /.lockscreen credentials -->

 

<!-- JS -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>