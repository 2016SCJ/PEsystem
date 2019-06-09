<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_addStartClass.jsp' starting page</title>
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
    <s:form method="post" action="admin_addStartClassAction" theme="simple">
    <div id="d1">
    	<table id="t1" align="center" frame="border" width="90%" height="150px" border="1">
	    	<tr valign="middle" align="left">
		    	<td align="right"><s:text name="课程id："></s:text></td>
		    	<td>&ensp;<s:textfield name="addCourseId" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		    </tr>
		    <tr valign="middle" align="left">
		    	<td align="right"><s:text name="教师工号："></s:text></td>
		    	<td>&ensp;<s:textfield name="addTeacherNo" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		    </tr>
		    <tr valign="middle" align="left">
		    	<td align="right"><s:text name="上课地点："></s:text></td>
		    	<td>&ensp;<s:textfield name="addLocation" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		    </tr>
			<tr valign="middle" align="left">
				<td align="right">
					<s:text name="上课时间："></s:text>
				</td>
				<td>&ensp;
					<s:text name="第"/><s:select cssStyle="height:30px; font-size:20px;" name="addTime1" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21'}"></s:select><s:text name="周 到 第"/><s:select name="addTime2" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21'}"></s:select><s:text name="周"/>
					<s:text name="&nbsp;&nbsp;&nbsp;星期"/><s:select cssStyle="height:30px; font-size:20px;" name="addTime3" list="{'星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'}"></s:select>
					<s:text name="&nbsp;&nbsp;&nbsp;第"/><s:select cssStyle="height:30px; font-size:20px;" name="addTime4" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14'}"></s:select><s:text name="到"/><s:select name="addTime5" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14'}"></s:select><s:text name="节"/>
				</td>
			</tr>
			<tr valign="middle" align="left">
				<td align="right">
					<s:text name="开课班人数容量"/>
				</td>
				<td>&ensp;
					<s:textfield name="addNum" cssStyle="height:30px; font-size:20px;"></s:textfield><br/>
				</td>
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
