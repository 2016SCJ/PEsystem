<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面美化设计
	
	@author 陈志斌
	指定班级学生的信息展示
 -->

  <head>
    
    <title>My JSP 'teacher_classDetail.jsp' starting page</title>
    <script type="text/javascript" src="js/js.js" charset="UTF-8"></script>  <!-- 注意引用javasrript的路径 -->
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px;}
		#t11{font-weight: bolder;}
	</style>
  </head>
  
  <body>
    <%@ include file="teacher_title.jsp" %>
    <div id="d1">
    <table id="t1" align="center" frame="border" width="90%" height="100px" border="1">
		<tr valign="middle" align="center" id="t11">
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>平时成绩</th>
			<th>理论成绩</th>
			<th>期末考核成绩</th>
			<th>总成绩</th>
			<th></th>
		</tr>
		<s:iterator value="myClassStudent" status="st" var="mcs">
		<tr valign="middle" align="center" >
			<td><s:property value="#mcs.student.stuNo"/></td>
			<td><s:property value="#mcs.student.stuName"/></td>
			<td><s:property value="#mcs.student.stuSex"/></td>
			<td><s:property value="#mcs.score1"/></td>
			<td><s:property value="#mcs.score2"/></td>
			<td><s:property value="#mcs.score3"/></td>
			<td><s:property value="#mcs.total"/></td>
			<td>
				<a href="javascript:refreshScore('<s:property value="#mcs.student.stuNo"/>', '<s:property value="#mcs.startClass.id"/>')">给该学生添加成绩</a>
			</td>
		</tr>
		</s:iterator>
	</table>
	</div>
  </body>
</html>
