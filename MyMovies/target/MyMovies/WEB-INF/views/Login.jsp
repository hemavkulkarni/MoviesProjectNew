
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body >
<%@include file="Header.jsp" %>
<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      <div class="form-group input-group">
          
            <center><h3>New User? <a href="<c:url value='personadd'/>">Sign Up</a></h3></center>          
      </div>

      <form class="login-form" action="<c:url value='j_spring_security_check'/>" method="POST">
     	<div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       		<input type="text" placeholder="User Name" name="j_username" class="form-control"/> 
       	</div>
       	
       	 <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>	
       		<input type="password" placeholder="Password" name="j_password" class="form-control"/> 
       	</div>
       	
       	<div class="checkbox">
            <label>
              <input type="checkbox"> I agree to the <a href="#">Terms and Conditions</a>
            </label>
          </div>
       	<div class="form-group">
       		<input type="submit" value="login" class="btn btn-def btn-block"> 
      		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      		</div>
      		<div class="form-group text-center">
            <a href="#">Forgot Password</a>&nbsp;|&nbsp;<a href="#">Support</a>
          </div>
     </form> 
      </div>  
    </div>    
  </div>
</div>
</body>
</html>