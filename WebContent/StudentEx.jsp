<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="ch19.Student" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:setProperty name="student" property="name" value="ȫ�浿"/>
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="6"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>
	<jsp:setProperty name="student" property="area" value="10"/>


	�̸� : <jsp:getProperty name="student" property="name"/><br/>
	���� : <jsp:getProperty name="student" property="age"/><br/>
	�г� : <jsp:getProperty name="student" property="grade"/><br/>
	��ȣ : <jsp:getProperty name="student" property="studentNum"/><br/>
	���̴� : <jsp:getProperty name="student" property="area"/><br/>
	
</body>
</html>