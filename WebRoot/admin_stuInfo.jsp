<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>显示所有学生信息</title>
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
  	<table id="t1" align="center" frame="border" width="90%" height="100px" border="1">
  		<tr valign="middle" align="center" id="t11">
  			<td><s:text name="学号"></s:text></td>
  			<td><s:text name="姓名"></s:text></td>
  			<td><s:text name="性别"></s:text></td>
  			<td><s:text name="手机号码"></s:text></td>
  			<td><s:text name="学院"></s:text></td>
  			<td><s:text name="专业"></s:text></td>
  			<td></td>
  		</tr>
  		<s:iterator value="allStu" status="st" var="as">
  		<tr align="center" valign="middle">
  			<td><s:property value="#as.stuNo"/></td>
  			<td><s:property value="#as.stuName"/></td>
  			<td><s:property value="#as.stuSex"/></td>
  			<td><s:property value="#as.stuPhone"/></td>
  			<td><s:property value="#as.profession.college.colName"/></td>
			<td><s:property value="#as.profession.proName"/></td>
			<td>
				<!--  
				<a href="javascript:modifyTicket('<s:property value="#ut.id"/>')">修改</a>
				-->
				<a href="javascript:deleteThisStu('<s:property value="#as.id"/>')">删除</a>
			</td>
  		</tr>
  		</s:iterator>
  	</table>
  	<!--  
  	[<a href="admin_allStuAction?pageNo=1">首页</a>]
			<c:choose>
				<c:when test="${currentPage>1}">
					[<a href="admin_allStuAction?pageNo=${currentPage-1}">上一页</a>]
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${currentPage<totalPage}">
					[<a href="admin_allStuAction?pageNo=${currentPage+1}">下一页</a>]
				</c:when>
			</c:choose>
	[<a href="admin_allStuAction?pageNo=${totalPage}">尾页</a>]
	-->
	</div>
  </body>
</html>
