<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored = "false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file ="./base.jsp" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/edit.css"></c:url>">
</head>
<body>

    	<!-- JSP for editing employee information -->

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
      <!-- /header -->

	<!-- form-body -->
	<div class="container">
		<div class="wrapper">
			<h6 class="heading">Edit Employee Details</h6>
         
            <form method="POST" action="editForm">
               	<div class="form-in ">
					<div class="form-group d-flex">
					  	<label class="labelup bg-secondary" style="font-size: 15px" >Employee Code</label>
					  	<label style="margin-left: 16px">:</label><br> 
					    <input 
					       class="mt-1 text-center"
					       type="text"   
					       style="height: 25px; margin-left: 48px;
					        font-size: 13px; width: 200px"
					       disabled="disabled"
					       value = "${editemployee.empCode}">
					       <input 
					        type="hidden" 
					        name="empCode" 
					        value = "${editemployee.empCode}" >
				        	<br>
					</div>
					
					<div class="form-group d-flex">
					  	<label class="mt-2 labelup bg-secondary" style="font-size: 15px">
					  	  Employee Name
					  	</label>
					  	<label class="mt-1" style="margin-left: 12px">:</label><br> 
					  	<input
					  	    class="text-center" 
				         	style="height: 25px; margin-left: 48px; margin-top: 10px; font-size: 13px; width: 200px"
					        id="empName" 
					        type="text" 
					        onkeyup="checkName()"
					        name="empName" 
					        value="${editemployee.empName}" 
					        autocomplete="off"/><br>
					
					</div>
					<span style="color: red; position: relative; left: 47px;">
				    	<span id="errname"></span>
				    </span> 
					
					
					<div class="form-group d-flex">
					  <label class="mt-2 labelup bg-secondary" style="font-size: 15px; height: 25px">Location </label>
					  <label class="mt-1" style="margin-left: 66px">:</label><br> 
					  <input 
					    class="text-center"
					    style="height: 50px; margin-left: 49px; margin-top: 10px; font-size: 13px; width: 200px"
					    id="empLocation" 
					    type="text" 
					    name="empLocation" 
					    value="${editemployee.empLocation}" 
					    autocomplete="off"/><br>
					</div>
					
					<div class="form-group d-flex">
					   <label class="mt-2 labelup bg-secondary" style="font-size: 15px">Email</label>
					   <label class="mt-1" style="margin-left: 85px">:</label> 
					   <input
					       class="text-center"
					       style="height: 25px; margin-left: 49px; margin-top: 10px; font-size: 13px; width: 200px"
					       id="empEmail" 
					       onkeyup="checkEmail()"
					       type="email" 
					       name="empEmail" 
					       value="${editemployee.empEmail}" 
					       autocomplete="off"/><br>
					</div>
					<span style="color: red; position: relative; left: 47px;">
				    	<span id="erremail"></span>
				    </span> 
					
					
					<div class="form-group d-flex">
					 <label class="mt-2 labelup bg-secondary" style="font-size: 15px">Date of Birth </label>
					 <label class="mt-1" style="margin-left: 38px">:</label>
					 <input
					   class="text-center"
					   style="height: 25px; margin-left: 50px; margin-top: 10px; font-size: 13px; width: 200px"
					   id="empDob"
					   onkeyup="checkDate()" 
					   type="text"  
					   value="${editemployee.empDob}"
					   name="empDob" 
					   autocomplete="off"/><br>
					</div>
					
					<span style="color: red; position: relative; left: 47px;">
				       <span id="errdate"></span>
				    </span>  
					

					<div class="d-flex  mt-5">
						<button type="submit" 
							style=" font-size: 12px; width:90px">Save</button>
						<button type="button"
							onclick="location.href='/hrmanagerfront/afterlogin'"
							
							style="margin-left: 10px; font-size: 12px; width:90px">Cancel</button>
					</div>
				</div>
			    
            </form>

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