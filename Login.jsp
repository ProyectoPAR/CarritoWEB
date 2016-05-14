<%-- 
    Document   : login
    Created on : May 12, 2016, 2:53:51 PM
    Author     : User
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
                        <td><input type="text" name="nombre_usuario" placeholder="Nombre de Usuario"></td>
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
