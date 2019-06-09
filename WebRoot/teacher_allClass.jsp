<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'teacher_allClass.jsp' starting page</title>
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
  			<td><s:text name="开课班编号"></s:text></td>
  			<td><s:text name="课程名称"></s:text></td>
  			<td><s:text name="授课教师"></s:text></td>
  			<td><s:text name="时&emsp;间"></s:text></td>
  			<td></td>
  		</tr>
  		<s:iterator value="allClass" status="st" var="ac">
  		<tr align="center" valign="middle">
  			<td><s:property value="#ac.id"/></td>
  			<td><s:property value="#ac.course.couName"/></td>
  			<td><s:property value="#ac.teacher.teaName"/></td>
  			<td><s:property value="#ac.claTime"/></td>
  			<td>
				<a href="javascript:classDetail('<s:property value="#ac.id"/>')">进入班级学生成绩信息</a>
			</td>
  		</tr>
  		</s:iterator>
  	</table>
  	</div>
  </body>
</html>
