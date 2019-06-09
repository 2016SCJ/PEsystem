<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>My JSP 'student_info.jsp' starting page</title>
	<script type="text/javascript" src="js/js.js" charset="UTF-8"></script>  <!-- 注意引用javasrript的路径 -->
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px; font-weight: bolder;}
	</style>
  </head>
 
  <body>
  	<%@ include file="teacher_title.jsp" %>
  	<s:iterator value="teacherInfo" status="st" var="si">
  	<div id="d1">
  	<table id="t1" align="center" frame="border" width="90%" height="200px" border="1">
  		<tr valign="middle" align="left">
  			<td align="right"><s:text name="工&emsp;&ensp;&ensp;号："></s:text></td>
  			<td>&ensp;<s:property value="#si.teaNo"/></td>
  		</tr>
  		<tr valign="middle" align="left">
  			<td align="right"><s:text name="姓&emsp;&ensp;&ensp;名："></s:text></td>
  			<td>&ensp;<s:property value="#si.teaName"/></td>
  		</tr>
  		<tr valign="middle" align="left">
  			<td align="right"><s:text name="性&emsp;&ensp;&ensp;别："></s:text></td>
  			<td>&ensp;<s:property value="#si.teaSex"/></td>
  		</tr>
  		<tr valign="middle" align="left">
  			<td align="right"><s:text name="手机电话："></s:text></td>
  			<td>&ensp;<s:property value="#si.teaPhone"/>&emsp;&emsp;&emsp;&emsp;<a href="javascript:teaChangePhone('<s:property value="#si.teaNo"/>')">更新电话</a></td>
  		</tr>
  		<tr valign="middle" align="left">
  			<td align="right">密&emsp;&ensp;&ensp;码：</td>
  			<td>&ensp;***********&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<a href="javascript:teaChangePwd()">修改密码</a></td>		
  		</tr>
  	</table>
  	</div>
    </s:iterator>
  </body>
</html>
