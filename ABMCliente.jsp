<%-- 
    Document   : ABMCliente
    Created on : May 8, 2016, 5:50:43 PM
    Author     : User
--%>

<!--
    *AHORA SE MUESTRA EL NOMBRE DE USUARIO TAMBIEN
    *ARREGLADO EL ERROR QUE MOSTRABA NULL EN EL NOMBRE DE USUARIO
    *EL BOTON ELIMINAR YA FUNCIONA
-->

<%@page import= "com.par.paronline.modelo.ABMCliente"%>
<%@page import= "com.par.paronline.modelo.Usuario"%>
<%@page import= "java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <title>ABM Cliente</title>
    </head>
    <body>
            <div class="lista_usuarios" id="formulario">
                <h2>Gestion de clientes</h2>
                <fieldset>
                <legend>Lista de usuarios</legend>
                <table>
                    <tr>
                        <th>ID de usuario</th><!--Debe ser el nombre de usuario, el id_usuario en todo caso pondriamos en un hidden para facilitar la busqueda-->
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>E-mail</th>
                        <th>Nombre de usuario</th>
                    </tr>
                <%ArrayList<Usuario> us = ABMCliente.listar();
                for(int i = 0 ; i < us.size() ; i++){
                    Usuario u = us.get(i);%>
                    
                    <tr>
                            <td><%=u.getId_usuario()%></td> 
                            <td><%=u.getNombre()%></td>
                            <td><%=u.getApellido()%></td>
                            <td><%=u.getEmail()%></td>
                            <td><%=u.getNombre_usuario()%></td>
                            <td>
                                <form action=" /Carrito/ServletABMCliente">
                                    <input type="hidden" name="accion" value="editar">
                                    <input type="hidden" name="id_usuario" value="<%=u.getId_usuario()%>">
                                    <input type="submit" value="Editar">
                                </form>
                            </td>
                            <td>
                                <form action="/Carrito/ServletABMCliente">
                                    <input type="hidden" name="id_usuario" value="<%=u.getId_usuario()%>">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="submit" value="Eliminar">
                                </form>
                            </td>
                    </tr>
                    <%    
                }
                    %>
                </table>
                </fieldset>
            </div>
            <!--falta agregar la funcion javascript para agregar un usuario-->
    </body>
</html>
