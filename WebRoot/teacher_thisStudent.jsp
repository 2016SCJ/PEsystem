<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'teacher_thisStudent.jsp' starting page</title>
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
    <%@ include file="teacher_title.jsp" %>
	<div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
    <s:form theme="simple" method="post" action="changeScoreAction.action">
    	<s:hidden name="thisStu.id"></s:hidden>
    	<div id="d1">
    	<table id="t1" align="center" frame="border" width="90%" height="150px" border="1">
    		<!--
	    	<tr valign="middle" align="left">
		    	<td align="right"><s:text name="学&emsp;&ensp;&ensp;号："></s:text></td>
		    	<td>&ensp;<s:text name="thisStu.student.stuNo"></s:text></td>
		    </tr>
		    <tr valign="middle" align="left">
			    <td align="right"><s:text name="姓&emsp;&ensp;&ensp;名："></s:text></td>
			    <td>&ensp;<s:text name="thisStu.student.stuName"></s:text></td>
			</tr>
			-->
		<tr valign="middle" align="left">
		    <td align="right"><s:text name="平时成绩："></s:text></td>
		    <td>&ensp;<s:textfield name="score1" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		</tr>
		<tr valign="middle" align="left">
		    <td align="right"><s:text name="理论成绩："></s:text></td>
		    <td>&ensp;<s:textfield name="score2" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		</tr>
		<tr valign="middle" align="left">
		    <td align="right"><s:text name="期末考核："></s:text></td>
		    <td>&ensp;<s:textfield name="score3" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		</tr>
	    </table>
	    </div>
	    <div align="right" id="d2">
		    <input type="submit" value="确认提交"  class="button">
		    <input type="reset" value="重置" class="button">
	    </div>
    </s:form>
  </body>
</html>
