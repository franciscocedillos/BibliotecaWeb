<%-- 
    Document   : conextion
    Created on : 05-08-2018, 03:20:08 PM
    Author     : Francisco
--%>

<%@ page language="java" import="java.sql.*" %>
<%
    Connection conexion = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    //Leemos el driver de Mysql
    Class.forName("com.mysql.jdbc.Driver");
    // Se obtiene una conexión con la base de datos.
    conexion = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/sibylbiblioteca", "root", "admin123*");
%>