<%@page import="java.util.List" %>
<%@page import="org.hibernate.Query" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title> All Notes:Note taker</title>

 

    
</head>
<body>
<div class ="container">
    <%@ include file="navbar.jsp" %>  
    <br>
    
   
    <h1 class ="text-uppercase">  All Notes  </h1>
   
    <div>
   </div>
    <div class = "row"> 
    <div class="col-12">
     <% 
     Session s= FactoryProvider.getFactory().openSession();
     Query q=s.createQuery("from Note");
     List<Note> list=q.list();
     for(Note note:list){
    	 
   	 %>
   	 
   	 
    	   <div class="card mt-3">
  <img class="card-img-top m-4" style="max-width:100px;" src="image/note.jpeg" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %>
    </p>
    
    <p> <b> <%=note.getAddedDate() %></b></p>
    <div class="container text-centre mt-2">
     <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <!--<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>  --> 
      <a href="AddNotes.jsp" class="btn btn-primary">Back</a>
    </div>
   
  </div>
 </div>  
    	 <% 
     }
     
     s.close();
      %>
    
    
    
    </div>
    </div>
    
    
    
   
  
   
 </div>

<!-- Bootstrap CSS -->
     <link href="css/style.css" rel="stylesheet"/> 
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    -->


    
</body>
</html>