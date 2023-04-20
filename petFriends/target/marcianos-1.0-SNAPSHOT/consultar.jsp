<%-- 
    Document   : index
    Created on : 1/03/2023, 7:35:31 a. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información general</title>
    <link href="diseño.css" rel="stylesheet" type="text/css"/>
</head>
<body class="una">
    <div class="centrada">
        <h2 class="tit">Información General: </h2>
        <div class="ce">
            <h3 class="h"><b>Su proxima mascota: </b> </h3>
            
            <% 
                
                String name=request.getParameter("nombre");
                String raza=request.getParameter("raza");
                String color=request.getParameter("color");
                int edad=Integer.parseInt(request.getParameter("edad"));
                int entrena=Integer.parseInt("entrena") ;
                String total=name+raza+color; 
                out.println(total);
                out.println(edad);
                out.println(entrena);
                

            %>
            <h3 class="h"><b>Edad promedio de las mascotas:</b>  </h3>
            <h3 class="h"><b>Cantidad de felinos: </b></h3>
            <h3 class="h"><b>Cantidad de caninos: </b></h3>
            <h3 class="h"><b>Cantidad total felinos y caninos: </b></h3>
            <button class="question" type="submit">
                <a href="Principal.html">Pagina Principal</a>
            </button>
        </div>
    </div>
</body>
</html>