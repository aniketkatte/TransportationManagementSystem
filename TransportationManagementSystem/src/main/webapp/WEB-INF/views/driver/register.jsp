<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href='<spring:url value="/css/login.css"/>' type="text/css"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
	<script type="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href='<spring:url value="/css/header.css"/>' type="text/css"/>
</head>
<body>
<h1>YRC Transport</h1>
<ul>
		<li><a class="active" href="<spring:url value='/'/>">Home</a></li>
		<li><a href="<spring:url value='/admin/contact'/>">Contact</a></li>
		<li><a href="<spring:url value='/admin/about'/>">About</a></li>
		
		<li><a href='<spring:url value="/driver/logout"/>'>logout</a> </li>
	</ul>
	<h1>New Driver Registration</h1>
	<form:form method="post" modelAttribute="driver">
	

	<div class="row">
    <div class="col-md-6 mx-auto p-0">
        <div class="card">
           <div class="login-box">
               <div class="login-snip"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"></label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Driver Register</label>
                    <div class="login-space">
                
                        <div class="sign-up-form">
                            <div class="group"> <label for="dName" class="label">DriverName</label> <input id="dName" type="text"  name ="dName" class="input" placeholder="Create your Username"> </div>
                             <div class="group"> <label for="dEmail" class="label">DriverEmail</label> <input id="dEmail" type="text"  name ="dEmail" class="input" placeholder="Enter your email address"> </div>
                            <div class="group"> <label for="dPassword" class="label">Password</label> <input id="dPassword" type="password" name ="dPassword" class="input" data-type="password" placeholder="Create your password"> </div>
                              <div class="group"> <label for="vehicleNumber" class="label">Driver Vehicle Number</label> <input id="vehicleNumber" type="text"  name ="vehicleNumber" class="input" placeholder="Enter your vehicle Number"> </div>
                            
                            <div class="group"> <input type="submit" class="button" value="register"> </div>
                            <div class="hr"></div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form:form>
	<h3 style="color:red">${requestScope.message}</h3>
</body>
</html>