<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="author" content="Emanuel">
    <meta name="description" content="formulario de registro APLICACION">
    <meta name="keywords" content="registro,creacion de cuenta de usuario">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register form</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/register-form.css">
</head>
<body>
<img src="img/logo.png" width="150px">
      <main class="form-container">
          <form class="form" action="#" method="post">
              <h3>APLICACIÓN</h3>
              <h1>Registrarse</h1>

              <div class="form-input">
                  <label for="name">Nombre</label>
                  <input type="text" id="name" placeholder="Ingrese su Nombre" name="name" autofocus required pattern="[A-Za-z ]{2,40}">
              </div>

              <div class="form-input">
                  <label for="lastName">Apellido</label>
                  <input type="text"  id="LastName" placeholder="Ingrese su Apellido" name="LastName" required pattern="[A-Za-z ]{2,40}">
              </div>

              <div class="form-input">
                  <label for="email">Correo:</label><br>
                  <input type="email"  id="email" placeholder="Ingrese su Correo" name="email" required pattern="{60}">
              </div>


              <div class="form-input">
                  <label for="password">Contraseña:</label><br>
                  <input type="password"  id="password" placeholder="Ingrese su contaseña" name="password" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$">
              </div>


              <button type="submit">Ingresar</button>
              <div class="register">
                  <a href="registerForm.jsp">Iniciar sesión</a>
              </div>
          </form>
      </main>

<p class="copyR">Todos los derechos reservados APLICACIÓN
    ©<%=displayDate()%></p>
<!-- Latest compiled JavaScript -->

<%!
public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
}
%>
</body>
</html>