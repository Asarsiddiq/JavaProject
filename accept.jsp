<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

String id=request.getParameter("id");
//String uid=request.getParameter("fid2"); 
//String pid=request.getParameter("fid3"); 
//String pid = (String)session.getAttribute("pid");
try

{
   
    {
       // String amt=request.getParameter("amt");
     
                
        String sql2="update req set status='1' where id='"+id+"' ";
         int a=stmt.executeUpdate(sql2);
               
                    if(a==1){       
                    
                    %>
                    <script language="javascript">
                        alert("accepted Successful");
                        window.location.href="lawyer_view_req.jsp";
                        </script>

<%
     
                }
 }
                
    
}
catch(Exception e)
{
    
}

%>
