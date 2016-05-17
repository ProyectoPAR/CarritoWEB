<%--
    Document   : Producto
    Created on : 18/04/2016, 11:17:31 PM
    Author     : root
--%>
<%@page 
        import  = "com.par.paronline.modelo.Producto"
        import = "com.par.paronline.modelo.ManagerDB"
        import = "com.par.paronline.modelo.ListaProductos"
        import = "com.par.paronline.modelo.ListaCategorias"
        import = "java.util.ArrayList"
        import = "java.sql.SQLException" 
        import = "java.io.PrintWriter"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>

<%!//esta funcion obtiene todos las categorias y las almacena en un arraylist de String
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Paronline</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
    </head>
    <body>
        <section id="formulario">
            <form action="Producto" method="get">
                <select name="categoria">
                    <option value="all">Todas</option>
                    <%//cargamos las categorias obtenidas de la funcion en un select, exite un valor por default
                        ListaCategorias categorias = new ListaCategorias();
                        categorias.getListaCategorias();
                        for(int i = 0 ; i < categorias.size() ; i ++){%> 
                            <option value="<%=categorias.get(i).getDescripcion()%>"> 
                            <%=categorias.get(i).getDescripcion()%> </option> <%}
                    %>
                </select>
                <input type="text" name="descripcion" placeholder="Escriba una descripcion del producto"/>
                <input type="submit" value="Buscar"/>
            </form>
            
                  <%
                        ListaProductos productos = (ListaProductos)session.getAttribute("lista_productos");
                        ListaProductos carrito = (ListaProductos) session.getAttribute("carrito");
                        
                        for(int i = 0 ; i < productos.size() ; i ++){%>
                            <div>
                            <%
                            if(!carrito.existeProducto(productos.get(i))){%>    
                                <form action="Carrito">
                                    <input type="hidden" name="id_producto" value="<%=productos.get(i).getId_producto()%>" >
                                    <input type="text" name="descripcion" value="<%=productos.get(i).getDescripcion()%>" readonly="yes">
                                    <input type="text" name="precio" value="<%=productos.get(i).getPrecio()%>" readonly>
                                    <input type="numeric" name="cantidad" value="1">
                                    <input type="submit" name="agregar-sacar" value="Agregar">
                                    <input type="hidden" name="lastpage" value ="producto">
                                </form>
                            <%}
                            else{ Integer cantidad = carrito.buscarId(productos.get(i).getId_producto()).getCantidad_compra();%>
                                <form action="Carrito">
                                    <input type="hidden" name="id_producto" value="<%=productos.get(i).getId_producto()%>" >
                                    <input type="text" name="descripcion" value="<%=productos.get(i).getDescripcion()%>" readonly="yes">
                                    <input type="text" name="precio" value="<%=productos.get(i).getPrecio()%>" readonly>
                                    <input type="numeric" name="cantidad" value="<%=cantidad%>"readonly="yes">
                                    <input type="submit" name="agregar-sacar" value="Sacar">
                                    <input type="hidden" name="lastpage" value ="producto">
                                </form>
                          <%}%>
                            
                            </div><%
                        }
                    %>
            
        </section>
        <div><%= (String)request.getAttribute("javax.servlet.forward.request_uri")%></div>
    </body>
</html>
