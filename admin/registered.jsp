<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.datatransfer.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="../error.jsp" %>
<jsp:include page="header.jsp" />
</div>
</div>

<div class="container">
<table class="table table-hover">
<thead>
<tr>
<th>ID
<th>First Name
<th>Last Name
<th>E-mail
<th>Developer OF
<th>Github Username
<th>Reason of Joining
<th>Delete   
</tr>
<tbody>
<%
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String sql="select * from register";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
%>
<tr>
<td> <% out.println(rs.getInt(1));%></td>
<td> <% out.println(rs.getString(2));%></td>
<td> <% out.println(rs.getString(3));%></td>
<td> <% out.println(rs.getString(6));%></td>
<td> <% out.println(rs.getString(8));%></td>
<td> <% out.println(rs.getString(9));%></td>
<td> <% out.println(rs.getString(10));%></td>   
<td><a href="delete.jsp?id=<% out.println(rs.getInt(1));%>"
<span class="glyphicon glyphicon-remove"></a></td>        
</td>
<%
} %>
</table>
</div>
<jsp:include page="footer.jsp" />

