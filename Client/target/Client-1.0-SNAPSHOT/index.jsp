<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/bootstrap.min.css">
    <title>CLIENTES</title>
</head>
<body>
<div class="card-header">
    GESTION DE CLIENTES
</div>
<div class="container mt-3 col-11">

    <div class="row">
        <div class="col-12 bg-dark text-light">
            <h1 class="mt-2 mb-2">Registro de Cliente</h1>
        </div>
        <div class="col-12 border border-primary">
            <div class="row mt-2">
                <div class="col-2 form-group">
                    <label>#Num-CLiente<span class="text-danger">*</span></label>
                    <input type="number" name="customerNumber" id="customerNumber" class="form-control" required>
                </div>
                <div class="col-10 form-group">
                    <label>Nombre Completo-Cliente<span class="text-danger">*</span></label>
                    <input type="text" name="customerName" id="customerName" class="form-control" required>
                </div>

                <div class="col-4 form-group">
                    <label>Apellido del Contacto<span class="text-danger">*</span></label>
                    <input type="text" name="contactLastName" id="contactLastName" class="form-control" required>
                </div>
                <div class="col-4 form-group">
                    <label>Nombre del Contacto: <span class="text-danger">*</span></label>
                    <input type="text" name="contactFirstName" id="contactFirstName" class="form-control" required>
                </div>
                <div class="col-4 form-group">
                    <label>Telefono<span class="text-danger">*</span></label>
                    <input type="tel" name="phone" id="phone" class="form-control" required>
                </div>

                <div class="col-6 form-group">
                    <label>1era Direccion<span class="text-danger">*</span></label>
                    <input type="text" name="addressLine1" id="addressLine1" class="form-control" required>
                </div>
                <div class="col-6 form-group">
                    <label>2da Direccion<span class="text-danger">*</span></label>
                    <input type="text" name="addressLine2" id="addressLine2" class="form-control" required>
                </div>

                <div class="col-3 form-group">
                    <label>Ciudad<span class="text-danger">*</span></label>
                    <input type="text" name="city" id="city" class="form-control" required>
                </div>
                <div class="col-3 form-group">
                    <label>Estado<span class="text-danger">*</span></label>
                    <input type="text" name="state" id="state" class="form-control" required>
                </div>
                <div class="col-3 form-group">
                    <label>Codigo Postal<span class="text-danger">*</span></label>
                    <input type="number" name="postalCode" id="postalCode" class="form-control" required>
                </div>
                <div class="col-3 form-group">
                    <label>Pais<span class="text-danger">*</span></label>
                    <input type="text" name="country" id="country" class="form-control" required>
                </div>

                <div class="col-4 form-group">
                    <label>#Num-Representante de Ventas<span class="text-danger">*</span></label>
                    <input type="number" name="salesRepEmployeeNumber" id="salesRepEmployeeNumber" class="form-control" required>
                </div>
                <div class="col-4 form-group">
                    <label>Límite de Credito<span class="text-danger">*</span></label>
                    <input type="number" name="creditLimit" id="creditLimit" class="form-control" required>
                </div>
                <br>
                <div class="col-12">
                    <button id="boton1" class="btn btn-success" onclick="save()">Registrar</button>
                    <button id="boton2" class="btn btn-info" onclick="update()">Modificar</button>
                </div>
            </div>
        </div>
        <table id="table" class="table table-striped mt-3"></table>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="/menu.js"></script>
</body>
</html>