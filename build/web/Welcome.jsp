<%-- 
    Document   : Welcome
    Created on : Oct 15, 2016, 7:30:14 PM
    Author     : 11502-CL02
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.flipkart.models.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
       
        <%
            Customer cus=(Customer)session.getAttribute("user");
        %>
        <%
            int[] i={4,8,2,7};
        %>
        
        <c:forEach var="n" items="${pageScope.i}">
            <h1>${n}</h1>
        </c:forEach>
            
            ${param.name}
            
            <%=request.getParameter("name") %>
            
            ${1+2}
            
            ${sessionScope.user.customerName}
            
            ${8 div 2} ${8 / 2}
            
            ${8 mod 3   } ${8 % 2}
    </body>
</html>
