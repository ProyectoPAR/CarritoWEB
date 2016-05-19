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
        <link rel="stylesheet" type="text/css" href="css/producto.css">
    </head>
    <body>
    <article>
        <section id="buscador">
            <form action="Producto" method="post">
                <fieldset>
                <legend>Buscador de productos</legend>
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
                <input class="campo_busqueda" type="text" name="descripcion" placeholder="Escriba una descripcion del producto"/>
                <input class="boton_busqueda" type="submit" value="Buscar"/>
                </fieldset>
            </form>
            </section>
            <section id="productos">
                
                  <%
                        ListaProductos productos = (ListaProductos)session.getAttribute("lista_productos");
                        ListaProductos carrito = (ListaProductos) session.getAttribute("carrito");
                        
                        for(int i = 0 ; i < productos.size() ; i ++){%>
                        <%
                            if(!carrito.existeProducto(productos.get(i))){%>
                            <div class="grilla">
                                <form action="Carrito">
                                    <input type="hidden" name="id_producto" value="<%=productos.get(i).getId_producto()%>" >
                                    <p><%=productos.get(i).getDescripcion()%></p>
                                    <p>Precio: <%=productos.get(i).getPrecio()%> Gs.</p>
                                    <input class="cantidad" type="number" name="cantidad" value="1" required>
                                    <input class="boton" type="submit" name="agregar-sacar" value="Agregar">
                                    <input type="hidden" name="lastpage" value ="busqueda">
                                </form>
                            </div>
                            <%}
                            else{Integer cantidad = carrito.buscarId(productos.get(i).getId_producto()).getCantidad_compra();%>
                            <div class="grilla">
                                <form action="Carrito">
                                    <input type="hidden" name="id_producto" value="<%=productos.get(i).getId_producto()%>" >
                                    <%=productos.get(i).getDescripcion()%>
                                    <p>Precio: <%=productos.get(i).getPrecio()%> Gs.</p>
                                    <p>Cantidad: <%=cantidad%></p>
                                    <input class="boton" type="submit" name="agregar-sacar" value="Sacar">
                                    <input type="hidden" name="lastpage" value ="busqueda">
                                </form>
                            </div>
                          <%}%>
                          
                          <%
                        }
                    %>
                
                    <div><%=request.getContextPath()%></div>
            </section>    
    </article>
    </body>
</html>
