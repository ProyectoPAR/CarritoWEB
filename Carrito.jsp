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
                <label>Total de la Compra: <input type="text" name="monto_total" value="<%=carrito.getMonto_total()%>"></label>
            </form>
            <form action="ServletCompra" id="formulario_compra">
                <label>Seleccion su forma de pago</label>
                <input type="checkbox" name="forma_pago" id="efectivo" value="Efectivo" onclick="efectivo()" > Efectivo <br>
                <input type="checkbox" name="forma_pago" id="tarjeta" value="Tarjeta" onclick="tarjetear()"> Tarjeta de Credito <br>
                <input type="submit" name="confirmar" value="Confirmar Compra" onclick="verificar()">
            </form>

            <div><%= (String)request.getAttribute("javax.servlet.forward.request_uri")%></div>
        </section>
        <script>
            function verificar(){
            }
            function tarjetear(){
                
                form = document.getElementById("formulario_compra");
                numero_tarjeta = document.createElement("input");
                numero_tarjeta.type = "text";
                numero_tarjeta.id = "numero_tarjeta";
                numero_tarjeta.name = "numero_tarjeta";
                numero_tarjeta.placeholder = "Numero de Tarjeta"
                form.appendChild(numero_tarjeta);
                document.getElementById("tarjeta").onclick = "";
                
            }
            function efectivo(){
                if(document.getElementById("numero_tarjeta") !== none){
                    document.removeChild(numero_tarjeta);
                }
            }
        </script>
    </body>
</html>
