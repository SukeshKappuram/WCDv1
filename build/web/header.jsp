<%-- 
    Document   : header
    Created on : Oct 16, 2016, 12:05:24 PM
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
        <style>
            .header{
                width: 100%;
                height: 50px;
                background-color: blue;
                color: yellow;
                font-size:30px;
                text-align: center;
            }
            .footer{
                width: 100%;
                height: 50px;
                background-color: blue;
                color: yellow;
                font-size:15px;
                text-align: center;
                bottom: 0px;
                position: fixed;
            }
            .menu{
                width: 100%;
                height: 20px;
                background-color: blueviolet;
            }
            .menu a{
                color: yellow;
                font-size:15px;
                padding: 2px 50px 2px 50px;
                text-decoration: none;
            }
            .logged{
                float: right;
                line-height: -12px;
            }
            .logged i{
                font-size:12px;
            }
        </style>
    </head>
    <body>
       
        <div class="header">Flipkart
            <div class="logged">
        <c:if test="${not empty sessionScope.user}">
        <i>Hello  ${sessionScope.user.customerName}!</i><br/>
        <i>you are logged in as  ${sessionScope.user.mailId}!</i>
        
        <c:forEach var="cookies" items="${cookie}">
        <c:if test="${cookies.key eq 'phone'}">
                <i>Contact:${cookies.value.value}</i><br/>
            </c:if>
	</c:forEach>
             
        </c:if>
            </div>
        </div>
        <div class="menu">
            <a href="#">Home</a>
            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
            <a href="#">Feedback</a>
            <c:if test="${empty sessionScope.user}">
            <a href="login.jsp">Sign in</a>
            <a href="signUp.html">Sign up</a>
            </c:if>
            <c:if test="${not empty sessionScope.user}">
            <a href="logout.jsp?n=${sessionScope.user.customerName}">Logout</a>
            </c:if>
           
        </div>
         
       
    </body>
</html>
