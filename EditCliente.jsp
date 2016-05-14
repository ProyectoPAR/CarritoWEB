<%-- 
    Document   : ActualizarDatosCliente
    Created on : May 10, 2016, 1:25:46 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page 
        import = "com.par.paronline.modelo.Usuario"
        import = "com.par.paronline.modelo.ABMCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <section id="formulario">
            <%Usuario u = ABMCliente.buscarUsuario(request.getParameter("id"));
            System.out.println(u.getId_usuario());%>
            <form action="ServletABMCliente" method="post">
                <fieldset>
                <legend>Editar datos del cliente: </legend>
                <table>
                    
                    <tr>
                        <td>
                            Id de usuario:
                        </td>
                        
                        <td>
                            <input type="text" name="id_usuario" placeholder="Id de usuario"
                                   value="<%=u.getId_usuario()%>">
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Nombre:
                        </td>
                        
                        <td>
                            <input type="text" name="nombre" placeholder="Nombre"
                                   value="<%=u.getNombre()%>">
                        <td>
                    </tr>
                    
                    <tr>
                        <td>
                            Apellido:
                        </td>
                        
                        <td>
                            <input type="text" name="apellido" placeholder="Apellido"
                                   value="<%=u.getApellido()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Direccion:
                        </td>
                        
                        <td>
                            <input type="text" name="direccion" placeholder="Direccion"
                                   value="<%=u.getDireccion()%>">
                        <td> 
                    </tr>
                    
                    <tr>
                        <td>
                            E-mail:
                        </td>
                        
                        <td>
                            <input type="text" name="email" placeholder="Email"
                                   value="<%=u.getEmail()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Contrasenha:
                        </td>
                        
                        <td>
                            <input type="password" name="contrasenha" placeholder="Contrasenha"
                                   value="<%=u.getContrasenha()%>">
                        </td> 
                    </tr>
                    
                    <tr>
                        <td>
                            Rol:
                        </td>
                        
                        <td>
                            <input type="radio" name="rol" value="U">Usuario
                            <input type="radio" name="rol" value="A">Administrador
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
            </form>
            
        </section>
    </body>
</html>
