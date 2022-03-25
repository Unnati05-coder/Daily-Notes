<%-- 
    Document   : edit
    Created on : 22 Mar, 2022, 9:45:16 PM
    Author     : Lenovo
--%>

<%@page import="com.Db.Dbconnector"%>
<%@page import="com.DAO.PostDao"%>
<%@page import="com.User.post"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Notes</title>
         <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%
            Integer noteid=Integer.parseInt(request.getParameter("note_id"));
            PostDao post1=new PostDao(Dbconnector.getConn());
            post p=post1.getDataById(noteid);
        %>
       <div class="container-fluid">
            <%@include file="all_component/navbar.jsp"%>
             <h1 class="text-center py-4">Edit Your Notes</h1>
            <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
   <form action="NotesEditServlet" method="post">
       <input type="hidden" value="<%=noteid%>"  name="noteid1">
       
  <div class="form-group">
    
     
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Input text" name="title" required="required" value="<%=p.getTitle()%>">
    
  </div>
       <label for="exampleInputEmail1">Enter Notes</label>
       <div class="form-group">
           <textarea rows="10" cols="" class="form-control" name="content" required="required"><%=p.getContent()%></textarea>
       </div>
  
  
       <div class="text-center"><button type="submit" class="btn btn-primary">Add Notes</button></div>
</form>
                    </div>
            </div>
        </div>
        </div>
             <div class="container-fluid bg-dark py-3 mt-5 ">
    <p class="text-center text-white">
        any error then contact with Unnati. Designed and developed by Unnati</p>
    <p class="text-center text-white">
        All Right Reserved @Unnati 2022-23
    </p>
   </div>

        
    </body>
</html>
