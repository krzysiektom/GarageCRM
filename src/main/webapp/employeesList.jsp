<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 31.01.19
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Pracownicy</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Lista pracowników:</h2>
<nav class="nav justify-content-end">
    <a class="nav-link active" href="employeeAdd.jsp">Dodaj pracownika</a>
</nav>
<c:if test="${ employees == null || empty employees}">
    <h3>Brak klientów</h3>
</c:if>
<c:if test="${not empty employees}">
    <table class="table table-striped table-bordered">
        <thead>
        <tr class="table-active">
            <th scope="col">#</th>
            <th scope="col">Imię</th>
            <th scope="col">Nazwisko</th>
            <th scope="col">Telefon</th>
            <th scope="col">Zlecona praca</th>
            <th scope="col">Dane osobowe</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employees}" varStatus="count">
            <tr>
                <th scope="row">${count.count}</th>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.phoneNumber}</td>
                <td><a href="/VehiclesCustomerServlet?customerId=${employee.id}">Szczegóły</a></td>
                <td><a href="/OrdersCustomerServlet?customerId=${employee.id}">Szczegóły</a></td>
                <td>
                    <a href="employeeEdit.jsp?id=${employee.id}&firstName=${employee.firstName}&lastName=${employee.lastName}
&street=${employee.street}&zipCode=${employee.zipCode}&city=${employee.city}&phoneNumber=${employee.phoneNumber}
&note=${employee.note}&costWorkHour=${employee.costWorkHour}">Edytuj</a>
                    <a href="/EmployeesServlet?employeeIdToDelete=${employee.id}">Usuń</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
<%@include file="fragments/footer.jsp" %>

</body>
</html>
