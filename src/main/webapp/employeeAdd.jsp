<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 31.01.19
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie pracownika</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Dodawanie nowego pracownika:</h2>
<form action="/EmployeesServlet" method="post">
    <div class="form-group">
        <label for="firstName" class="col-sm-2 col-form-label">Imię:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="firstName" placeholder="Wprowadź imię"
               name="firstName">
        <br>
        <label for="lastName" class="col-sm-2 col-form-label">Nazwisko:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="lastName" placeholder="Wprowadź nazwisko"
               name="lastName">
        <br>
        <label for="street" class="col-sm-2 col-form-label">Dane adresowe:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="street" placeholder="Wprowadź ulicę" name="street">
        <br>
        <label for="zipCode" class="col-sm-2 col-form-label"></label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="zipCode" placeholder="Wprowadź kod" name="zipCode">
        <br>
        <label for="city" class="col-sm-2 col-form-label"></label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="city" placeholder="Wprowadź miasto" name="city">
        <br>
        <label for="phoneNumber" class="col-sm-2 col-form-label">Nr telefonu:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="phoneNumber" placeholder="Wprowadź numer telefonu"
               name="phoneNumber">
        <br>
        <label for="note" class="col-sm-2 col-form-label">Notatka:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="note" placeholder="Wprowadź opis" name="note">
        <br>
        <label for="costWorkHour" class="col-sm-2 col-form-label">Koszt roboczogodziny:</label>
        <input type="number" step="1" class="form-group mx-sm-3 mb-2" id="costWorkHour"
               placeholder="Koszt roboczogodziny" name="costWorkHour">
        <br>
    </div>
    <button type="submit" class="btn btn-primary">Zapisz</button>
</form>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
