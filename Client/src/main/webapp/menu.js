
let boton1 = document.getElementById("boton1");
let boton2 = document.getElementById("boton2");

boton1.style.display = "bloqueo"
boton2.style.display = "null"

const getEmployees = () => {
    $.ajax({
        type: 'GET',
        headers: { "Accept": "application/json" },
        url: 'http://localhost:8080/Actividad_war_exploded/customer'
    }).done(client => {
        let listCustomers = client;
        let table = $("#table");
        table.append("<tr class='bg-dark text-light'>"+"<th scope='col'></th>"+
            "<th scope='col'>#</th>"+"<th scope='col'>Nombre</th>"+
            "<th scope='col'>Nombre del Contacto</th>"+
            "<th scope='col'>Teléfono</th>"+
            "<th scope='col'>Dirección</th>"+
            "<th scope='col'>Ubicación</th>"+
            "<th scope='col'>Representante de Venta</th>"+
            "<th scope='col'>Límite de Crédito</th>"+
            "<th scope='col'>Editar</th>"+"<th scope='col'>Borrar</th>"+
            "</tr>")
        for(let i = 0; i < listCustomers.length; i++){
            table.append("<tr>"+"<td>"+client[i].customerNumber+ "</td>"+
                "<td>"+client[i].customerName+ "</td>"+
                "<td>"+client[i].contactLastName+" "+client[i].contactFirstName+ "</td>"+
                "<td>"+client[i].phone+ "</td>"+"<td>"+client[i].addressLine1+ "</td>"+
                "<td>"+client[i].city+", "+ client[i].country+ "</td>"+"<td>"+client[i].salesRepEmployeeNumber+ "</td>"+
                "<td>"+client[i].creditLimit + "</td>"+
                "<td><button class='btn btn-info' onclick='findById("+client[i].customerNumber+")'>Editar</button></td>"+
                "<td><button class='btn btn-danger' onclick='remove("+client[i].customerNumber+")'>Borrar</button></td>"+
                "</tr>")
        }

    });
};
getEmployees();

//FALLA EL DELETE
const remove = id => {
    $.ajax({
        type: 'DELETE',
        headers: { 
            "Accept": "application/json",
        },
        url: 'http://localhost:8080/Actividad_war_exploded/customer/delete/'+id
    }).done(client => {
        console.log(client);
    });
}

const findById = id => {
    $.ajax({
        type: 'GET',
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
        },
        url: 'http://localhost:8080/Actividad_war_exploded/customer/'+id
    }).done(client => {
        console.log(client)
        boton1.style.display = "null"
        boton2.style.display = "bloqueo"
        document.getElementById("customerNumber").value=client.customerNumber
        document.getElementById("customerName").value=client.customerName
        document.getElementById("contactLastName").value=client.contactLastName
        document.getElementById("contactFirstName").value=client.contactFirstName
        document.getElementById("phone").value=client.phone
        document.getElementById("addressLine1").value=client.addressLine1
        document.getElementById("addressLine2").value=client.addressLine2
        document.getElementById("city").value=client.city
        document.getElementById("state").value=client.state
        document.getElementById("postalCode").value=client.postalCode
        document.getElementById("country").value=client.country
        document.getElementById("salesRepEmployeeNumber").value=client.salesRepEmployeeNumber
        document.getElementById("creditLimit").value=client.creditLimit
    });
}


const update = () => {
    let cliente = new Object();
    let id = document.getElementById("customerNumber").value
    cliente.customerNumber = document.getElementById("customerNumber").value
    cliente.customerName = document.getElementById("customerName").value
    cliente.contactLastName = document.getElementById("contactLastName").value
    cliente.contactFirstName = document.getElementById("contactFirstName").value
    cliente.phone = document.getElementById("phone").value
    cliente.addressLine1 = document.getElementById("addressLine1").value
    cliente.addressLine2 = document.getElementById("addressLine2").value
    cliente.city = document.getElementById("city").value
    cliente.state = document.getElementById("state").value
    cliente.postalCode = document.getElementById("postalCode").value
    cliente.country = document.getElementById("country").value
    cliente.salesRepEmployeeNumber = document.getElementById("salesRepEmployeeNumber").value
    cliente.creditLimit = document.getElementById("creditLimit").value

    $.ajax({
        type: 'POST',
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
        },
        url: 'http://localhost:8080/Actividad_war_exploded/customer/save/'+id,
        data: cliente
    }).done(res => {
        console.log(res)
        boton1.style.display = "bloqueo"
        boton2.style.display = "nulo"
        document.getElementById("customerNumber").value=""
        document.getElementById("customerName").value=""
        document.getElementById("contactLastName").value=""
        document.getElementById("contactFirstName").value=""
        document.getElementById("phone").value=res.phone
        document.getElementById("addressLine1").value=""
        document.getElementById("addressLine2").value=""
        document.getElementById("city").value=""
        document.getElementById("state").value=""
        document.getElementById("postalCode").value=""
        document.getElementById("country").value=""
        document.getElementById("salesRepEmployeeNumber").value=""
        document.getElementById("creditLimit").value=""
    });
}

const save = () => {
    let cliente = new Object();
    cliente.customerNumber = document.getElementById("customerNumber").value
    cliente.customerName = document.getElementById("customerName").value
    cliente.contactLastName = document.getElementById("contactLastName").value
    cliente.contactFirstName = document.getElementById("contactFirstName").value
    cliente.phone = document.getElementById("phone").value
    cliente.addressLine1 = document.getElementById("addressLine1").value
    cliente.addressLine2 = document.getElementById("addressLine2").value
    cliente.city = document.getElementById("city").value
    cliente.state = document.getElementById("state").value
    cliente.postalCode = document.getElementById("postalCode").value
    cliente.country = document.getElementById("country").value
    cliente.salesRepEmployeeNumber = document.getElementById("salesRepEmployeeNumber").value
    cliente.creditLimit = document.getElementById("creditLimit").value
    $.ajax({
        type: 'POST',
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
        },
        url: 'http://localhost:8080/Actividad_war_exploded/customer/save',
        data: cliente
    }).done(res => {
        console.log(res);
        boton1.style.display = "bloqueo"
        boton1.style.display = "nulo"
    });
}
