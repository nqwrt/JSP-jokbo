<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- var vatName = "varValue" -->
		<c:set var = "vatName" value="varValue"></c:set>
		varName : <c:out value ="$[vatName]"/>
		<br/>
		<c:remove var = "vatName"/>
		vatName : <c:out value = "${vatName}"/></h3>
		<hr/>
		<c:catch var = "error">
			<%=2/0 %>
			${2/0}
		</c:catch>
		<br/>
		<c:out value ="${error}"/>
		<hr/>
		
		<c:if test = "${1+2==3}">
			1+2=3
		</c:if>
		
		<hr/>
<!-- 		feach�� 0���� �����ؼ� 3�� �����Ͽ� 30���� for each���� ���
 -->		<c:forEach var = "fEach" begin="0" end="30" step="3">
			${fEach}
			</c:forEach>
			<hr/>
	<!-- ������ ���̺� -->
		<table border ="1" align="center">
			<c:forEach var = "i" begin="1" end="9" step="1"> <!-- step�� 1�̸� �������� -->
				
				<tr>
				<c:forEach var = "j" begin="1" end="9" step="1">
					<td>${j}*${i}=${i*j}</td>
			</c:forEach>
			</tr>
			</c:forEach>
		</table>
		
		<c:set var="num1" value="5"/>
		<c:set var="num2" value="7"/>
		<c:set var="result" value="${num1 * num2 }"/>
		${num1 }��${num2 }�� ���� ${result}
		
		<c:if test="${num eq 10 }">
		10�̻��Դϴ�!<br/>
		</c:if>		
		<!--  JSTL���� eq, ne, lt, ge, le, ge ����
			==�Ǵ� eq
			!=�Ǵ� ne
			< �Ǵ� lt
			> �Ǵ� gt
			<= �Ǵ� le
			>= �Ǵ� ge
		 -->
		
		<c:set var ="num" value ="0"/>
		<c:choose>
			<c:when test = "${num==0 }">
			�ȳ�!
			</c:when>
			<c:when test ="${num eq 1 }">
			�߰�!
			</c:when>
			<c:otherwise>
			����...?
			</c:otherwise>
			</c:choose>
		
		<%
		ArrayList<String> list = new ArrayList<String>();
			list.add("�л�1");
			list.add("�л�2");
			list.add("�л�3");
			list.add("�л�4");
			list.add("�л�5");
			pageContext.setAttribute("list", list);
		%>
		
		<c:forEach items="${list}" var="item">
			${item}<br>
		</c:forEach>
		
		
		
	</body>
</html>