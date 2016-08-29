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
          
            <center><h3>Credit Card Information</h3></center>          
          </div>

			<a href="${flowExecutionUrl}&_eventId_home">Home</a>
			<form:form modelAttribute="creditCardDetails">
				<br />
				<form:label path="type">Credit Card Type :</form:label>
				<form:input path="type" type="text"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach 
					items="${flowRequestContext.messageContext.getMessagesBySource('type')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<form:label path="id">Credit Card ID:</form:label>
				<form:input path="id" type="text"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="email">Email ID:</form:label>
				<form:input path="email" type="text"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="mobile">Mobile #:</form:label>
				<form:input path="mobile" type="text" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>


				<br />
					<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
				
			</form:form>

        <%-- <form:form method="POST" action="thankCustomer.jsp" class="login-form" commandName="movie">  

          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='type'  placeholder="Card type"/>   
             
          </div>
                   <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='id'  placeholder="Credit Card ID"/>   
             
          </div>
          
          <div class="form-group">
            <button class="btn btn-def btn-block">PAYMENTE</button>
          </div> 
         
        </form:form>         --%>
      </div>  
    </div>    
  </div>
</div> 

</body>
</html>