<%-- 
    Document   : index.jsp
    Created on : 13/05/2016, 06:18:25 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <title>Inicio de sesion</title>
    </head>
    <body>
        
        <section id="formulario">
            <fieldset>
                <legend>Inicie sesion para continuar</legend>
            <form method="post" action="Login">
                <table>
                    <tr>
                        <!--para facilitar el login se ingresara solo con el nombre usuario-->
                        <td><input type="text" name="nombre_usuario" placeholder="Nombre de usuario"></td>
                    </tr>    

                    <tr>
                        <td><input type="password" name="pass" placeholder="Contrasenha"></td>
                    </tr>    

                    <tr>
                        <td><input type="submit" value="Enviar"></td>
                    </tr>
                </table>
                <input type="hidden" name="accion" value="login">
            </form>
            </fieldset>
        </section>
        
    </body>
</html>
