<%-- 
    Document   : ShowNotes.jsp
    Created on : 22 Mar, 2022, 12:37:21 PM
    Author     : Lenovo
--%>

<%@page import="com.Db.Dbconnector"%>
 <%@page import="com.DAO.PostDao"%>
  <%@page import="com.User.post"%>
   <%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user4=(UserDetails)session.getAttribute("userD");
    if(user4==null)
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
            .div-color{
                text-transform: uppercase;
                text-color: #000000
                
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Notes</title>
         <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        
        <%@include file="all_component/navbar.jsp"%>
        <%
            String update=(String) session.getAttribute("updateMsg");
            if(update!=null)
            {%>
            <div class="alert alert-success" role="alert"> <%=update%></div>
                
            <%
                   session.removeAttribute("updateMsg");
                }
%>
  <%
            String wrong=(String) session.getAttribute("wrongMsg");
            if(wrong!=null)
            {%>
            <div class="alert alert-danger" role="alert"><%=wrong%></div>
                
            <%
                   session.removeAttribute("wrongMsg");
                }
%>
        
        
        <div class="container">
        <h2 class="text-center py-3">ALL NOTES:</h2>
        
        
             
                <%
                        if(user4!=null)
                        {
                            PostDao ob=new PostDao(Dbconnector.getConn());
                            List<post> pos=ob.getData(user4.getId());
                            for(post po:pos)
                            {%>
                         <div class="card mt-3 div-color ">
                  <img alt="" src="img/p10.jpg" class="card-img-top mt-2 mx-auto " style="max-width:100px;">
                <div class="card-body p-4">
                  
                
                    <h5 class="card-title"><%=po.getTitle()%></h5>
                    <p>
                       <%=po.getContent()%>.
                    </p>
                    <p>
                        <b ><span class="div-color">Published By:<%=user4.getName()%></span></b>
                    </p>
                     <p>
                        <b ><span class="div-color">Published Date:<%=po.getDa()%></span></b>
                    </p>
                    <div class="container text-center mt-2">
                        <a href="deleteServlet?note_id=<%=po.getEid()%>" class="btn btn-danger">Delete</a>
                         <a href="edit.jsp?note_id=<%= po.getEid()%>" class="btn btn-primary">Edit</a>
                    </div>
                </div>
                
            </div>
                          <%
                                
                           }
                        }
                    %>
         
            
        
            </div>
                      
    
                      
    </body>
</html>
