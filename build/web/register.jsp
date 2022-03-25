<%-- 
    Document   : register.jsp
    Created on : 19 Mar, 2022, 3:30:58 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .div-color{
                 background-image: linear-gradient(to right top, #ae8e9c, #b091ad, #a997c0, #98a0d2, #7baae0);
                height:650px;
                
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="all_component/allcss.jsp" %>
        
    </head>
    <body>
       <%@include file="all_component/navbar.jsp" %>
     
       <div class="container-fluid div-color ">
           <div class="row">
               <div class="col-md-4 offset-md-4 ">
                   <div class="card mt-4">
 <div class="card-header text-center text-white  bg-custom">
 <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
  <h4>Registration </h4>
                           
  </div>

  <%
      String regMsg=(String)session.getAttribute("reg-success");
      if(regMsg!=null)
      {%>
      <div class="alert alert-success" role="alert"> <%=regMsg%>Login<a href="login2.jsp">Click here</a></div>
      <%
          session.removeAttribute("reg-success");
          }
      %>
       <%
      String failedMsg=(String)session.getAttribute("failed-msg");
      if(failedMsg!=null)
      {
       %>
      <div class="alert alert-danger" role="alert"> <%=failedMsg%></div>
      <%
           session.removeAttribute("failed-msg");
      }
      %>
  <div class="card-body">
<form action="UserServlet" method="post">
  <div class="form-group">
      <label >Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputname"  name="fname" >
    <label>Enter Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
    
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="upassword">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>

 </div>
</form>              
    </div>
    </div>
       </div>
       </div>
       </div>
       <%@include file="all_component/footer.jsp" %>
    </body>
</html>
