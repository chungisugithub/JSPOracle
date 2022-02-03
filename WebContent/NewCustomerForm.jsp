<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>신규고객등록</h2>
<form action="InsertCustomer.jsp" method="post">
<table>
<tr><td>고객명</td><td><input type="text" name="custname"></td></tr>
<tr><td>전화번호</td><td><input type="text" name="phone"></td></tr>
<tr><td>주소</td><td><input type="text" name="address"></td></tr>
<tr><td>가입일</td><td><input type="text" name="joindate"></td></tr>
<tr><td>등급</td><td><input type="text" name="grade"></td></tr>
<tr><td>도시</td><td><input type="text" name="city"></td></tr>
<tr><td colspan="2" style="text-align:right"><input type="submit" value="회원가입"></td></tr>
</table>
</form>
</body>
</html>