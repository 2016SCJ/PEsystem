<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_addStartClass.jsp' starting page</title>
	<script type="text/javascript" src="js/js.js" charset="UTF-8"></script>
	
  </head>
  
  <body>
    <%@ include file="admin_title.jsp" %>

    <s:fielderror></s:fielderror>
    <s:form name="f1" id="f1" method="post" action="admin_addStartClassAction" theme="simple">
    	<s:text name="课程id："></s:text><s:textfield name="addCourseId"></s:textfield><br/>
    	<s:text name="教师工号："></s:text><s:textfield name="addTeacherNo"></s:textfield><br/>
    	<s:text name="上课地点："></s:text><s:textfield name="addLocation"></s:textfield><br/>
    	
    	<s:text name="上课时间："></s:text>
    	<s:text name="&nbsp;&nbsp;&nbsp;第"/><s:select name="addTime1" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21'}"></s:select><s:text name="周 到 第"/><s:select name="addTime2" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21'}"></s:select><s:text name="周"/>
    	<s:text name="&nbsp;&nbsp;&nbsp;星期"/><s:select name="addTime3" list="{'星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'}"></s:select>
    	<s:text name="&nbsp;&nbsp;&nbsp;第"/><s:select name="addTime4" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14'}"></s:select><s:text name="到"/><s:select name="addTime5" list="{'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14'}"></s:select><s:text name="节"/>
    	<br/>
    	
    	<s:text name="开课班人数容量"/><s:textfield name="addNum"></s:textfield><br/>

    	<s:submit value="确认提交"></s:submit>
    </s:form>
  </body>
</html>
