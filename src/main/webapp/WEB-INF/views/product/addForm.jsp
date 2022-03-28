<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Add Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.css">
</head>
<body>
<h1>Product Add Form</h1>
<form:form modelAttribute="product" action="save" method="post" class="form-group" style="width: 50%; margin-left: auto; margin-right: auto;">
<!-- fieldset>legend+p>label+form:select#category -->
<fieldset>
<legend>Add a Product</legend>
<!-- (p>label+form:input#title)*3 -->
<p>
<label for="name">Product Name:</label>
<form:input id="name" path="name" />
</p>
<p>
<label for="description">Price:</label>
<form:input id="price" path="price" type="number"/>
</p>
<p>
<label for="quantity">Quantity:</label>
<form:input id="quantity" path="quantity" />
</p>
<!-- p#id>input#reset+input#submit -->
<p id="id">
<input type="reset" id="reset" />
<input type="submit" id="submit" value="Add Product"/>
</p>
</fieldset>
      <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>
</form:form>
</body>
</html>