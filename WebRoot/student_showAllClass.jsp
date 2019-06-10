<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面美化设计
	
	@author 朱润发
	编写选课班级展示内容
 -->

  <head>
    
    <title>My JSP 'student_showAllClass.jsp' starting page</title>
    <script type="text/javascript" src="js/js.js" charset="UTF-8"></script>  <!-- 注意引用javasrript的路径 -->
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px;}
		#t11{font-weight: bolder;}
	</style>
  </head>
  
  <body>
  <%@ include file="student_title.jsp" %>
  <div id="d1">
  	<table id="t1" align="center" frame="border" width="90%" height="200px" border="1">
  		<tr valign="middle" align="center" id="t11">
			<th>开课班编号</th>
			<th>课&ensp;程&ensp;名</th>
			<th>授课教师</th>
			<th>上课地点</th>
			<th>上课时间</th>
			<th>班级容量</th>
			<th>剩余容量</th>
			<th>是否选课</th>
		</tr>
		<s:iterator value="allClass" status="st" var="ac">
		<tr align="center" valign="middle">
			<td><s:property value="#ac[0]"/></td>
			<td><s:property value="#ac[1]"/></td>
			<td><s:property value="#ac[2]"/></td>
			<td><s:property value="#ac[3]"/></td>
			<td><s:property value="#ac[4]"/></td>
			<td><s:property value="#ac[5]"/></td>
			<td><s:property value="#ac[6]"/></td>
			<td>
				<a href="javascript:chooseClass('<s:property value="#ac[0]"/>', '<s:property value="#ac[6]"/>')">选课</a>
			</td>
		</tr>
		</s:iterator>
	</table>
	<!--  
	[<a href="student_showAllClassAction?pageNo=1">首页</a>]
			<c:choose>
				<c:when test="${currentPage>1}">
					[<a href="student_showAllClassAction?pageNo=${currentPage-1}">上一页</a>]
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${currentPage<totalPage}">
					[<a href="student_showAllClassAction?pageNo=${currentPage+1}">下一页</a>]
				</c:when>
			</c:choose>
	[<a href="student_showAllClassAction?pageNo=${totalPage}">尾页</a>]
	-->
	</div>
  </body>
</html>
