<%-- 
    Document   : Perfil
    Created on : 14/05/2016, 04:47:32 PM
    Author     : root
--%>

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
                                   value="<%=user.getNombre()%>" readonly="yes">
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Apellido:
                        </td>
                        
                        <td>
                            <input type="text" name="apellido"
                                   value="<%=user.getApellido()%>" readonly="yes">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Direccion:
                        </td>
                        
                        <td>
                            <input type="text" name="direccion"
                                   value="<%=user.getDireccion()%>" readonly="yes">
                        <td> 
                    </tr>
                    
                    <tr>
                        <td>
                            E-mail:
                        </td>
                        
                        <td>
                            <input type="text" name="email"
                                   value="<%=user.getEmail()%>" readonly="yes">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Contrasenha:
                        </td>
                        
                        <td>
                            <input type="password" name="contrasenha" placeholder="Contrasenha"
                                   value="<%=user.getContrasenha()%>" readonly="yes">
                        </td> 
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" name="modificar" value="Guardar Cambios">
                        </td> 
                        <td>
                           <button>
                               <a href="ABMCliente.jsp" Style="text-decoration:none">
                                   Volver atras
                               </a>
                           </button>
                        </td>
                    </tr>
                    
                </table>
                        
                <input type="hidden" name="accion" value="grabarCambios">
                </fieldset>
        </section>
    </body>
</html>
