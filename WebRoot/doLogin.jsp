<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	request.setCharacterEncoding("utf-8");
	String userName=request.getParameter("userName").toString();
	String password=request.getParameter("password").toString();
	session.setAttribute("loginUser", userName);
	if(userName.equals("admin")&&password.endsWith("admin")){
		request.getRequestDispatcher("success.jsp").forward(request, response);
	}else{
		response.sendRedirect("failure.jsp");
	}
%>