<%-- 
    Document   : busqueda
    Created on : 05-08-2018, 02:15:15 PM
    Author     : Francisco
--%>
<%@ include file="conexion.jsp"%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"  />
    </head>
    <body>
        <div class="container">
            <div class="row">
                &nbsp;
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">Colegio "Amigos de Don Bosco"</div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <h2>Búsqueda de ejemplares</h2>
                        <%                            out.println("<form action='busqueda.jsp' method='post'>");
                            out.println("Buscar (por nombre de ejemplar o autor): " + "<input type='text' name='buscar' placeholder='Ingrese un criterio de búsqueda'><br /><br />");
                            out.println("<input type='submit' class='btn btn-primary' name='ok' value='Buscar' /><br />");
                            out.println("</form>");
                            String buscar = request.getParameter("buscar");
                            try {
                                String consulta = "SELECT a.proIsbn, a.ProNombre, CONCAT(p.autNombre, ' ', p.autApellidO) AS nombreAutor FROM Producto a INNER JOIN ProductoAutor ap ON ap.proId = a.proId INNER JOIN Autor p ON p.autId = ap.autId WHERE a.proNombre LIKE '%" + buscar + "%' OR p.autNombre LIKE '%" + buscar + "%' OR p.autApellido LIKE '%" + buscar + "%' GROUP BY a.proIsbn";
                                st = conexion.prepareStatement(consulta);
                                rs = st.executeQuery();
                                out.println("<br />Resultados de la búsqueda:<br />");
                                out.println("<table class='table table-striped table-bordered table-hover'><tr>");
                                out.println("<th>ISBN</th><th>Título</th><th>Nombre del autor</th><th>Operaciones</th></tr>");
                                while (rs.next()) {
                                    out.println("<tr>");
                                    out.println("<td>" + rs.getString("proIsbn") + "</td>");
                                    out.println("<td>" + rs.getString("ProNombre") + "</td>");
                                    out.println("<td>" + rs.getString("nombreAutor") + "</td>");
                                    out.println("<td><a href='#'><input type='submit' class='btn btn-primary btn-warning' name='detalles' value='Detalles' /></a></td>");
                                    out.println("</tr>");
                                };
                                out.println("</table>");
                            } catch (SQLException e) {
                            };
                        %>
                        Si desea prestar un ejemplar, debe loguearse en el sistema:
                        <br /><br />
                        <a href="index.xhtml"><input type="submit" class="btn btn-primary btn-success" name="regresar" value="Regresar" /></a>    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
