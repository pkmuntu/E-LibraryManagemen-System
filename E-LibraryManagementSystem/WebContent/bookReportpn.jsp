<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="adminMenu.jsp" %>
     <%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>bookReport</title>
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
        min-height: 430px;
        color:black;
        justify-content: center;
        padding: 4px;
        list-style: none;
        background-color: #faf8f8;
    }
   
    </style>
</head>
<body class="main11">
  <div class="div0">
        <div class="div11" >
            <h4>Book Report</h4><hr><br><br>
              <%! int rn=0; %>
              <%
                            Connection con=(Connection)application.getAttribute("oracle");  
                            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                              ResultSet rs=stmt.executeQuery("SELECT ROWNUM AS SNO,b.ISBN,b.BOOKNAME,b.NUMOFBOOK,a.AUTFNAME||' '||a.AUTMNAME||' '||a.AUTLNAME AS AUTHOR FROM BOOKS b INNER JOIN AUTHORS a ON b.AUTID=a.AUTID");
                              ResultSetMetaData rm=rs.getMetaData();
                              int n=rm.getColumnCount();
                            
                              %>
                           <table class="table">
                           <thead class="thead-dark">
                           <tr>
                           <%  for(int i=1;i<=n;i++)
                           {
                           %>
                           <th scope="col"><%=rm.getColumnName(i) %></th>
                           <%} %>
                             </tr>
                           </thead>
                            <tbody>
                     
                      <% 
                      int r=Integer.parseInt(request.getParameter("pagep"));
                      rs.absolute(r);
                      while(rs.next())
                    	  {%>
                    	   <tr>
                        <th scope="row"><%=rs.getInt("SNO") %></th>
                        <td><%=rs.getLong("ISBN") %></td>
                        <td><%=rs.getString("BOOKNAME") %></td>
                        <td><%=rs.getInt("NUMOFBOOK") %></td>
                        <td><%=rs.getString("AUTHOR") %></td>
                          </tr>
                          <%
                             rn=rs.getRow();
                            if(rn%15==0)
                            	break;
                    	  }
                           %>                 
                           </tbody>
                           </table>
              <%ResultSet rs1=stmt.executeQuery("SELECT COUNT(*) FROM BOOKS"); %>
              <p>Total number of books is <%while(rs1.next()) {%> <%=rs1.getInt(1) %><%} %></p>
               <div style="float:right">
               <form action="bookReportpn.jsp">
                 <button type="submit" class="btn btn-primary" name="pagep" value="<%=rn-15 %>" >previous</button>
                <button type="submit" class="btn btn-primary" name="pagep" value="<%= rn %>">next</button> 
           </form></div>
        </div>
       
    </div>
 </body>
</html>