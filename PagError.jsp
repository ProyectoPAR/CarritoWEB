<%-- 
    Document   : PagError
    Created on : 17/05/2016, 09:03:26 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="formulario">
            <p><%=request.getAttribute("mensaje_error") %></p>
        </section>
    </body>
</html>
