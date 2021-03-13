<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="adminMenu.jsp" %>
     <%@page import="java.sql.*,java.text.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>set book</title>
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
        align-item:center;
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
            <h3 style="align:center">Book is Added</h3><br><br>
            
            <% 
            String ISBN=request.getParameter("ISBN");
            String bookName=request.getParameter("bookName");
            String NOFB=request.getParameter("nOfBook");
            String editionYear=request.getParameter("editionYear");
            String edition=request.getParameter("edition");
            String volume=request.getParameter("volume");
            String DOP=request.getParameter("DOP");
            String price=request.getParameter("price");
            String language=request.getParameter("language");
            String category=request.getParameter("category");
            String author=request.getParameter("author");
            String publication=request.getParameter("publication");
            String desc=request.getParameter("desc");
            String libName=request.getParameter("libName");
            StringTokenizer st=new StringTokenizer(author);
            int n=st.countTokens();
            String[] arr=new String[n];
            int i=0;
            while(st.hasMoreTokens())
            {
             arr[i++]=st.nextToken();
            }
          
            SimpleDateFormat sdf = new SimpleDateFormat("dd-mm-yyyy"); 
            Date startDate = sdf.parse(DOP);
            java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
            Connection con=(Connection)application.getAttribute("oracle");
            PreparedStatement pstmt2=con.prepareStatement("SELECT AUTID FROM AUTHORS WHERE AUTFNAME=?",ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            pstmt2.setString(1,arr[0]);
            ResultSet rs=pstmt2.executeQuery();
            String authid="";
            while(rs.next())
            {
            	authid=rs.getString("AUTID");
            }    
            PreparedStatement pstmt=con.prepareStatement("INSERT INTO BOOKS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)",ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            pstmt.setLong(1,Long.parseLong(ISBN));
            pstmt.setString(2,bookName);
            pstmt.setInt(3,Integer.parseInt(NOFB));
            pstmt.setInt(4,Integer.parseInt(editionYear));
            pstmt.setInt(5,Integer.parseInt(edition));
            pstmt.setInt(6,Integer.parseInt(volume));
            pstmt.setDate(7,sqlDate);
            pstmt.setFloat(8, Float.parseFloat(price));
            pstmt.setString(9,libName);
            pstmt.setString(10,category);
            pstmt.setString(11,language);
            pstmt.setString(12,authid);
            pstmt.setString(13,desc);
            pstmt.setString(14,publication);
            pstmt.executeUpdate();
            %>
           <a style="align:center text-decoration:none" href="addBook.jsp">Add another Books</a> 
            
        </div>
        <div class="div22">
            <img src="images/1.jpeg" alt="..."width="300px" height="300px" ><br>
            <img src="images/5.jpg" alt="..."width="300px" height="300px" > 
        </div>
    </div>
 </body>
</html>