<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>

<%
Context ctx = new InitialContext();
DataSource ds = (DataSource) ctx
.lookup("java:comp/env/jdbc/mytest");
Connection conn = ds.getConnection();
Statement state = conn.createStatement();
String sql = "select * from aminglinux";
ResultSet rs = state.executeQuery(sql);

while (rs.next()) {
out.println(rs.getString("id") +"<tr>");
out.println(rs.getString("name") +"<tr><br>");
}

rs.close();
state.close();
conn.close();
%>
