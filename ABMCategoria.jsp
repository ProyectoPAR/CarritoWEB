<%-- 
    Document   : ABMCategoria
    Created on : 07/05/2016, 09:04:08 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "com.par.paronline.modelo.ListaCategorias"%>

<%
    ListaCategorias categorias = new ListaCategorias();
    categorias.getListaCategorias();
    session.setAttribute("lista_categorias", categorias);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias ABM</title>
    </head>
    <body>
        <div name="table">
        <%for (int i = 0 ; i < categorias.size() ; i ++){%>
            <div>
                <form name="producto">
                    <input type="text" name="id_categoria" value="<%=categorias.get(i).getId_categoria()%>" readonly="yes">
                    <input type="text"  name="descripcion" value="<%=categorias.get(i).getDescripcion()%>" readonly="yes">
                </form>
                <form action="ServletABMCategoria">
                    <input type="hidden" name="id_categoria" value="<%=categorias.get(i).getId_categoria()%>">
                    <input type="hidden" name="accion" value="update">
                    <input type="submit" value="Modificar">
                </form>

                <form action="ServletABMCategoria">
                    <input type="hidden" name="accion" value="delete">
                    <input type="hidden" name="id_categoria" value="<%=categorias.get(i).getId_categoria()%>">
                    <input type="submit" value="Eliminar">
                </form>

                <br>
            </div>
        <%}%>
        </div>
        <form>
            <input type="button" id="add" value="Agregar" onclick="agregar_categoria()">
        </form>
        <script src="js/controles_abm.js"></script>
        
        
    </body>
</html>
