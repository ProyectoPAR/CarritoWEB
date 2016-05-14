<%-- 
    Document   : Busqueda
    Created on : 25/04/2016, 05:06:00 PM
    Author     : root
--%>

<%@page 
        import  = "com.par.paronline.modelo.Producto"
        import = "com.par.paronline.modelo.ListaCategorias"
        import = "java.util.ArrayList"
        import = "java.sql.SQLException" 
        import = "java.io.PrintWriter"
        import = "com.par.paronline.modelo.ListaProductos"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>

<%!//esta funcion obtiene todos las categorias y las almacena en un arraylist de String
    
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                    <input type="text" name="descripcion" value="<%=productos.get(i).getDescripcion()%>" readonly="yes">
                                    <input type="numeric" name="cantidad" value="">
                                    <input type="submit" name="agregar-sacar" value="Agregar">
                                    <input type="hidden" name="lastpage" value ="busqueda">
                                </form>
                            <%}
                            else{%>
                                <form action="Carrito">
                                    <input type="text" name="descripcion" value="<%=productos.get(i).getDescripcion()%>" readonly="yes">
                                    <input type="numeric" name="cantidad" value="<%=productos.get(i).getCantidad_compra()%>" readonly="yes">
                                    <input type="submit" name="agregar-sacar" value="Sacar">
                                    <input type="hidden" name="lastpage" value ="busqueda">
                                </form>
                            
                          <%}%>
                          
                            </div><%
                        }
                    %>
                
                    <div><%=request.getContextPath()%></div>
                
        </section>
    </body>
</html>
