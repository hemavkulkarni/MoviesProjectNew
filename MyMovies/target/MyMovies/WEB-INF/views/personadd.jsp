

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>
 <script>
  function myFunction() {
   var pass1 = document.getElementById("pass1").value;
   var pass2 = document.getElementById("pass2").value;
   var ok = true;
   if (pass1 != pass2) {
       alert("Passwords Do not match");
       document.getElementById("pass1").style.borderColor = "#E34234";
       document.getElementById("pass2").style.borderColor = "#E34234";
       ok = false;
   }
   //else {
      // alert("Passwords Match!!!");
  // }
   return ok;
}
  
  </script>
  </head>
<body >
<%@include file="Header.jsp" %>

 <div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      <div class="form-group input-group">
          
            <center><h3>New User? Register Here</a></h3></center>          
          </div>

        <form:form method="POST" action="saveUser" class="login-form" commandName="userData">  
         <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='uname'  placeholder="User Name"/>   
            <form:errors path="uname" cssStyle="color: #ff0000;"/>       
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <form:input class="form-control" id="pass1" type="password" path='password' placeholder="Password"/>   
            <form:errors path="password" cssStyle="color: #ff0000;"/>     
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <form:input class="form-control" id="pass2" type="password" path='rpassword' placeholder="Confirm Password"/>    
            <form:errors path="rpassword" cssStyle="color: #ff0000;"/>    
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            <form:input class="form-control" path='emailid' placeholder="Email ID"/>
            <form:errors path="emailid" cssStyle="color: #ff0000;"/>        
          </div> 
          <div class="form-group">
            <button class="btn btn-def btn-block"  onClick="return myFunction()">Register</button>
          </div> 
        </form:form>        
      </div>  
    </div>    
  </div>
</div>
</body>
</html> 
    