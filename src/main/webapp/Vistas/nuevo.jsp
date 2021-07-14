<%-- 
    Document   : nuevo.jsp
    Created on : 6 jul. 2021, 14:53:43
    Author     : servilinea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir alumno</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
       <div class="container">
           <h1 class="text-center"> Añadir alumno </h1>
           <div class="row">
               <form class="p-5">
                        <div class="mb-3">
                          <label for="nombre" class="form-label"> Nombre </label>
                          <input type="text" class="form-control" id="nombre" name="nombre">
                        </div>
                   
                        <div class="mb-3">
                          <label for="apellido" class="form-label"> Apellido </label>
                          <input type="text" class="form-control" id="apellido" name="apellido">
                        </div>
                   
                        <div class="mb-3">
                          <label for="email" class="form-label"> Email </label>
                          <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
                        </div>
               
                        <button type="submit" class="btn btn-primary"> Añadir </button>
                </form>
           </div>
       </div>
    </body>
</html>
