<%-- 
    Document   : login
    Created on : Oct 8, 2016, 11:44:34 AM
    Author     : 11502-CL02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div>Sign In</div>
        <form action="Authenticate" method="post">
            <input type="email" name="mailId" placeholder="Email ID" /><br/><br/>
            <input type="password" name="password" placeholder="password" /><br/><br/>
            <input type="submit" value="Login" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
