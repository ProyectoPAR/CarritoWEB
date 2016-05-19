<%-- 
    Document   : ConfirmarCompra.jsp
    Created on : 18/05/2016, 06:06:08 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <title>Confirmar Compra</title>
    </head>
    <body>
        <%
            Usuario user = (Usuario) request.getSession(true).getAttribute("user");
        %>
        <section id="formulario">
            <form id="formulario_compra" action="ServletCompra" method="Post">
                <label>Seleccion su forma de pago</label>
                <input type="radio" name="forma_pago" id="efectivo" value="Efectivo" onclick="efectivo()" unchecked> Efectivo <br>
                <input type="radio" name="forma_pago" id="tarjeta" value="Tarjeta" onclick="tarjetear()" unchecked> Tarjeta de Credito <br>
                <label>Direccion de envio: </label> <input type="text" name="direccion_envio" value="<%=user.getDireccion()%>" > <br>
                <input type="submit" name="confirmar" value="Comprar" onclick="">
                <input type="hidden" name="confirmar_compra" value="si">
            </form>
        </section>
        <script>
        function tarjetear(){
                form = document.getElementById("formulario_compra");
                numero_tarjeta = document.createElement("input");
                numero_tarjeta.type = "number";
                numero_tarjeta.id = "numero_tarjeta";
                numero_tarjeta.name = "numero_tarjeta";
                numero_tarjeta.placeholder = "Numero de Tarjeta"
                form.appendChild(numero_tarjeta);
                document.getElementById("tarjeta").onclick = "";
            }
            function efectivo(){
                document.getElementById("formulario_compra").removeChild(numero_tarjeta);
            }
        </script>
    </body>
</html>
