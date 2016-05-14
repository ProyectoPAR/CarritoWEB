<%-- 
    Document   : ABMCliente
    Created on : May 8, 2016, 5:50:43 PM
    Author     : User
--%>

<%@page import="com.par.paronline.modelo.ABMCliente"%>
<%@page import= "com.par.paronline.modelo.Usuario"%>
<%@page import= "java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABM Cliente</title>
    </head>
    <body>
        <h2>Gestion de clientes</h2>

            <div class="lista_usuarios">
                <fieldset>
                <legend>Lista de usuarios</legend>
                <table>
                    <tr>
                        <th>ID de usuario</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>E-mail</th>
                    </tr>
                <%ArrayList<Usuario> us = ABMCliente.listar();
                for(int i=0;i<us.size();i++){
                    Usuario u = us.get(i);%>
                    
                    <tr>
                            <td><%=u.getId_usuario()%></td>
                            <td><%=u.getNombre()%></td>
                            <td><%=u.getApellido()%></td>
                            <td><%=u.getEmail()%></td>
                            <td>
                                <form action=" /Carrito/ServletABMCliente">
                                    <input type="hidden" name="accion" value="editar">
                                    <input type="hidden" name="id" value="<%=u.getId_usuario()%>">
                                    <input type="submit" value="Editar">
                                </form>
                            </td>
                            <td>
                                <form action="/Carrito/ServletABMCliente">
                                    <input type="hidden" name="id" value="<%=u.getId_usuario()%>">
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
    </body>
</html>
