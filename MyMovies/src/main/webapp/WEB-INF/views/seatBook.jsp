<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="Absolute-Center is-Responsive">
				<div id="logo-container"></div>
				<div class="col-sm-12 col-md-10 col-md-offset-1">
					<div class="form-group input-group">
						<center>
							<h3>Select number of seat for Booking</h3>
						</center>

					</div>
					<form class="login-form" action="<c:url value='memberShip.obj'/>"
						method="POST">
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <select
								path="category" id="category" name="category"
								class="form-control">
								<option value="select">--- Select ---</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>

						<div class="form-group">
							<input type="submit" value="Book Seat"
								class="btn btn-def btn-block">
						</div>
						<a href="memberShip.obj" style="margin: 50;">Book seat</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>