<%@page import="java.util.Iterator"%>
<link href="diseño.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Mascota" %>
<%@ page import="modelo.Canino" %>
<%@ page import="modelo.Felino" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rescate y Adopcion de Mascotas</title>
    </head>
    <body>
        <!-- Agregar Mascota -->
    <body class="una">
    <div class="centrada">
        <h2 class="tit">Bienvenido a PetFriend</h2>
        <h3 class="sec">Fundación de rescate y rehabilitación</h3>
        <div class="ce">
            <h4 class="h">Aqui puedes añadir, eliminar o consultar los gatitos y perritos que tenemos para llevar el control de nuestros animalitos.¿Qué deseas hacer? </h4>
        </div>
    
        <select id="opcion" onchange="opciones()" class="botones">
            <option disabled selected>Selecciona una opción</option>
            <option value="caninos" >Agregar Canino</option>
            <option value="felinos">Agregar Felino</option>
            <option value="eliminars">Eliminar Mascota</option>
            <option value="consultars">Consultar Mascota</option>
       </select>
        <br><br>
    </div>
        <section id="canino" class="centrada"  style="display:none;">
            <h2 class="tit">NUEVO CANINO</h2>
            <form  action="Controlador.jsp" method="POST">
                <input type="hidden" name="formulario" value="AgregarCanino">
                <input type="text" name="name" placeholder="Escriba el nombre" class="question" >
                <input type="text" name="raza" placeholder="Escriba la raza" class="question">
                <input type="text" name="color" placeholder="Escriba el color" class="question">
                <input type="number" name="edad" placeholder="Escriba la edad" class="question">
                <input type="number" name="entrena" placeholder="Nivel de entrenamiento"  class="question">
                <br>        
                <button class="botones" type="submit">
                    <a>Insertar</a>
                </button>
              </form>
        </section>
        <section id="felino" class="centrada" style="display:none;">
             <h2 class="tit">NUEVO FELINO</h2>
             <form action="Controlador.jsp" method="POST" >
                <input type="hidden" name="formulario" value="AgregarFelino">
                <input type="text" name="name" placeholder="Escriba el nombre" class="question" >
                <input type="text" name="raza" placeholder="Escriba la raza" class="question">
                <input type="text" name="color" placeholder="Escriba el color" class="question">
                <input type="number" name="edad" placeholder="Escriba la edad" class="question">
                <br>
                <select name="select" class="botones">
                    <option value="toxo">Libre de taxoplasmosis</option>
                    <option value="noToxo" selected>Con taxoplasmosis</option>
                </select> <br><br>
                <button class="botones" type="submit">
                    <a>Insertar</a>
                </button>
                    <br> 
                <br>        
             </form>
        </section>       
        <section id="eliminar" class="centrada" style="display:none;">
            <h2 class="tit">Eliminar mi mascota</h2>
            <form action="Controlador.jsp" method="POST">
                <div class="ce">
                <input type="hidden" name="formulario" value="Eliminar">
                <h4 class="h">
                    Recuerde que luego de efectuar esta configuración el animalito quedará por fuera de nuestro registro. <b>Manejo Responsable.</b>
                 </h4> 
            </div>
            <p>
                <label class="question">Escribe el nombre del animalito:</label>
                <input type="text" name="ame" placeholder="          No importa si es felino o canino" class="question">
                </select>   
            </p>
            <button class="botones" type="submit">
                <a>Confirmar y eliminar</a>                
            </button>
            <br></br>
            </form>
            
        </section>
        <section id="consultar" class="centrada" style="display:none;">
            <form action="Controlador.jsp" method="POST">
            <div class="ce">
                <input type="hidden" name="formulario" value="Consultar"> 
                <br>
                <button class="botones" type="submit">
                    <a>Consultar</a>
                </button>    
           </div>
            <br>
            </form>
            
        </section>
       
  
    <br>
	<script>
		function opciones() {
			var opcion = document.getElementById("opcion").value;
			if (opcion == "caninos") {
				document.getElementById("canino").style.display = "block";
				document.getElementById("felino").style.display = "none";
                                document.getElementById("eliminar").style.display="none"; 
                                document.getElementById("consultar").style.display="none";
			}else if (opcion == "felinos") {
				document.getElementById("canino").style.display = "none";
				document.getElementById("felino").style.display = "block";
                                document.getElementById("eliminar").style.display="none";
                                document.getElementById("consultar").style.display="none";
			}else if(opcion=="eliminars"){
                                document.getElementById("canino").style.display = "none";
				document.getElementById("felino").style.display = "none";
                                document.getElementById("eliminar").style.display="block";
                                document.getElementById("consultar").style.display="none";
                        }else if(opcion=="consultars") {
				document.getElementById("canino").style.display = "none";
				document.getElementById("felino").style.display = "none";
                                document.getElementById("eliminar").style.display="none";
                                document.getElementById("consultar").style.display="block";
			}else{
                                document.getElementById("canino").style.display = "none";
				document.getElementById("felino").style.display = "none";
                                document.getElementById("eliminar").style.display="none";
                                document.getElementById("consultar").style.display="none";
                        }
		}
	</script>
        </body>
    </html>