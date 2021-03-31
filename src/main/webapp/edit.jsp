<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*, org.hibernate.*, com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class ="container-fluid p-0 m-0">
    <%@ include file="navbar.jsp" %>
      
 <h1><strong>Edit your Note </strong> </h1>
 
<br>
  
  <%
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());

    Session s = FactoryProvider.getFactory().openSession();
    Transaction tx = s.beginTransaction();

    Note note = (Note) s.get(Note.class, noteId);
    %>
 
 
  <form action="/UpdateeServlet" method="post">
  
  <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
  <div class="mb-3">
   <h5><b> <label for="title">Note Title</label> </b> </h5> 
    <input 
    name="title"
    required
    type="text" 
    class="form-control" 
    id="title"
     aria-describedby="emailHelp"
     placeholder="Enter here"
     value="<%=note.getTitle() %>"
     />
     
      </div>
      
      
  <div class="form-group ">
  <h4><b><label for="content">Note Content</label></b> </h4> 
   <textarea
   name="content"
    required
    id="content"
     placeholder="Enter your content here"
     class="form-control"
     style="height:300px;"> <%=note.getContent()%>
     	</textarea>
  </div>
  
  <div class="container text-centre">
   <button type="submit" class="btn btn-success">save note</button>
  </div>
</form>
  
 
 
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