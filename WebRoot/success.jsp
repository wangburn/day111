<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sucess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    login success <br>
    <%
    	String userName="";
    	if(session.getAttribute("loginUser")!=null){
    		userName=session.getAttribute("loginUser").toString();
    	}
     %>
	欢迎您<%=userName%>.
	<jsp:useBean id="user" class="day111.UserBean" scope="page"/>
	
	<jsp:setProperty property="*" name="user"/>
	<%--
	<jsp:setProperty property="userName" name="user"/>
	
	<jsp:setProperty property="password" name="user" value="admin"/>
	
	<jsp:setProperty property="userName" name="user" param="mypass"/>
	
	<p>用户名：<%= user.getUserName() %></p>
	<p>密码：<%= user.getPassword() %></p>
	--%>
	<p>用户名：<jsp:getProperty name="user" property="userName"/></p>
	<p>密码：<jsp:getProperty property="password" name="user"/></p>
  </body>
</html>
