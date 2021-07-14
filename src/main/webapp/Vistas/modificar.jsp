<%-- 
    Document   : modificar
    Created on : 6 jul. 2021, 14:54:09
    Author     : servilinea
--%>
<%@page import="modelo.AlumnosDAO"%>
<%@page import="modelo.Alumnos"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar alumno</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <%
            String path = request.getContextPath();
            String id = request.getParameter("id");
            int mid; 
            mid = Integer.parseInt(id);
            
            Alumnos resultado = null;
            AlumnosDAO alumno = new AlumnosDAO();
            resultado = alumno.mostrarAlumno(mid);
            
        %> <p> <%= out.print(resultado.getNombre()) %></p>
        <% 
        %>
       <div class="container">
           <h1 class="text-center"> Modificar alumno </h1>
           <div class="row">
               <form class="p-5">
                        <div class="mb-3">
                          <label for="id" class="form-label"> Id </label>
                          <input type="hidden" class="form-control" id="id" name="id" value=<%= out.print(resultado.getId()) %>>
                        </div>
                   
                        <div class="mb-3">
                          <label for="nombre" class="form-label"> Nombre </label>
                          <input type="text" class="form-control" id="nombre" name="nombre" value=<%= out.print(resultado.getNombre()) %>>
                        </div>
                   
                        <div class="mb-3">
                          <label for="apellido" class="form-label"> Apellido </label>
                          <input type="text" class="form-control" id="apellido" name="apellido" value=<%= out.print(resultado.getApellido()) %>>
                        </div>
                   
                        <div class="mb-3">
                          <label for="email" class="form-label"> Email </label>
                          <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" value=<%= out.print(resultado.getEmail()) %>>
                        </div>
               
                        <button type="submit" class="btn btn-primary"> Modificar </button>
                </form>
           </div>
       </div>
    </body>
</html>
