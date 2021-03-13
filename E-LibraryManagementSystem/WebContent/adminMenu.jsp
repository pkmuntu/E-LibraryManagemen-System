<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminMenu.css" rel="stylesheet" type="text/css">
        
    </head>

    <body class="main">
       <div class ="main1">
           <div class="div1">
          <ul >
             
          <li><a href="logout">Logout</a></li>
              <li><a>|</a></li>
              <li><a><%
                  session=request.getSession(false);   
                  String name=(String)session.getAttribute("username"); 
                  if(name.equals("null"))
                  {%>
                	<%@page errorPage="error.jsp"  %>  
                <% }
                  out.print(name);
                  %></a></li>
                  <li><a>Welcome</a></li>
              </ul><br><br><br>   
              <h2 style="font-variant:small-caps;">E-Library Management System</h2>
              <p>    A complete solution to manage school library</p> 
        </div>
       </div>
       <div class ="main2">
        <div class="div2">
            <ul>
                <li><a href="adminHome.jsp">HOME</a></li>
                <li><a href="#">ABOUT US</a></li>
                <li><a href="#">DASHBOARD</a></li>
                <div class="dropdown">
                <li><a href="#" class="dropbtn">&dtrif;ADD NEW</a>
                <div class="dropdown-content">
                   <a href="addLibrary.jsp">Add Library</a>
                   <a href="addUser.jsp">Add Users</a>
                   <a href="addBook.jsp">Add Books</a>
                   <a href="addAuthor.jsp">Add Author</a>
                   <a href="addPublication.jsp">Add Publication</a>
                   <a href="addCategory.jsp">Add Category</a>
                   <a href="addLanguage.jsp">Add Language</a>
                   <a href="issueBook.jsp">Issue Books</a>
                      <a href="returnBook.jsp">Return Books</a>
                </div>
                </li>
                </div>
               <li class="dropdown" ><a href="" class="dropbtn"> &dtrif; REPORTS</a>
                <div class="dropdown-content">
                    <a href="libraryReport.jsp" >Library Reports</a>
                    <a href="userReport.jsp">Users Reports</a>
                    <a href="bookReport.jsp">Books Report</a>
                    <a href="publicationReport.jsp">Publisher Report</a>
                    <a href="categoryReport.jsp">Category Report</a>
                    <a href="languageReport.jsp">Language Report</a>
                    <a href="issueBookReport.jsp">Issue Report</a>
                </div>
                </li>
                <li><a href="myAccount.jsp">MY ACCOUNT</a></li>
                <li><a href="changePassword.jsp">CHANGE PASSWORD</a></li>
                <li><a href="logout">LOGOUT</a></li>
            </ul>
     </div>
    </div>
    </body>
</html>         