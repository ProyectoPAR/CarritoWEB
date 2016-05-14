<%-- 
    Document   : Carrito
    Created on : 19/04/2016, 12:14:54 AM
    Author     : root
--%>
<%@page 
        import  = "com.par.paronline.modelo.Producto"
        import = "java.util.ArrayList"
        import = "java.sql.SQLException" 
        import = "java.io.PrintWriter"
        import = "com.par.paronline.modelo.ListaProductos"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/registro.css">
    </head>
    <body>
        <section id="formulario">
            <form action="ServletPop" method="get" name="producto">
                <%
                    ListaProductos carrito = (ListaProductos)session.getAttribute("carrito");
                    if(carrito.size() > 0){
                        for(int i = 0 ; i < carrito.size() ; i ++){%>
                        <div name="producto">
                            <input type="text" name="descripcion" value="<%=carrito.get(i).getDescripcion()%>" readonly="yes">
                            <input type="numeric" name="cantidad" value="<%=carrito.get(i).getCantidad_compra()%>" readonly="yes">
                            <input type="submit" name="agregar" value="Sacar">
                        </div>
                        <%}
                    }
                    else{%>
                        <h2>El carrito esta vacio</h2>
                  <%}
                %>
            </form>
            <form action="ServletCompra" id="formulario_compra">
                <label>Seleccion su forma de pago</label>
                <input type="checkbox" name="forma_pago" value="Efectivo"> Efectivo <br>
                <input type="checkbox" name="forma_pago" value="Tarjeta" onclick="tarjetear()"> Tarjeta de Credito <br>
                <input type="submit" name="confirmar" value="Confirmar Compra" onclick="verificar()">
            </form>

            <div><%= (String)request.getAttribute("javax.servlet.forward.request_uri")%></div>
        </section>
        <script>
            function verificar(){
            }
            function tarjetear(){
                
                form = document.getElementById("formulario_compra");
                if(form.getElementsByName("numero_tarjeta") == null){
                    numero_tarjeta = document.createElement("input");
                    numero_tarjeta.type = "text";
                    numero_tarjeta.name = "numero_tarjeta";
                    form.appendChild(numero_tarjeta);
                }
            }
        </script>
    </body>
</html>
