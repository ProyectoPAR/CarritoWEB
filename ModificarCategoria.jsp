<%-- 
    Document   : ModificarCategoria
    Created on : 07/05/2016, 09:34:57 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "com.par.paronline.modelo.ListaCategorias"
        import = "com.par.paronline.modelo.Categoria"%>
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
                Integer id_categoria = Integer.parseInt(request.getParameter("id_categoria"));
                ListaCategorias categorias = new ListaCategorias();
                categorias.getListaCategorias();
                Categoria c = categorias.buscarId(id_categoria);
            %>
            <form action="ServletABMCategoria">
                <input type="hidden" name="lastpage" value="MP">
                <input type="hidden" name="accion" value="">
                <input type="text" name="id_categoria" value="<%=c.getDescripcion()%>" readonly="yes">
                <input type="text" name="descripcion" value=""  onfocus="habilitar()">
                <input type="submit" value="Guardar">

            </form>
        </section>
            <script>
                function habilitar(){
                    descripcion = document.getElementsByName("descripcion")[0];
                    precio = document.getElementsByName("precio")[0];
                    descripcion.readonly = "no";
                    precio.readonly = "no";
                }
            </script>
    </body>
</html>
