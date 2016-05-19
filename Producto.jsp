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
        <link rel="stylesheet" type="text/css" href="css/producto.css">
    </head>
    <body>
    <article>
        <section id="buscador">
            <form action="Producto" method="post" class="buscador">
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
                                    <p>Precio :<%=productos.get(i).getPrecio()%> Gs.</p>
                                    <input class="cantidad" type="number" name="cantidad" value="1" required>
                                    <input class="boton" type="submit" name="agregar-sacar" value="Agregar">
                                    <input type="hidden" name="lastpage" value ="producto">
                                </form>
                            </div>
                                    
                            <%}
                            else{ Integer cantidad = carrito.buscarId(productos.get(i).getId_producto()).getCantidad_compra();%>
                            <div class="grilla">
                                <form action="Carrito">
                                    <input type="hidden" name="id_producto" value="<%=productos.get(i).getId_producto()%>" >
                                    <p><%=productos.get(i).getDescripcion()%></p>
                                    <p>Precio: <%=productos.get(i).getPrecio()%></p>
                                    <p>cantidad: <%=cantidad%></p>
                                    <input class="boton" type="submit" name="agregar-sacar" value="Sacar">
                                    <input type="hidden" name="lastpage" value ="producto">  
                                </form>
                            </div>
                          <%}%>
                                <%
                        }
                    %>
            </section>
    </article>
    </body>
</html>
