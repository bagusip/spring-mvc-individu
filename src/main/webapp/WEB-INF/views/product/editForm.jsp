<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit a Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.css">
</head>
<body>
<div style="width: 50%; margin-left: auto; margin-right: auto;">
   <h1>Edit Product</h1>
   <legend>Edit a Product</legend>
   <br>
</div>

<form:form modelAttribute="product" action="../updateproduct" method="post" style="width: 50%; margin-left: auto; margin-right: auto;">
<form:hidden path="id" clas="edit-form"/>
<div class="form-group">
     <p>
    <label for="name">Name: </label>
    <form:input id="name" path="name"/>
    </p>
</div>

<div class="form-group">
     <p>
    <label for="quantity">Quantity: </label>
    <form:input id="quantity" path="quantity"/>
    </p>
</div>


<div class="form-group">
     <p>
    <label for="price">Price: </label>
    <form:input id="price" path="price"/>
    </p>
</div>

<div class="form-group">
     <p id="buttons">
    <input class="btn btn-success" id="submit" type="submit" tabindex="5"
    value="Update Product"/>
    <input class="btn btn-info" type="reset" id="reset" />
    <a class="btn btn-light" href='<c:url value="../list-all"/>' class="btn btn-primary">Back</a>
</div>


</p>
      <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>
</form:form>
</body>
</html>


