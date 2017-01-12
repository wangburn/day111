<%@ page language="java" import="java.util.*,day111.User" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    loginPager： <br>
    <form name="login" action="doLogin.jsp?mypass=123456" method="post">
    	用户名：<input name="userName" type="text"/>&nbsp;
    	密码：<input name="password" type="password"/>&nbsp;
    	<input name="login" value="登录" type="submit" >
    </form>
    <br/>
    <%
    	User user=new User();
    	user.setPassword("123456");
    	user.setUserName("admin");
     %>
	<p>用户名：<%=user.getUserName() %><br></p>
	<p>密码：<%=user.getPassword() %></p>
  </body>
</html>
