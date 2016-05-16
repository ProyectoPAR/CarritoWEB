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
            <form action="" method="post">
                <fieldset>
                <legend>Mi Perfil: </legend>
                <table> 
                    <tr>
                        <td>
                            Nombre:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre"
                                   value="<%=user.getNombre()%>" readonly>
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Apellido:
                        </td>
                        
                        <td>
                            <input type="text" name="apellido"
                                   value="<%=user.getApellido()%>" readonly>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Direccion:
                        </td>
                        
                        <td>
                            <input type="text" name="direccion"
                                   value="<%=user.getDireccion()%>" readonly>
                        <td> 
                    </tr>
                    
                    <tr>
                        <td>
                            E-mail:
                        </td>
                        
                        <td>
                            <input type="text" name="email"
                                   value="<%=user.getEmail()%>" readonly>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Contrasenha:
                        </td>
                        
                        <td>
                            <input type="password" name="contrasenha" placeholder="Contrasenha"
                                   value="<%=user.getContrasenha()%>" readonly>
                        </td> 
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" name="modificar" value="Guardar Cambios">
                        </td> 
                    </tr>                    
                </table>
                        
                <input type="hidden" name="accion" value="grabarCambios">
                </form>
                        
                <form action="MenuPrincipal.jsp">
                  <input type="submit" value="Atras"/>  
                </form>
                </fieldset>
        </section>
    </body>
</html>
