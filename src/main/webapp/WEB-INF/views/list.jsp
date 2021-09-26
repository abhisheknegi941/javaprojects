<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file = "./base.jsp" %>

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/list.css"></c:url>">
</head>
<body>
  

  <% 	      
	  String username =(String)session.getAttribute("username");
      response.setHeader("Cache-Control", "no-cache, no-store");
      String strDateFormat = "dd/MMM/yyyy"; //Date format is Specified
      SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
  %>

	<div class="fixed-header">
		<div class="container1">
			<!-- <nav> -->
			<div class="welcome text-center">
				<h6 style="text-transform: uppercase; color: black;">
					<b>Welcome <c:out value="${username}"></c:out> !</b>
				</h6>
				&nbsp; &nbsp; &nbsp;
				 <a href="${pageContext.request.contextPath}/logout">
				   <i 
				      class="fas fa-times-circle" 
				      data-toggle="tooltip" 
				      data-placement="bottom" 
				      title="Logout">
				   </i> 
				 </a>
				
			</div>
			<!-- </nav> -->
		</div>
	</div>

    <!-- list body -->

	<div class="container">

		<div class="wrapper">
                 <h6 class="heading">Employee Listing</h6>
			<div class="main_list">

				<div class="upbtns">
					<a class="btn btn-secondary" style="margin-left: 700px"
						href="${pageContext.request.contextPath}/uploademployee">
						Upload Details </a> &nbsp; &nbsp;
					<button type="button" class="btn btn-secondary"
						onclick="location.href='http://localhost:5000/employees/export/pdf'">Download
						Details</button>
                </div>
				<table>
					<tr class="text-center">

						<th>Employee Code</th>
						<th>Employee Name</th>
						<th>Location</th>
						<th>Email</th>
						<th>Date Of Birth</th>
						<th>Action</th>
					</tr>

					<c:forEach items="${list}" var="e">
						<tr>
							<td style="height: 11%; width: 11%;" class="text-center"><c:out
									value="${e.empCode}" /></td>

							<td style="height: 11%; width: 12%;" class="text-center"><c:out
									value="${e.empName}" /></td>

							<td style="height: 11%; width: 12%;" class="text-center"><c:out
									value="${e.empLocation}" /></td>

							<td style="height: 11%; width: 15%;" class="text-center"><c:out
									value="${e.empEmail}" /></td>

							<td style="height: 11%; width: 15%;" class="text-center">
							       
						       <c:set var = "dob" scope="application" value ="${e.empDob} "></c:set>
						       
                               <c:out value = "${e.empDob}"/>       							    
							   
							</td>

                            <td>
								<button 
								       id="${p.empCode}"
		                               onclick="location.href='${pageContext.request.contextPath}/editemployee?id=${e.empCode}'">
		                               Edit
		                        </button>
								<button 
								    id="${p.empCode}"
									onclick="location.href='${pageContext.request.contextPath}/deleteemployee?id=${e.empCode}'">
									Delete
								</button>
							</td>                           
                        </tr>

					</c:forEach>

				</table>
				<input type="hidden">
			</div>
		</div>
	</div>

	<!-- list body -->
    
	<div class="fixed-footer">
		<div class="container1">
			<nav></nav>
		</div>
	</div>
</body>
</html>