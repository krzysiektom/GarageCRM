<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 31.01.19
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytowanie pracownika</title>
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Edytowanie pracownika:</h2>
<form action="/EmployeesServlet" method="post">
    <div class="form-group">
        <input type="hidden" name="id" value="${param.id}">
        <label for="firstName" class="col-sm-2 col-form-label">Imię:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="firstName" value="${param.firstName}"
               name="firstName">
        <br>
        <label for="lastName" class="col-sm-2 col-form-label">Nazwisko:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="lastName" value="${param.lastName}"
               name="lastName">
        <br>
        <label for="street" class="col-sm-2 col-form-label">Dane adresowe::</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="street" value="${param.street}"
               name="street">
        <br>
        <label for="zipCode" class="col-sm-2 col-form-label"></label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="zipCode" value="${param.zipCode}"
               name="zipCode">
        <br>
        <label for="city" class="col-sm-2 col-form-label"></label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="city" value="${param.city}"
               name="city">
        <br>
        <label for="phoneNumber" class="col-sm-2 col-form-label">Nr telefonu:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="phoneNumber" value="${param.phoneNumber}"
               name="phoneNumber">
        <br>
        <label for="note" class="col-sm-2 col-form-label">Notatka:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="note" value="${param.note}"
               name="note">
        <br>
        <label for="costWorkHour" class="col-sm-2 col-form-label">Koszt roboczogodziny:</label>
        <input type="number" step="1" class="form-group mx-sm-3 mb-2" id="costWorkHour" value="${param.costWorkHour}"
               name="costWorkHour">


    </div>
    <button type="submit" class="btn btn-primary">Zapisz</button>
</form>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
