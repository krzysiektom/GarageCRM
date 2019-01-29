<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie klienta</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<h2>Dodawanie nowego klienta:</h2>
<form action="" method="post">
    <div class="form-group">
        <label for="firstName" class="col-sm-2 col-form-label">Imię:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="firstName" placeholder="Wprowadź imię"
               name="firstName">
        <br>
        <label for="lastName" class="col-sm-2 col-form-label">Nazwisko:</label>
        <input type="text" class="form-group mx-sm-3 mb-2" id="lastName" placeholder="Wprowadź nazwisko"
               name="lastName">
        <br>
        <label for="dateOfBirth" class="col-sm-2 col-form-label">Data urodzin:</label>
        <input type="date" class="form-group mx-sm-3 mb-2" id="dateOfBirth" name="dateOfBirth">
        <br>

    </div>
    <button type="submit" class="btn btn-primary">Zapisz</button>
</form>
<%@include file="fragments/footer.jsp" %>

</body>
</html>
