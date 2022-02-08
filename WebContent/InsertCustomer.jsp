<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
String action = request.getParameter("action");
%>
<%= request.getParameter("custname") %>


<%
String sql = "insert into member_tbl_02 "+
	"values( member_seq.nextval,?,?,?,TO_DATE(?,'YYYY-MM-DD'),?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("custname"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("address"));
	pstmt.setString(4, request.getParameter("joindate"));
	pstmt.setString(5, request.getParameter("custgrade"));
	pstmt.setString(6, request.getParameter("city"));
	
	pstmt.executeQuery();
%>
<script>
/* location.replace("./SelectCustomer.jsp"); */
</script>

</body>
</html>






