<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="homeMenu.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userLogin</title>
   <!-- CSS -->
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<style type="text/css">
   .main11{
         display:flex;
         flex-direction:column;
         align-items:center;
         background-color:rgba(29, 72, 88, 0.9);
         padding: 4px;
         list-style: none;
    }
    .div0{
        display:flex;
        flex: 1 0 auto;
        hight:max-content;
        align-items: center;
        width: 70%;
        padding: 4px;
        list-style: none;
        background-color: #faf8f8;
    }
    .div11
    {
        flex: 1 0 auto;
        width:35%;
        color:black;
        hight:max-content;
        min-height: 630px;
        justify-content: center;
        padding: 4px;
        list-style: none;
        background-color: #faf8f8;
    }
    .div22{
        flex: 1 0 min;
        min-height: 630px;
        justify-content: center;
        padding: 4px;
        list-style: none;
        background-color: #ffffff;
    }
    img{
        padding: 4px;
        border-radius: 10px;
    }
    button{
        color: rgb(28, 26, 126);
    }
    </style>
</head>
<body class="main11">
 <div class="div0">
        <div class="div11" >
            <h4></h4>Admin Login<hr>
            <h4 style="color:red;">Invalid Username and password</h4><br>
            <form action="login" method="post">
                <div class="form-group col-md-6">
                <label for="Username">Username<b style="color: red;">*</b></label>
                <input type="text" class="form-control" name="Username" required>
                </div>
                <div class="form-group col-md-6">
                <label for="password">Password<b style="color: red;">*</b></label>
                <input type="password" class="form-control" name="Password"  required>
                </div>
                <div class="col-auto my-1">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="autoSizingCheck2">
                      <label class="form-check-label" for="autoSizingCheck2">
                        Remember me
                      </label>
                    </div>
                  </div>
                  <div class="col-auto my-1">
                    <button type="submit" class="btn btn-primary">Sign-in</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                  </div>
            </form>
            
        </div>
        <div class="div22">
            <img src="images/1.jpeg" alt="..."width="300px" height="300px" ><br>
            <img src="images/5.jpg" alt="..."width="300px" height="300px" > 
        </div>
    </div>
</body>
</html>