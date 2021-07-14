<%-- 
    Document   : alumnos.jsp
    Created on : 6 jul. 2021, 14:53:12
    Author     : servilinea
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumnos"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <table class="table table-primary">
                    <thead>
                        <tr>
                            <th> Id </th>
                            <th> Nombre </th>
                            <th> Apellido </th>
                            <th> Email </th>
                            <th> Modificar </th>
                            <th> Eliminar </th>
                        </tr> 
                    </thead>
                    <tbody>
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/codoacodo";
                            String user = "gime";
                            String pass = "1234";
                            String consulta = "SELECT * FROM usuarios";
                            
                            try{
                                Connection mysql = DriverManager.getConnection(url, user, pass);
                                Statement mostrar = mysql.createStatement();
                                ResultSet resultado = mostrar.executeQuery(consulta);
                                
                                String id = "id";
                                String nombre = "nombre";
                                String apellido = "apellido";
                                String email = "email";
                                
while(resultado.next()){
    String ruta = "modificar.jsp?Id=" + resultado.getInt(id);
     %>
                                <tr>
                                    <td><%= resultado.getInt(id)%> </td>
                                    <td><%= resultado.getString(nombre)%> </td>
                                    <td><%= resultado.getString(apellido)%> </td>
                                    <td><%= resultado.getString(email)%> </td>
                                    <td><a href=""> Modificar </a></td>
                                </tr>
                                <%
} 
                            }catch(SQLException e){
                                System.out.println(e.toString());
                            
                        %>  
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
