<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="adminMenu.jsp" %>
    <%@page import="java.sql.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updatePassword</title>
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
         padding: px;
         list-style: none;
    }
    .div0{
        display:flex;
        flex: 0 1 auto;
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
        min-height: 630px;
        color:black;
        justify-content: center;
        padding: 4px;
        list-style: none;
        background-color: #faf8f8;
    }
    .div22{
        flex: 1 0 min;
        min-height: 630px;
        hight:max-content;
        justify-content: center;
        padding: 4px;
        list-style: none;
        background-color: #ffffff;
    }
    .div22 img{
        padding: 4px;
        border-radius: 10px;
    }
    </style>
</head>
<body class="main11">
  <div class="div0">
        <div class="div11" >
            <h3 style="align:center">User is Added</h3><br><br>
            
            <% 
            String fName=request.getParameter("fname");
            String mName=request.getParameter("mname");
            String lName=request.getParameter("lname");
            String category=request.getParameter("category");
            String gender=request.getParameter("gender");
            String DOB=request.getParameter("DOB");
            String phoneNo=request.getParameter("phoneNo");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String country=request.getParameter("country");
            String userName=request.getParameter("username");
            String password=request.getParameter("password");
            SimpleDateFormat sdf = new SimpleDateFormat("dd-mm-yyyy"); 
            Date startDate = sdf.parse(DOB);
            java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
            Connection con=(Connection)application.getAttribute("oracle");  
            PreparedStatement pstmt=con.prepareStatement("INSERT INTO USERS VALUES(102,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            pstmt.setString(1,fName);
            pstmt.setString(2,mName);
            pstmt.setString(3,lName);
            pstmt.setString(4,category);
            pstmt.setString(5,gender);
            pstmt.setDate(6,sqlDate);
            pstmt.setLong(7,Long.parseLong(phoneNo));
            pstmt.setString(8,email);
            pstmt.setString(9,address);
            pstmt.setString(10,city);
            pstmt.setString(11,state);
            pstmt.setString(12,country);
            pstmt.setString(13,userName);
            pstmt.executeUpdate();
            %>
           <a style="align:center text-decoration:none" href="myAccount.jsp">Go to myAccount.jsp</a> 
            
        </div>
        <div class="div22">
            <img src="images/1.jpeg" alt="..."width="300px" height="300px" ><br>
            <img src="images/5.jpg" alt="..."width="300px" height="300px" > 
        </div>
    </div>
 </body>
</html>