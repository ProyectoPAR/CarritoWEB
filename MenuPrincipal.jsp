<%-- 
    Document   : MenuPrincipal
    Created on : May 8, 2016, 9:47:46 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"
        import = "com.par.paronline.modelo.Producto"
        import = "com.par.paronline.modelo.Usuario"
        import = "com.par.paronline.modelo.ListaProductos"%>


<%
    request.getSession(true);
    //cuando entro por primera vez a la aplicacion web se cargan el usuario desconocido y el carrito vacio
    if(session.getAttribute("user") == null){
        Usuario user = new Usuario();
        session.setAttribute("user", user);
        session.setAttribute("admin","no");
    }
    if(session.getAttribute("carrito")== null){
        ListaProductos carrito = new ListaProductos();
        session.setAttribute("carrito", carrito);
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/menu.css">
    </head>
    <body>
        <div id="titulo">
            <h1>ParOnline</h1>
            <%
                Usuario usuario = (Usuario)request.getSession(true).getAttribute("user");
                if(usuario.getNombre() == null){%>
            <p>Usted ha ingresado como: Usuario desconocido </p>
            <%}else{%>
            <p>Usted ha ingresado como: <%=usuario%> </p><%}%>
        </div>
    
        <section id="menu">
            <ul>
                <li><a href="Carrito.jsp">Carrito</a></li>
                <li><a href="Producto">Productos</a></li>
                
                <%
                if(usuario.getNombre() == null){%>
                
                <li><a href="Registro.jsp">Registrarse</a></li>
                <li><a href="Login.jsp">Inicio sesion</a></li>
                
                <%}else{%>
                <li><a href="Perfil.jsp">Mi perfil</a></li> <!--falta implementar, lo hare luego-->
                <li><a href="MisCompras.jsp">Mis compras</a></li>
                <li><a href="Login?accion=logout">Cerrar sesion</a></li>
                
                <%}%>
                <%
                if("si".equals(request.getSession(true).getAttribute("admin")))
                {%>
                <li><a href="ABMCliente.jsp">ABM Clientes</a></li>
                <li><a href="ABMProducto.jsp">ABM Productos</a></li>
                <li><a href="ABMCategoria.jsp">ABM Categorias</a></li>
                <%}%>
            </ul>
        </section>
    </body>
</html>
