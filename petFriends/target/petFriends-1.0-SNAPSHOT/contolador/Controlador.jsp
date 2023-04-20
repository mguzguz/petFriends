<%-- 
    Document   : newjsp
    Created on : 15/04/2023, 1:23:53 p. m.
    Author     : Johan Herrera
--%>
<%@page import="modelo.implementadora"%>
<%@page import="java.util.Iterator"%>
<link href="diseño.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Mascota" %>
<%@ page import="modelo.Canino" %>
<%@ page import="modelo.Felino" %>
          <%
    String formulario = request.getParameter("formulario");
    List<Mascota> mascotas = (List<Mascota>) request.getSession().getAttribute("mascotas"); 

    if (mascotas == null) {
            mascotas = new ArrayList<>();
            request.getSession().setAttribute("mascotas", mascotas);
    }else if(formulario.equals("AgregarCanino")){
            String nombre = "name";
            nombre = request.getParameter("name");
            String raza = "raza";
            raza = request.getParameter("raza");
            String color = "color";
            color = request.getParameter("color");
            int edad = 0;
            if (request.getParameter("edad") != null && !request.getParameter("edad").equals("")) {
               edad = Integer.parseInt(request.getParameter("edad"));
            }     
            int entrena = 0;
            if (request.getParameter("entrena") != null && !request.getParameter("entrena").equals("")) {
               entrena = Integer.parseInt(request.getParameter("entrena"));
            }  
            Canino can = new Canino("Canino", nombre, raza, color, edad, entrena);
            mascotas.add(can);
            request.getSession().setAttribute("mascotas", mascotas);
    } else if(formulario.equals("AgregarFelino")){
            String nombre = "name";
            nombre = request.getParameter("name");
            String raza = "raza";
            raza = request.getParameter("raza");
            String color = "color";
            color = request.getParameter("color");
            int edad = 0;
            if (request.getParameter("edad") != null && !request.getParameter("edad").equals("")) {
               edad = Integer.parseInt(request.getParameter("edad"));
            }                                   
            String toxa =request.getParameter("select");
            if(toxa.equals("toxo")){
                toxa="Sano"; 
            }else{
                 toxa="Enfermo";      
            }
            Felino cat=new Felino("Felino", nombre, raza, color, edad, toxa);
            mascotas.add(cat);
            request.getSession().setAttribute("mascotas", mascotas);
        }else if(formulario.equals("Eliminar")){
            String ame=request.getParameter("ame"); 
            for (int i = 0; i < mascotas.size(); i++) {
                Mascota mascota = mascotas.get(i);
                if (mascota.getNombre().equals(ame)) {
                    mascotas.remove(i);
                    i--;
                }
            }
        }
    %>
<body class="una">
    <div class="centrada">
        <div class="ce">
        <h2 class="tit">Información General: </h2>
        
            <h3 class="h"><b>Mascotas registradas: </b> </h3> 
                <% if (mascotas.isEmpty()) { %>
                    <p>No hay mascotas registradas.</p>
                <% } else { %>
                <table>
                    <tr>
                        <th>Tipo</th>
                        <th>Nombre</th>
                        <th>Raza</th>
                        <th>Color</th>
                        <th>Edad</th>
                        <th>Detalles</th>
                    </tr>
                    <% for(Mascota mascota : mascotas ){ %>
                    <tr>  
                        <td><%=mascota.getTipo()%></td>
                        <td><%=mascota.getNombre()%></td>
                        <td><%=mascota.getRaza()%></td>
                        <td><%=mascota.getColor()%></td>
                        <td><%=mascota.getEdad()%></td>
                        <td><% if(mascota.getTipo()=="Canino"){%>
                            Entrenado en nivel: <%=((Canino)mascota).getNivelEntrenamiento()%>
                            <%}else{%>
                            Toxoplasmosis: <%=((Felino)mascota).getLibreToxoplasmosis()%>
                            <%}%>
                        </td>
                    </tr>
                    <% } %>
                </table>
                 
            <h3 class="h"><b>Edad promedio de las mascotas:</b>  </h3>
            <%
                implementadora calcula=new implementadora();
                out.print(calcula.calPromedio(mascotas, mascotas.size()));
               
                %>
            <h3 class="h"><b>Cantidad de felinos: </b></h3>
            <%
                int a= calcula.calPoblacion(mascotas, "gatitos");
                out.println(a);
                %>
            <h3 class="h"><b>Cantidad de caninos: </b></h3>
                <%
                int b= calcula.calPoblacion(mascotas, "perritos");
                out.println(b);
                %>
            <h3 class="h"><b>Cantidad total felinos y caninos: </b></h3>
            <%
                int tot=a+b; 
                out.println(tot);
                %>
                <% } %>
           
            <form action="Principal.jsp">
                <button class="botones" type="submit">
                    <a>Pagina Principal</a>
                </button>
                <br></br>
            </form>
        </div>
    </div>
</body>
