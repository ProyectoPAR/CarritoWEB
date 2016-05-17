<%-- 
    Document   : Perfil
    Created on : 14/05/2016, 04:47:32 PM
    Author     : root
--%>

<!--CAMBIOS REALIZADOS
    
    *EL BOTON DE ATRAS AHORA REDIRIGE AL MENU PRINCIPAL   
    *CORREGIDOS ALGUNOS ERRORES MENORES EN LAS ETIQUETAS READONLY-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "com.par.paronline.modelo.Usuario" %>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="formulario">
            <%
                Usuario user = (Usuario) session.getAttribute("user");
            %>
            <form action="ServletABMCliente" method="post">
                <fieldset>
                <legend>Mi Perfil: </legend>
                <table> 
                    <tr>
                        <td>
                            Nombre:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre"
                                   value="<%=user.getNombre()%>">
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Apellido:
                        </td>
                        
                        <td>
                            <input type="text" name="apellido"
                                   value="<%=user.getApellido()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Nombre de Usuario:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre_usuario"
                                   value="<%=user.getNombre_usuario()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Direccion:
                        </td>
                        
                        <td>
                            <input type="text" name="direccion"
                                   value="<%=user.getDireccion()%>">
                        <td> 
                    </tr>
                    
                    <tr>
                        <td>
                            E-mail:
                        </td>
                        
                        <td>
                            <input type="text" name="email"
                                   value="<%=user.getEmail()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Contrasenha:
                        </td>
                        
                        <td>
                            <input type="password" name="contrasenha" placeholder="Contrasenha"
                                   value="<%=user.getContrasenha()%>">
                        </td> 
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="grabar" value="Guardar Cambios">
                        </td>
                    </tr>
                                        
                </table>
                <input type="hidden" name="id_usuario" value="<%=user.getId_usuario()%>" >
                <input type="hidden" name="accion" value="grabarCambios">
                <input type="hidden" name="lastpage" value="perfil">
                </form>
                        
                <form action="MenuPrincipal.jsp">
                  <input type="submit" value="Atras"/>  
                </form>
                </fieldset>
        </section>
    </body>
</html>
