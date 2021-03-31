<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
 
</head>
<body>
<div class ="container-fluid ">
    <%@ include file="navbar.jsp" %>  
     
     
     <br>
     <h1> Please fill your note details</h1>
     <br>
     
     <!-- this is a add form -->
   
   <form action="saveNotesServlet" method="post">
  <div class="mb-3">
    <label for="title">Note Title</label>
    <input 
    name="title"
    required
    type="text" 
    class="form-control" 
    id="title"
     aria-describedby="emailHelp"
     placeholder="Enter here">
      </div>
      
      
  <div class="mb-3">
    <label for="content">Note Content</label>
   <textarea
   name="content"
    required
    id="content"
     placeholder="Enter your content here"
     class="form-control"
     style="height:300px;"
     ></textarea>
  </div>
  
  <div class="container text-centre">
   <button type="submit" class="btn btn-primary">Add</button>
    <a href="http://localhost:7000/home/dashboard" class="btn btn-primary">Back</a>
  </div>
</form>  
     
     
     
     
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