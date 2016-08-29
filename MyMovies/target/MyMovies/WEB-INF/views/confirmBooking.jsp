<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Header.jsp" %> 
<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      
      <form class="login-form" action="<c:url value='memberShip.obj'/>" method="POST">
	  <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            Do you want to proceed for payment		      
          </div> 
          
          <div class="form-group">
       		<input type="submit" value="Make Payment" class="btn btn-def btn-block"> 
      	
      		</div>
      		      		<a href="memberShip.obj" style="margin: 50;">Make Payment</a>
		
      		</form>
          </div>
          </div>
          </div>
          </div>
          
</body>
</html>