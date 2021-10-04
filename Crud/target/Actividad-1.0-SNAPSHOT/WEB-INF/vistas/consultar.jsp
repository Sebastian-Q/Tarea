<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 01/10/2021
  Time: 09:36 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath(); %>
<html>
<head>
    <title>CONSULTA DE DATOS</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<div class="row">
    <div class="col-12 col-sm-10">
        <section>
            <div class="card">
                <div class="card-header">
                    CLIENTES Registrados
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead class="bg-secondary text-white">
                        <tr>
                            <td class="text-center">Id</td>//customerNumber
                            <td class="text-center">Nombre Completo</td>//customerName
                            <td class="text-center">Apellido de Contacto</td>//contactLastName
                            <td class="text-center">Nombre de Contacto</td>//contactFirstName
                            <td class="text-center">Numero</td>//phone
                            <td class="text-center">1era Direccion</td>//addressLine1
                            <td class="text-center">2da Direccion</td>//addressLine2
                            <td class="text-center">Ciudad</td>//city
                            <td class="text-center">Estado</td>//state
                            <td class="text-center">Codigo Postal</td>//postalCode
                            <td class="text-center">Pais</td>//country
                            <td class="text-center">salesRepEmployeeNumber</td>//salesRepEmployeeNumber
                            <td class="text-center">Limite de Credito</td>//creditLimit
                            <td class="text-center">Modificar</td>
                            <td class="text-center">Eliminar</td>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        <c:forEach items="${listPlayer}" var="player" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${player.liga.name}</td>
                                <td>${player.name}</td>
                                <td>${player.team.name}</td>
                                <td class="text-center">
                                    <form method="get" action="<%=context%>/ServletModificar">
                                        <input type="hidden" name="id" value="${player.id}">
                                        <button title="Modificar" type="submit" class="btn btn-outline-warning"><i data-feather="edit"></i></button>
                                    </form>
                                </td>
                                <td class="text-center">
                                    <form method="post" action="<%=context%>/ServletEliminar">
                                        <input type="hidden" id="id" name="id" value="${player.id}">
                                        <button title="Eliminar" class="btn btn-outline-danger"><i data-feather="trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
