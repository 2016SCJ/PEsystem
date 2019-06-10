<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面美化设计
	
	@author 朱润发
	编写个人成绩的展示
 -->

  <head>
    
    <title>My JSP 'student_scoreInfo.jsp' starting page</title>
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px;}
		#t11{font-weight: bolder;}
	</style>
  </head>
  
  <body>
    <%@ include file="student_title.jsp" %>
	<h2 align="center">注：如果表格为空，则表示教师还没有录入成绩</h2>
  	<div id="d1">
  	<table id="t1" align="center" frame="border" width="90%" height="80px" border="1">
  		<tr valign="middle" align="center" id="t11">
  			<td><s:text name="课程名"></s:text></td>
  			<td><s:text name="课程id编号"></s:text></td>
  			<td><s:text name="授课老师"></s:text></td>
  			<td><s:text name="平时成绩"></s:text></td>
  			<td><s:text name="理论成绩"></s:text></td>
  			<td><s:text name="期末考核"></s:text></td>
  			<td><s:text name="总成绩"></s:text></td>
  		</tr>
  		<s:iterator value="myScore" status="st" var="ms">
  		<tr align="center" valign="middle">
  			<td><s:property value="#ms.startClass.course.couName"/></td>
  			<td><s:property value="#ms.startClass.course.id"/></td>
  			<td><s:property value="#ms.startClass.teacher.teaName"/></td>
  			<td><s:property value="#ms.score1"/></td>
			<td><s:property value="#ms.score2"/></td>
			<td><s:property value="#ms.score3"/></td>
			<td><s:property value="#ms.total"/></td>
  		</tr>
  		</s:iterator>
  	</table>
  	</div>
  </body>
</html>
