<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 30.01.19
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytowanie klienta</title>
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Edytowanie klienta:</h2>
<form action="/CustomersServlet" method="post">
    <div class="form-group">
        <input type="hidden" name="id" value="${param.customerId}">
        <label for="firstName" class="col-sm-2 col-form-label">Imię:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="firstName" value="${param.customerFirstName}"
               name="firstName">
        <br>
        <label for="lastName" class="col-sm-2 col-form-label">Nazwisko:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="lastName" value="${param.customerLastName}"
               name="lastName">
        <br>
        <label for="dateOfBirth" class="col-sm-2 col-form-label">Data urodzin:</label>
        <input type="date" class="form-group mx-sm-3 mb-2" id="dateOfBirth" value="${param.customerDateOfBirth}"
               name="dateOfBirth">
        <br>

    </div>
    <button type="submit" class="btn btn-primary">Zapisz</button>
</form>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
