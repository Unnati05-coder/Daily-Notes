<%-- 
    Document   : index.jsp
    Created on : 19 Mar, 2022, 3:30:12 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
         <style type="text/css">
             .back-img{
                 background:url("img/note3.jpg");
                 width:100%;
                 height:100vh;
                 background-repeat:no-repeat;
                 background-size:cover;
             }
             </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
         <%@include file="all_component/allcss.jsp"%>
        
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
       
        <div class="container-fluid back-img">
            <div  class="text-center">
            <h1 class="text-white  py-5   "><i class="fa fa-book" aria-hidden="true"></i>E-Notes Save Your Notes </h1>
            <a href="login2.jsp" class="btn btn-light"><i class="fa fa-user" aria-hidden="true"></i>Login</a>
             <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
             </div>
        </div>
         <%@include file="all_component/footer.jsp" %>
    </body>
</html>
