<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_title.jsp' starting page</title>
	<style type="text/css">
	#d1{float: left; width: 100%;}
	.s1{color:white;}
	.s1:hover{color:red;}
	a{text-decoration:none;}
    .logo{float:left; padding-top:15px; margin-left:100px;}
    .menu{margin-left: 430px;}
	.menu ul{list-style-type: none;}
	.menu li{float:left; width:130px; background:green; margin-left:20px; line-height:50px; font-size:25px;border-radius: 8px;}
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
		   <li><a href="admin_allStuAction.action"><span class="s1">学生信息</span></a></li>
		   <li><a href="admin_addStuInit.action"><span class="s1">添加学生</span></a></li>
		   <li><a href="admin_allTeaAction.action"><span class="s1">教师信息</span></a></li>
		   <li><a href="admin_addTeacher.jsp"><span class="s1">添加教师</span></a></li>
		   <li><a href="admin_allCourseInfo.action"><span class="s1">课程信息</span></a></li>
		   <li><a href="admin_addCourse.jsp"><span class="s1">添加课程</span></a></li>
		   <li><a href="admin_allStartClassInfo.action"><span class="s1">开课班信息</span></a></li>
		   <li><a href="admin_addStartClass.jsp"><span class="s1">添加开课班</span></a></li>
		   <li><a href="logoutAction.action"><span class="s1">退出登录</span></a></li>
		</ul>
	    </div>
    </div>
    </div>
  </body>
</html>
