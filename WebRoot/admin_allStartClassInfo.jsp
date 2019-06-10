<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面进行美化设计
	
	@author 黄泽彬
	显示所有开课班信息
 -->

  <head>
    
    <title>My JSP 'admin_allStartClassInfo.jsp' starting page</title>
	<script type="text/javascript" src="js/js.js" charset="UTF-8"></script>
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px;}
		#t11{font-weight: bolder;}
	</style>
  </head>
  
  <body>
    <%@ include file="admin_title.jsp" %>
    <div id="d1">
  	<table id="t1" align="center" frame="border" width="90%" height="200px" border="1">
  		<tr valign="middle" align="center" id="t11">
			<th>开课班编号</th>
			<th>课程名称</th>
			<th>授课教师</th>
			<th>上课地点</th>
			<th>上课时间</th>
			<th></th>
		</tr>
		<s:iterator value="allStartClassInfo" status="st" var="ut">
		<tr align="center" valign="middle">
			<td><s:property value="#ut.id"/></td>
			<td><s:property value="#ut.course.couName"/></td>
			<td><s:property value="#ut.teacher.teaName"/></td>
			<td><s:property value="#ut.claLocation"/></td>
			<td><s:property value="#ut.claTime"/></td>
			<td>
				<a href="javascript:deleteThisStartClass('<s:property value="#ut.id"/>')">删除</a>
			</td>
		</tr>
		</s:iterator>
	</table>
	</div>
  </body>
</html>
