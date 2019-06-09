<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_allTeacherInfo.jsp' starting page</title>
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
			<th>工&emsp;号</th>
			<th>姓&emsp;名</th>
			<th>性&emsp;别</th>
			<th>手&nbsp;机&nbsp;号&nbsp;码</th>
			<th></th>
		</tr>
		<s:iterator value="allTeacherInfo" status="st" var="ut">
		<tr align="center" valign="middle">
			<td><s:property value="#ut.teaNo"/></td>
			<td><s:property value="#ut.teaName"/></td>
			<td><s:property value="#ut.teaSex"/></td>
			<td><s:property value="#ut.teaPhone"/></td>
			<td>
				<!--  
				<a href="javascript:modifyTicket('<s:property value="#ut.id"/>')">修改</a>
				-->
				<a href="javascript:deleteThisTeacher('<s:property value="#ut.id"/>')">删除</a>
			</td>
		</tr>
		</s:iterator>
	</table>
	<!--  
	[<a href="admin_allTeaAction?pageNo=1">首页</a>]
			<c:choose>
				<c:when test="${currentPage>1}">
					[<a href="admin_allTeaAction?pageNo=${currentPage-1}">上一页</a>]
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${currentPage<totalPage}">
					[<a href="admin_allTeaAction?pageNo=${currentPage+1}">下一页</a>]
				</c:when>
			</c:choose>
	[<a href="admin_allTeaAction?pageNo=${totalPage}">尾页</a>]
	-->
	</div>
  </body>
</html>
