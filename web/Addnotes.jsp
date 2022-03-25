<%-- 
    Document   : Addnotes.jsp
    Created on : 19 Mar, 2022, 3:55:18 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    UserDetails user2=(UserDetails)session.getAttribute("userD");
    if(user2==null)
    {
        response.sendRedirect("login2.jsp");
        session.setAttribute("login-error","Please Login..");
    }
    %>
<!DOCTYPE html>
<html>
     <head>
         <style type="text/css">
            .div-color{
            background-image: linear-gradient(to right top, #ae8e9c, #b091ad, #a997c0, #98a0d2, #7baae0);
                height:700px;
                
            }
            </style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
       
        <div class="container-fluid div-color">
            <%@include file="all_component/navbar.jsp"%>
             <h1 class="text-center py-4">Add Your Notes</h1>
            <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
   <form action="AddNotesServlet" method="post">
       
  <div class="form-group">
      <%@page import="com.servlet.loginServlet"%>
      <%@page import="com.User.UserDetails"%>
      <%
          UserDetails user1=(UserDetails)session.getAttribute("userD");
          if(user1!=null)
          {%>
                   <input type="hidden" value="<%= user1.getId()%>" name="uid">
          <%}
      %>
     
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Input text" name="title" required="required">
    
  </div>
       <label for="exampleInputEmail1">Enter Notes</label>
       <div class="form-group">
           <textarea rows="10" cols="" class="form-control" name="content" required="required"></textarea>
       </div>
  
  
       <div class="text-center"><button type="submit" class="btn btn-primary">Add Notes</button></div>
</form>
                    </div>
            </div>
        </div>
        </div>
             <div class="container-fluid bg-dark  py-3 ">
    <p class="text-center text-white">
        any error then contact with Unnati. Designed and developed by Unnati</p>
    <p class="text-center text-white">
        All Right Reserved @Unnati 2022-23
    </p>
   </div>

             
       
    </body>
</html>
