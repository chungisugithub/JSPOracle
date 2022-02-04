<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객명단</title>
<style>
#customers {
margin: 0 auto;
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
<ul>
	<li><a href="./NewCustomerForm.jsp">신규교객등록</a></li>
	<li>고객리스트</li>
</ul>
<h2>고객리스트</h2>

<%
String url ="jdbc:oracle:thin:@localhost:1521:xe";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url,"shop","1234");
ResultSet rs = conn.prepareStatement("select CUSTNO,CUSTNAME,PHONE from member_tbl_02").executeQuery();
%>
<table id="customers">
<tr>
<th>1</th><th>2</th><th>3</th><th>4</th><th>4</th>
</tr>
<% while( rs.next()) {
	%> 
	<tr><td><a href="./UpdateCustomerForm.jsp?custno=<%=rs.getInt("custno")%>"><%=rs.getInt("custno")%></a></td><td>
	<%=rs.getString("custname")%></td><td>
	<%=rs.getString("phone")%></td>
	<td><a href="./DeleteCustomerById.jsp?custno=<%=rs.getInt("custno")%>&custname=<%=rs.getString("custname")%>">삭제</a></td>
	<td>
	<button onclick="document.location='./DeleteCustomerById.jsp?custno=<%=rs.getInt("custno")%>&custname=<%=rs.getString("custname")%>'">삭제2</button>
	</td>
	</tr>
	<%}%>
	
</table>
</body>
</html>