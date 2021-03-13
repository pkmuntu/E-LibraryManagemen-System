<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="adminMenu.jsp" %>
      <%@page import=" java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>book</title>
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
            <h4>Add Book Form</h4><hr><br>
             <form action="setBook.jsp">
                    <div class="form-row">
                     <div class="form-group col-md-6">
                        <label for="ISBN">ISBN Number<b style="color: red;" color:red>*</b></label>
                        <input type="number" class="form-control" name="ISBN" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Name">Book Name<b style="color: red;" color:red>*</b></label>
                        <input type="text" class="form-control" name="bookName" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="number">Number of books<b style="color: red;" color:red>*</b></label>
                        <input type="number" class="form-control" name="nOfBook"  required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="number">Edition year<b style="color: red;" color:red>*</b></label>
                        <input type="number" class="form-control" name="editionYear" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Name">Edition<b style="color: red;" color:red>*</b></label>
                        <input type="number" class="form-control" name="edition" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="number">Volume<b style="color: red;" color:red>*</b></label>
                        <input type="number" class="form-control" name="volume" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="Date">Date of purches<b style="color: red;" color:red>*</b></label>
                        <input type="Date" class="form-control" name="DOP" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="number">Price<b style="color: red;" color:red>*</b></label>
                        <input type="number" step="any" class="form-control" name="price" required>
                    </div>
                    
                  <div class="form-group col-md-6">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Language<b style="color: red;" color:red>*</b></label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="language" >
                            <option selected>Choose...</option>
                            <%
                            Connection con=(Connection)application.getAttribute("oracle");  
                            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                              ResultSet rs1=stmt.executeQuery("select LANGNAME FROM LANGUAGES");
                              while(rs1.next())
                              {
                              %>
                            <option value="<%= rs1.getString("LANGNAME") %>"><%= rs1.getString("LANGNAME") %></option>
                            <%} %>
                          </select>
                     </div>   
                       <div class="form-group col-md-6">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Library Name<b style="color: red;" color:red>*</b></label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="libName">
                            <option selected>Choose...</option>
                              <% ResultSet rsr=stmt.executeQuery("select LIBNAME FROM LIBRARY");
                              while(rsr.next())
                              {
                              %>
                            <option value="<%= rsr.getString("LIBNAME") %>"><%= rsr.getString("LIBNAME") %></option>
                            <%} %>
                          </select>
                          </div>
                     <div class="form-group col-md-6">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Category<b style="color: red;" color:red>*</b></label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="category">
                            <option selected>Choose...</option>
                              <% ResultSet rs2=stmt.executeQuery("select CATENAME FROM CATEGORYS");
                              while(rs2.next())
                              {
                              %>
                            <option value="<%= rs2.getString("CATENAME") %>"><%= rs2.getString("CATENAME") %></option>
                            <%} %>
                          </select>
                          </div>
                     <div class="form-group col-md-6">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Authors<b style="color: red;" color:red>*</b></label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="author">
                            <option selected>Choose...</option>
                              <% ResultSet rs3=stmt.executeQuery("select AUTFNAME||' '||AUTMNAME||' '||AUTLNAME AS AUTNAME FROM AUTHORS");
                              while(rs3.next())
                              {
                              %>
                            <option value="<%= rs3.getString("AUTNAME") %>"><%= rs3.getString("AUTNAME") %></option>
                            <%} %>
                          </select>
                     </div>   
                      <div class="form-group col-md-6">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Publications<b style="color: red;" color:red>*</b></label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="publication">
                            <option selected>Choose...</option>
                              <% ResultSet rs4=stmt.executeQuery("select PNAME FROM PUBLICATIONS");
                              while(rs4.next())
                              {
                              %>
                            <option value="<%= rs4.getString("PNAME") %>"><%= rs4.getString("PNAME") %></option>
                            <%} %>
                          </select>
                     </div>   
                    <div class="form-group col-md-6">
                        <label for="exampleFormControlTextarea1">Message</label><br>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="desc"></textarea><br>
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <button type="submit" class="btn btn-primary">Add Book</button>
                    <button type="reset" class="btn btn-primary">Reset form</button>           
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