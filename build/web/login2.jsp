<%-- 
    Document   : login2.jsp
    Created on : 19 Mar, 2022, 3:30:39 PM
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
        <title>Login Page</title>
      <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %>
       <div class="container-fluid div-color ">
           <div class="row">
               <div class="col-md-4 offset-md-4 ">
                   <div class="card  mt-4 ">
                       <div class="card-header text-center text-white  bg-custom">
                           <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                           <h4>Login</h4>
                           
                       </div>
        <%
                       String invalid=(String) session.getAttribute("login-failed");
      if(invalid!=null)
      {
       %>
      <div class="alert alert-danger" role="alert"> <%=invalid%></div>
      <%
           session.removeAttribute("login-failed");
      }
      %>
      <%
          String withoutLogin=(String)session.getAttribute("login-error");
          if(withoutLogin!=null)
          {%>
              <div class="alert alert-danger" role="alert"> <%=withoutLogin%></div> 
          <%
              session.removeAttribute("login-error");
            }
          %>
          <%
              String logout=(String)session.getAttribute("logoutMsg");
              if(logout!=null)
              {%>
              <div class="alert alert-success" role="alert"> <%=logout%></div> 
              
              <%
                  session.removeAttribute("logoutMsg");
                  }
              %>
                           <div class="card-body">
<form action="loginServlet" method="post">
  <div class="form-group">
     
    <label> Enter Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="upassword">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
                           </div>
                       
                   </div>
           </div>
       </div>
       </div>
        
        
<%@include file="all_component/footer.jsp" %>
        
    </body>
</html>
