<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'student_title.jsp' starting page</title>
    
	<style type="text/css">
	#d1{float: left; width: 100%;}
	.s1{color:white;}
	.s1:hover{color:red;}
	a{text-decoration:none;}
    .logo{float:left; padding-top:15px; margin-left:100px;}
    .menu{margin-left: 500px;}
	.menu ul{list-style-type: none;}
	.menu li{float:left; width:200px; background:green; margin-left:30px; line-height:50px; font-size:25px;border-radius: 8px;}
	.menu a{display:block ;text-align:center; height:50px;}
	</style>
	
  </head>
  
  <body>
    <div id="d1">
  		<div class="header">
	  		<div class="logo">
	  			<img src="logo.jpg" style="width:360px; height:80px;">
	  		</div><br>
	  		<div class="menu">
			  	<ul>
			   		<li><a href="student_infoAction.action"><span class="s1">个人信息</span></a></li>
			    	<li><a href="student_showAllClassAction.action"><span class="s1">选课中心</span></a></li>
			    	<li><a href="student_scoreInfoAction.action"><span class="s1">我的课程信息</span></a></li>
			    	<li><a href="logoutAction.action"><span class="s1">退出登录</span></a></li>
			    </ul>
	    	</div>
    	</div>
  	</div>
  </body>
</html>
