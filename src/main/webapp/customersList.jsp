<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 29.01.19
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Klienci</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Lista klientów:</h2>
<nav class="nav justify-content-end">
    <a class="nav-link active" href="customerAdd.jsp">Dodaj klienta</a>
</nav>
<c:if test="${ customers == null || empty customers}">
    <h3>Brak klientów</h3>
</c:if>
<c:if test="${not empty customers}">
    <table class="table table-striped table-bordered">
        <thead>
        <tr class="table-active">
            <th scope="col">#</th>
            <th scope="col">Imię</th>
            <th scope="col">Nazwisko</th>
            <th scope="col">Pojazdy klienta</th>
            <th scope="col">Zlecenia klienta</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customers}" varStatus="count">
            <tr>
                <th scope="row">${count.count}</th>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td><a href="/VehiclesCustomerServlet?customerId=${customer.id}">Szczegóły</a></td>
                <td><a href="/OrdersCustomerServlet?customerId=${customer.id}">Szczegóły</a></td>
                <td>
                    <a href="customerEdit.jsp?customerId=${customer.id}&customerFirstName=${customer.firstName}&customerLastName=${customer.lastName}&customerDateOfBirth=${customer.dateOfBirth}">Edytuj</a>
                    <a href="/CustomersServlet?customerId=${customer.id}">Usuń</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
<%@include file="fragments/footer.jsp" %>

</body>
</html>
