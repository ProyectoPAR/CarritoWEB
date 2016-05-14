<%-- 
    Document   : Registro
    Created on : Apr 29, 2016, 4:26:06 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "MenuPrincipal.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        
        <title>Pagina de registro</title>
    </head>
    <body>
        <section id="formulario">
            <form method="post" action="Reg">
            <fieldset id="campos">
            <legend>Datos de registro:</legend>    
            <table>    
                <tr>
                    <td><input type="text" id="nombre" name="nombre" placeholder="Nombre"></td>
                </tr>
                <tr>
                    <td><input type="text" id="apellido" name="apellido" placeholder="Apellido"></td>
                </tr>
                <tr>
                    <!--Agregamos aqui el campo nombre usuario, con el que el usuario podra ingresar a la cuenta ademas de correo electronico-->
                    <td><input type="text" id="nombre_usuario" name="nombre_usuario" placeholder="Nombre de Usuario"></td>
                </tr>    
                <tr>
                    <td><input type="text" id="direccion" name="direccion" placeholder="direccion"></td>
                </tr>
                <tr>
                    <td><input type="text" id="email" name="email" placeholder="E-mail"></td>
                    <td><input type="password" id="contrasenha" name="contrasenha" placeholder="Contrasenha"></td>
                </tr>
                <tr>
                    <td><input type="submit" value= "Registrarse ahora"></td>
                </tr>
            </table>  
            </fieldset>
            </form> 
        </section>
    </body>
</html>
