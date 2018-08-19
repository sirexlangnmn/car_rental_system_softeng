<div class = "col-md-4 col-lg-4 inquiry hideme">
					<div class = "widget">
            <div class = "widget-head" style="color: green">
              Check Reservation Status
            </div>
            <div class = "widget-content">
              <div class = "padd">
                <form class="form-horizontal" role="form" method="post" action="search.php">
                                <div class="form-group">
                                  <div class="col-lg-10 col-lg-offset-1">
                                    <input type ="text" name="rcode" class="form-control" placeholder="Reservation Code">
                                  </div>
                                </div>
                <div class="form-group">
                                  <div class="col-lg-offset-1 col-lg-10">
                                    <button type="submit" class="btn btn-sm btn-success btn-block">Search</button>   
                                  </div>
                                </div>
                              </form>
            </div>
            </div>
          </div>    
				</div>

						
       
				
					
				
       <div class = "col-md-4 col-lg-4">
          <div class = "widget">
            <div class = "widget-head" style="color: green">
              Payment Transaction Send Here
            </div>
            <div class = "widget-content">
              <div class = "padd">
                <form class="form-horizontal" action = "add_message2.php" method="post">                              
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
                                  <label class="col-lg-3 control-label">Reservation Code</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "r_code" class="form-control" 
                                    placeholder="Reservation Code" required>
                                  </div>
                                </div>
                                

                                 <div class="form-group">
                                  <label class="col-lg-3 control-label">Payment Transation</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "t_code" class="form-control" 
                                    placeholder="Payment Transaction Code" required>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Message</label>
                                  <div class="col-lg-8">
                                    <textarea name = "message" class="form-control" rows="5" placeholder="Other Message here....."required></textarea>
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
      </div>  
    </div>
    </div>