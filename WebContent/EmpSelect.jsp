<%@page import="edu.emp.EmpDTO"%>
<%@page import="edu.emp.EmpDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
	
		<%
		EmpDAO empDAO = new EmpDAO();
		ArrayList<EmpDTO> dtos = empDAO.empSelect();
		
		for(int i=0; i<dtos.size();i++){
			EmpDTO dto = dtos.get(i);
			String empno = dto.getEmpno();
			String ename = dto.getEname();
			String job = dto.getJob();
			String mgr = dto.getMgr();
			String hiredate = dto.getHiredate();
			String sal = dto.getSal();
			String comm = dto.getComm();
			String deptno = dto.getDeptno();
			
			
			out.println("�����ȣ : " + empno + ", ����̸� : " + ename + ", ���� : " + job + ", ����� : " + mgr + ",  �Ի糯¥ : " + hiredate + ",  �޿� : " + sal + ",  ������ : " + comm + ", �μ���ȣ : " + deptno + "<br />" );
		}
		%>
	
		
	
	
	</body>
</html>