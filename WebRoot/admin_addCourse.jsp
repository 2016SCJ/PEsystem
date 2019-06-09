<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_addCourse.jsp' starting page</title>
	<style type="text/css">
		#d1{margin-top: 30px;}
		#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px;}
		.button {
		    background-color: Green;
		    border: none;
		    color: white;
		    padding: 10px 35px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 16px;
		    border-radius: 8px;     <!--使用 border-radius 属性来设置圆角按钮-->
		}
		.button:hover{color:red;}
		#d2{margin-right: 100px;}
	</style>
  </head>
  
  <body>
    <%@ include file="admin_title.jsp" %>

    <div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
    <s:form method="post" action="admin_addCourseAction" theme="simple">
    <div id="d1">
    	<table id="t1" align="center" frame="border" width="90%" height="125px" border="1">
    	<tr valign="middle" align="left">
	    	<td align="right"><s:text name="课程名："></s:text></td>
	    	<td>&ensp;<s:textfield name="addName" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
	    </tr>
	    <tr valign="middle" align="left">	
	    	<td align="right"><s:text name="学时："></s:text></td>
	    	<td>&ensp;<s:select name="addHour" list="%{#{'32':'32学时', '64':'64学时'}}" cssStyle="height:30px; font-size:20px; width:150px;"></s:select></td>
	    </tr>
	    <tr valign="middle" align="left">	
	    	<td align="right"><s:text name="学分："></s:text></td>
	    	<td>&ensp;<s:select name="addCredit" list="%{#{'1':'1学分', '2':'2学分', '3':'3学分', '4':'4学分'}}" cssStyle="height:30px; font-size:20px; width:150px;"></s:select></td>
    	</tr>
    	</table>
    	</div>
    	<div align="right" id="d2">
		    <s:submit value="确认提交" cssClass="button"></s:submit>
		    <input type="reset" value="重置" class="button">
	    </div>
    </s:form>
  </body>
</html>
