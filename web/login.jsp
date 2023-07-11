<%-- 
    Document   : login
    Created on : 08/07/2023, 16:12:24
    Author     : Carlos Nahuel Calcara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/login.css">
        <link rel="stylesheet" href="./styles/header.css">
        <link rel="stylesheet" href="./styles/normalize.css">
    </head>
    <body>
        <%@include file ="views/header.jsp" %>
        <div id="contenedor">
            <img src="./images/logo.jpg" alt="logo" id="logo">
            <h3>Ingresar al sistema</h1>
            <form method="post" action="login" class="d-grid gap-2" id="entrada">
                <input class="form-control" name="email" type="text" placeholder="prueba@gmail.com" aria-label="Usuario">
                <input class="form-control" name="password" type="password" placeholder="*******" aria-label="Password">
                <button class="btn btn-primary" type="submit">Ingresar</button>
            </form>
            <p id="alerta">Usuario o contraseña incorrecta.</p>
            <p class="fw-light" id="foot">© 2017-2020</p>
        </div>
    </body>
</html>
