<%-- 
    Document   : MisCompras
    Created on : 14/05/2016, 04:56:32 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.par.paronline.modelo.Compra"%>
<%@include file = "MenuPrincipal.jsp"%>

<%
    Usuario user = (Usuario)session.getAttribute("user");
    ArrayList<Compra> compras_user = Compra.getComprasCliente(user.getId_usuario());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/misCompras.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="reporte">
            <%if(compras_user.isEmpty()){%>
                <div>Usted no tiene compras registradas</div>
            <%}
            else{
                for(int i = 0 ; i < compras_user.size() ; i ++){%>
                <fieldset>
                    <legend>Compra Nro <%=i + 1%></legend>
                    <table>
                        <tr>
                            <th>Id Compra</th>
                            <th>Fecha</th>
                            <th>Monto total</th>
                            <th>Forma de Pago</th>
                            <%if(compras_user.get(i).getForma_pago().equals("Tarjeta"))%><th>Numero Tarjeta</th>
                            <th>Direccion de Envio</th>
                        </tr>
                        <tr>
                            <td><%=compras_user.get(i).getId_compra()%></td>
                            <td><%=compras_user.get(i).getFecha()%></td>
                            <td><%=compras_user.get(i).getMonto_total()%></td>
                            <td><%=compras_user.get(i).getForma_pago()%></td>
                            <%if(compras_user.get(i).getForma_pago().equals("Tarjeta"))%><th><%=compras_user.get(i).getNumero_tarjeta()%></th>
                            <td><%=compras_user.get(i).getDireccion_envio()%></td>
                        </tr>
                        
                        <tr>
                            <th>Productos</th>
                            <th>Categoria</th>
                            <th>Precio Unitario</th>
                            <th>Cantidad</th>
                        </tr>
                        <% 
                            ListaProductos productos = compras_user.get(i).getProductos();
                            for(int j = 0 ; j < productos.size() ; j ++){%>
                            <tr>
                                <td><%=productos.get(j).getDescripcion()%></td>
                                <td><%=productos.get(j).getCategoria()%></td>
                                <td><%=productos.get(j).getPrecio()%></td>
                                <td><%=productos.get(j).getCantidad_compra()%></td>
                            </tr>
                            <%}
                        %>
                    </table>
                </fieldset>
                <%}
            }%>
            
        </section>
    </body>
</html>
