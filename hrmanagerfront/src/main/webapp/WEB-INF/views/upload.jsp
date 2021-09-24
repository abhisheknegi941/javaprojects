<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/upload.css"></c:url>">
</head>
<body>

     <% 	      
	   String username =(String)session.getAttribute("username");
     %>
	<!-- header -->
	<div class="fixed-header">
		<div class="container1">
			<div class="welcome text-center">
				<h6 style="text-transform: uppercase; color: black;">
					<b>Welcome <c:out value="${username}"></c:out> !
					</b>
				</h6>
				&nbsp; &nbsp; &nbsp; <a
					href="${pageContext.request.contextPath}/logout"> <i
					class="fas fa-times-circle" data-toggle="tooltip"
					data-placement="bottom" title="Logout"> </i>
				</a>
			</div>
		</div>
	</div>
	<!--/ header -->

	<!-- form-body -->
	<div class="container">
		<div class="wrapper">
			<h6 class="heading">Upload Employee Details</h6>

			<form name="addemployee" method="POST" action="addemployee">
				<div class="form-in ">
					<div class="form-group d-flex">
						<label class="labelup bg-secondary" style="font-size: 15px">Employee Code</label> 
						<label style="margin-left: 16px">:</label><br> 
						<input class="mt-1"
							   type="text" 
							   id="empCode" 
							   name="empCode"
							   onkeyup="checkEmpCode()"
						       style="height: 25px; margin-left: 48px; font-size: 13px; width: 200px" 
						       placeholder="Enter Employee code"
						       required="required"
						       autocomplete="off" /><br>
					</div>
                    
                    <span style="color: red; position: relative; left: 47px;">
				    	<span id="errcode"></span>
				    </span>  
				    
					<div class="form-group d-flex">

						<label class="mt-2 labelup bg-secondary" style="font-size: 15px">Employee Name</label>
						<label class="mt-1" style="margin-left: 12px">:</label><br> 
						<input
							style="height: 25px; margin-left: 48px; margin-top: 10px; font-size: 13px; width: 200px"
							id="empName"
							type="text"
							name="empName"
							onkeyup="checkName()"
							maxlength="100"
							placeholder="Enter Name"
							required="required"
							autocomplete="off"
						/><br>
					</div>
                    <span style="color: red; position: relative; left: 47px;">
				    	<span id="errname"></span>
				    </span>  
                    
					<div class="form-group d-flex">
						<label class="mt-2 labelup bg-secondary" style="font-size: 15px; height:25px">Location </label>
						<label class="mt-1" style="margin-left: 66px">:</label><br> 
						<input
							 style="height: 22px; margin-left: 49px; margin-top: 10px; font-size: 13px; width: 200px; height:40px; "
							 id="empLocation" 
							 type="text" 
							 name="empLocation"
							 maxlength="500"
							 placeholder="Enter location"
							 required="required"
							 autocomplete="off"
							  />
						 <br>
					</div>

					<div class="form-group d-flex">
						<label class="mt-2 labelup bg-secondary" style="font-size: 15px">Email</label>
						
						  <label class="mt-1" style="margin-left: 85px">:</label>   
						<input
							style="height: 25px; margin-left: 49px; margin-top: 10px; font-size: 13px; width: 200px"
							id="empEmail" 
							type="text" 
							name="empEmail" 
							onkeyup="checkEmail()"
							maxlength="100"
							placeholder="Enter email"
							required="required"
							autocomplete="off"
							/><br>
                    </div>
                    	<span style="color: red; position: relative; left: 47px;">
				    	  <span id="erremail"></span>
				        </span>  
					

					<div class="form-group d-flex">
						<label class="mt-2 labelup bg-secondary" style="font-size: 15px;">Date of Birth</label>
						<label class="mt-1" style="margin-left: 38px">:</label>
						<input
							style="height: 25px; margin-left: 50px; margin-top: 10px; font-size: 13px; width: 200px"
							id="empDob" 
							type="text" 
							name="empDob"
							onkeyup="checkDate()" 
							placeholder="dd/mm/yyyy"
							required="required"
							autocomplete="off"
					    /><br>
					</div>

                    <span style="color: red; position: relative; left: 47px;">
				    	  <span id="errdate"></span>
				    </span>  

					<div class="d-flex  mt-5">
						<button type="submit" style=" font-size: 12px; width:90px">
						    Save
						</button>
						
						<button 
						      type="reset" 
						      onclick="location.href='/hrmanagerfront/afterlogin'"
						      style=" margin-left: 10px; font-size: 12px;width:90px ">
					    	Cancel
						</button>
					</div>

				</div>
			</form>
			<p style="margin-left: 200px; font-size: 13px" class="text-danger">
				<b> ${empexist} </b>
			</p>
		</div>
	</div>
	<!-- /form-body -->

	<!-- footer -->
	<div class="fixed-footer">
		<div class="container1">
			<nav></nav>
		</div>
	</div>
	<!-- /footer -->
	
<script type="text/javascript" src="<c:url value="/resources/js/upload.js"></c:url>"></script>	
</body>
</html>