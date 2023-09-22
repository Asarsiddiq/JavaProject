<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

String lid=request.getParameter("id");
String lname=request.getParameter("lname"); 
String cat=request.getParameter("cat"); 
String fees=request.getParameter("fees"); 
String uid = (String)session.getAttribute("uid");
String uname = (String)session.getAttribute("uname");
String contact = (String)session.getAttribute("contact");
String email = (String)session.getAttribute("email");
try

{
   
    
       // String amt=request.getParameter("amt");
       
        
                  // String sql4="select * from betting where uid='"+uid+"'";
                  // if(sql4){
    String qry = "select max(id) as maxid from req";
            ResultSet rs = stmt1.executeQuery(qry);
            int id1 = 0;
            if (rs.next()) {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
                   String ins = "insert into req values('"+id2+ "','"+lid+ "','" +lname + "','" +cat + "','" +fees + "','" +uid + "','" +uname + "','" +contact + "','" + email + "','0')";
            int n = stmt.executeUpdate(ins);
            if (n == 1) {      
                    
                    %>
                    <script language="javascript">
                        alert("Request Sended Successful");
                        window.location.href="user_req_lawyer.jsp";
                        </script>

<%
     
                }
 
                
    
}
catch(Exception e)
{
    
}

%>