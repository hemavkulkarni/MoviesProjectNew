<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%@include file="Header.jsp" %>

<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      <div class="form-group input-group">
          
            <center><h3>New User? Register Here</a></h3></center>          
          </div>

        <form:form method="POST" action="${pageContext.request.contextPath}/admin/save" class="login-form" commandName="movie" enctype="multipart/form-data">  
<!--          <div class="form-group input-group"> -->
<!--             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
<%--             <form:input class="form-control" type="text" path='movieid'  placeholder="Movie ID"/>    --%>
             
<!--           </div> -->
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='moviename'  placeholder="Movie Name"/>   
             
          </div>                 
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='director'  placeholder="Director"/>             
          </div>          
          
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            <select path="category"  id="category" name="category" class="form-control">
			   <option value="select">--- Select ---</option> 
			   <option value="English">English</option>
			   <option value="Hindi">Hindi</option>
			   <option value="Marathi">Marathi</option>			 
			</select>			      
          </div> 
          
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='price'  placeholder="Ticket Rate"/>   
             
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <span class="glyphicon glyphicon-picture"></span>
            <form:input type="file" path="file1"  name="file1" id="file1" class="form-control"/>             
          </div>                     
          <div class="form-group">
            <button class="btn btn-def btn-block">ADD MOVIE</button>
          </div>         
        </form:form>        
      </div>  
    </div>    
  </div>
</div>

</body>
</html>