<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Punto de venta</title>
    </head>
    <body>
        <div class="container">
            <h1>Formulario de ventas</h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="opcion" value="ventas"/>
            </jsp:include>
            <br>
            <form action="VentaControlador" method="post">
                <input type="hidden" name="id" value="${venta.id}"/>
                <div class="mb-3">
                    <label for="" class="form-label">Cliente</label>
                    <select name="cliente_id" class="form-control">
                        <option value="">--seleccione--</option>
                        <c:forEach var="item" items="${lista_clientes}">
                            <option value="${item.id}"
                                    <c:if test="${venta.cliente_id == item.id}">
                                    selected
                                </c:if>
                                    >${item.nombre}</option>
                        </c:forEach>
                        
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Producto</label>
                    <select name="cliente_id" class="form-control">
                        <option value="">--seleccione--</option>
                        <c:forEach var="item" items="${lista_productos}">
                            <option value="${item.id}"
                                    <c:if test="${venta.producto_id == item.id}">
                                    selected
                                </c:if>
                                    >${item.nombre}</option>
                        </c:forEach>
                        
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Fecha</label>
                    <input type="text" class="form-control" name="celular" value="${venta.fecha}" placeholder="Escriba fecha">
                </div>
                
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
