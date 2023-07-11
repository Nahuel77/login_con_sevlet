<%-- 
    Document   : pedidos
    Created on : 08/07/2023, 20:41:37
    Author     : Carlos Nahuel Calcara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Pedidos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/pedidos.css">
    </head>
    <body>
        <div class="contenedor">
            <div class="row justify-content-center text-center">
                <img id="logo" src="./images/logo.jpg" alt="logo">
                <h3>Formulario de Pedido</h3>
                <p>La fecha de entrega será coordinada telefónicamente</p>
            </div>
            <div id="formulario">
                <h5 class="text-center mt-5">Tu pedido</h5>
                <div class="row mt-3">
                    <div class="col">
                        <p class="text-center">Nombre</p>
                        <input class="form-control" type="text" placeholder="Tu nombre" aria-label="Tu nombre">
                    </div>
                    <div class="col">
                        <p class="text-center">Apellido</p>
                        <input class="form-control" type="text" placeholder="Tu apellido" aria-label="Tu apellido">
                    </div>
                    <div>
                        <p class="text-center mt-3">Nombre de Usuario</p>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">@</span>
                            <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div>
                        <div class="d-flex justify-content-center">
                            <p class="me-1">Email</p><p class="text-body-secondary">(Optional)</p>
                        </div>
                        <input class="form-control" type="text" placeholder="tuemail@gmail.com" aria-label="Email">
                    </div>
                    <div>
                        <p class="text-center mt-3">Lugar de Entrega</p>
                        <input class="form-control" type="text" placeholder="Calle, n°, localidad..." aria-label="dirección">
                    </div>
                    <div class="row">
                        <div class="col">
                            <p class="text-center mt-3">Localidad</p>
                            <select class="form-select" aria-label=".form-select-lg example">
                                <option selected>Seleccioná...</option>
                                <option value="1">Moreno</option>
                            </select>
                        </div>
                        <div class="col">
                            <p class="text-center mt-3">Provincia</p>
                            <select class="form-select" aria-label=".form-select-lg example">
                                <option selected>Seleccioná...</option>
                                <option value="1">Buenos Aires</option>
                            </select>
                        </div>
                        <div class="col">
                            <p class="text-center mt-3">Cod. Postal</p>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <hr class="separador">
                    <div class="contenedor mt-1">
                        <h5 class="text-center">Forma de Pago</h5>
                        <div class="form-check mt-3">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Tarjeta de Crédito
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                Mercado Pago
                            </label>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <p class="text-center">Nombre del Titular de la Tarjeta</p>
                            <input class="form-control" type="text">
                            <p id="pie_tarjeta">Nombre como se muestra en la tarjeta</p>
                        </div>
                        <div class="col">
                            <p class="text-center">Número de la Tarjeta</p>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div id="formulario_2" class="row">
                        <div class="col">
                            <p class="text-center">Fecha de Vto.</p>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col">
                            <p class="text-center">Código</p>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <hr class="separador">
                    <div id="formulario_3" class="mb-5">
                        <div class="d-grid gap-2">
                            <button class="btn btn-danger" type="button">Ingresar la Solicitud</button>
                        </div>
                    </div>
                    <div class="mb-3">
                        <p id="footer">© 2017-2020 Codo a Codo</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
