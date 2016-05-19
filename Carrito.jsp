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
                    Usuario user = (Usuario) request.getSession(true).getAttribute("user");
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
                <label>Total de la Compra: <input type="text" name="monto_total" value="<%=carrito.getMonto_total()%>" readonly="yes"></label>
            </form>
            <form action="ServletCompra" id="formulario_compra">
                <input type="submit" name="confirmar" value="Confirmar Compra" onclick="verificar()">
                <input type="hidden" name="confirmar_compra" value="no">
            </form>
        </section>
        <script>
            function verificar(){
                
            }
            
        </script>
    </body>
</html>
