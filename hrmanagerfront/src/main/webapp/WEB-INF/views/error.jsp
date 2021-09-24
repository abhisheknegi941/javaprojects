<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
    
<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>404 Error Page </title>
      <link rel="stylesheet" href="<c:url value="/resources/css/error.css"></c:url>">
   </head>
   <body>
      <div id="error-page">
         <div class="content">
            <h2 class="header" data-text="404">
               404
            </h2>
            <h4 data-text="Opps! Page not found">
               Opps! Page not found
            </h4>
            <p>
               Sorry, the page you're looking for doesn't exist.</p>
<%--             <div class="btns">
               <a href="${pageContext.request.contextPath}/afterlogin"/>return home</a>
            </div> --%>
         </div>
      </div>
   </body>
</html>