<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Product List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.css">
</head>
<body>



<div style="width: 50%; margin-left: auto; margin-right: auto;">
   <h1>Product List</h1>
   <a href='<c:url value="add-product"/>' class="btn btn-primary">Add</a>
   <br>
   <br>
   <br>
</div>
 <table class="table" style="width: 50%; margin-left: auto; margin-right: auto; ">
   
  <tr>
     <th>ID</th>
  <th>Name</th>
  <th>Quantity</th>
  <th>price</th>
  <th>Action</th>
  </tr>
  <c:forEach items="${products}" var="product">
  <tr>
     <td>${product.id}</td>
  <td>${product.name}</td>
  <td>${product.quantity}</td>
  <td>Rp. <fmt:formatNumber value = "${product.price}" type = "number"/></td>
  <td>
   <a href="edit/${todo.id}" class="btn btn-success">Edit</a>
   <a href="delete/${todo.id} " class="btn btn-danger">Delete</a>
</td>
  </tr>
  </c:forEach>

      <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>
 </table>
</body>
</html>

<style type="text/css">
a.mainButton, a.mainButton:hover {
  text-decoration: none;
} 
</style>

