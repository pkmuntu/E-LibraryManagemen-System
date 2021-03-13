<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="homeMenu.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<style type="text/css">
.main11{
    display:flex;
    flex-direction: column;
    align-items: center;
    color:#000000;
    background-color:rgba(29, 72, 88, 0.9);
    padding: 0;
    list-style: none;
}
.div11{
    flex: 1 0 auto;
    min-height: 100px;
    height:max-content;
    width: 70%;
    border: 1px solid rgba(29, 72, 88, 0.9);
    padding: 4px;
    text-align:justify;
    list-style: none;
    background-color: rgba(255, 255, 255, 0.9);
}
.div22{
    flex: 1 0 auto;
    width: 70%;
     color:black;
    height:max-content;
    border: 1px solid rgba(29, 72, 88, 0.9);
    padding: 4px;
    text-align:justify;
    list-style: none;
    background-color: rgba(255, 255, 255, 0.9);
}
.img
{
    width:100%;
    height: 400px;
    border-radius:10px;
}
</style>
</head>
<body class="main11">
<div  class="div11">
      <img src="images/2.jpg" class="img" alt="Image is loading">
</div>
<div class="div22">
<h2>E-LIBRARY MANAGEMENT SYSTEM</h2> <hr>
<p>E-Library Management System will deal in all the requirements needed for managing 
libraries. It will deal with the process of maintaining data about the books and many other 
things as well as transactions, which are taking place in the library with respect to the issue, 
return and renewal of the books. It helps the administrator to accomplish his tasks at ease. 
It lets the users sign-up to the library initially and then sign-in every time they want to find 
some item in the library. The user can also maintain and edit his profile details. A user can 
sign-in and search for items, borrow items if they are present in the library. All details of the 
users and library information are stored in the database. The user need not visit the library 
every time to find an item; instead, he/she can search items from his/her own PC/laptop.</p>
</div>
</body>
</html>