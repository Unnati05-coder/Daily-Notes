<%-- 
    Document   : home.jsp
    Created on : 19 Mar, 2022, 3:54:51 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user3=(UserDetails)session.getAttribute("userD");
    if(user3==null)
    {
        response.sendRedirect("login2.jsp");
        session.setAttribute("login-error","Please Login..");
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .custom-image{
                 background:url("img/p1.jpg");
                 width:100%;
                 height:87vh;
                 background-repeat:no-repeat;
                 background-size:cover;
             }
             
            </style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %>
       
        <div class="container-fluid  text-center custom-image py-5">
           
           
              <h1>START TAKING YOUR NOTES</h1>
            <a href="Addnotes.jsp" class="btn btn-outline-primary">Start Here</a>
           
            
            
            
        </div>
            <%@include file="all_component/footer.jsp" %>
   
    </body>
</html>
