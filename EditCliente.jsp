<%-- 
    Document   : ActualizarDatosCliente
    Created on : May 10, 2016, 1:25:46 PM
    Author     : User
--%>

<!---CAMBIOS HECHOS:
    *EL BOTON DE ATRAS YA FUNCIONA--->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page 
        import = "com.par.paronline.modelo.Usuario"
        import = "com.par.paronline.modelo.ABMCliente"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/perfil_1.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        <section id="editCliente">
            <%Usuario u = ABMCliente.buscarUsuario(Integer.parseInt(request.getParameter("id_usuario")));%>
            <form action="ServletABMCliente" method="post">
                <fieldset>
                <legend>Editar datos del cliente: </legend>

                <table class="edit">
                    <tr>
                        <td>
                            Nombre:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre" placeholder="Nombre"
                                   value="<%=u.getNombre()%>" required>
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Apellido:
                        </td>
                        
                        <td>
                            <input type="text" name="apellido" placeholder="Apellido"
                                   value="<%=u.getApellido()%>" required>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Nombre de Usuario:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre_usuario" placeholder="Nombre de Usuario"
                                   value="<%=u.getNombre_usuario()%>" required>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Direccion:
                        </td>
                        
                        <td>
                            <input type="text" name="direccion" placeholder="Direccion"
                                   value="<%=u.getDireccion()%>" required>
                        <td> 
                    </tr>
                    
                    <tr>
                        <td>
                            E-mail:
                        </td>
                        
                        <td>
                            <input type="text" name="email" placeholder="Email"
                                   value="<%=u.getEmail()%>" required>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Contrasenha:
                        </td>
                        
                        <td>
                            <input type="password" name="contrasenha" placeholder="Contrasenha"
                                   value="<%=u.getContrasenha()%>" required>
                        </td> 
                    </tr>
                 
                    </table>

                    <input class="boton" type="submit" name="modificar" value="Guardar Cambios">
                    <input type="hidden" name="accion" value="grabarCambios">
                    <input type="hidden" name="lastpage" value="editpage">
    
            </form>

            <form action="ABMCliente.jsp">
                  <input class="boton" type="submit" value="Atras"/>  
            </form>
                                   
            </fieldset>
        </section>
    </body>
</html>
