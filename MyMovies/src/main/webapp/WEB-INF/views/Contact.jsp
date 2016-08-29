<!DOCTYPE html>
<html lang="en">
<%@include file="Header.jsp" %> 
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Mumbai, Maharashtra</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +9810203040</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: CollectionMovies@gmail.com</p>	   
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>	
    </div>
  </div>
  <br>
  <h3 class="text-center">From The CollectionMovies.com</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Abhay</a></li>
    <li><a data-toggle="tab" href="#menu1">Sumit</a></li>
    <li><a data-toggle="tab" href="#menu2">Monalisa</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Abhay D., Manager</h2>
      <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Sumit I., VP</h2>
      <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Monalisa D., CEO</h2>
      <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
    </div>
  </div>
</div>

</body>
</html>
