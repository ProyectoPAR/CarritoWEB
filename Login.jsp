<%-- 
    Document   : login
    Created on : May 12, 2016, 2:53:51 PM
    Author     : User
--%>
<!--LISTA DE CAMBIOS
    *SE ANHADIO METODO DE VALIDACION DE CAMPOS VACIOS NATIVO DE HTML5
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "MenuPrincipal.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href= "css/log-in.css">
        <title>Inicio de sesion</title>
    </head>
    <body>
        
        <section id="login">
            <fieldset>
                <legend>Inicie sesion para continuar</legend>
            <form method="post" action="Login">
                <table id="campos">
                    <tr>
                        <td><input type="text" name="nombre_usuario" placeholder="Nombre de Usuario" required></td>
                    </tr>    

                    <tr>
                        <td><input type="password" name="pass" placeholder="Contrasenha" required></td>
                    </tr>    

                    <tr>
                        <td><input class = "boton" type="submit" value="Enviar"></td>
                    </tr>
                </table>
                <input type="hidden" name="accion" value="login">
            </form>
            </fieldset>
        </section>
        
    </body>
</html>
