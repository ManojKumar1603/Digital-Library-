<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sid=request.getParameter("sid");


int k=s.stmt.executeUpdate("Update login set status='active' where username='"+sid+"' and type='student'");
%>
<script>
alert("Student Get Approved By Admin....");
document.location="student_log_approval.jsp";
</script>