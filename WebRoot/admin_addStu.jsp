<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面美化设计
	
	@author 魏子敬
	添加学生的表单设计
 -->

  <head>
    
    <title>My JSP 'admin_addStu.jsp' starting page</title>
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
    
    <!-- 如何将allPro转为下拉框  ？？？ -->
    
    <div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
    <s:form method="post" action="admin_addStuAction" theme="simple">
    <div id="d1">
    	<table id="t1" align="center" frame="border" width="90%" height="150px" border="1">
	    	<tr valign="middle" align="left">
		    	<td align="right"><s:text name="姓名："></s:text></td>
		    	<td>&ensp;<s:textfield name="addName" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		    <tr valign="middle" align="left">	
		    	<td align="right"><s:text name="性别："></s:text></td>
		    	<td>&ensp;<s:select name="addSex" list="%{#{'男':'男', '女':'女'}}" cssStyle="height:30px; font-size:20px; width:150px;"></s:select></td>
		    </tr>
		    <tr valign="middle" align="left">	
		    	<td align="right"><s:text name="年级："></s:text></td>
		    	<td>&ensp;<s:select name="addYear" list="%{#{'2016':'2016级', '2017':'2017级', '2018':'2018级', '2019':'2019级', '2020':'2020级', '2021':'2021级', '2022':'2022级', '2023':'2023级', '2024':'2024级', '2025':'2025级', '2026':'2026级', '2027':'2027级', '2028':'2028级'}}"  cssStyle="height:30px; font-size:20px; width:150px;"></s:select></td>
		    </tr>
		    <tr valign="middle" align="left">	
		    	<td align="right"><s:text name="专业："></s:text></td>
		    	<td>&ensp;<s:select name="addProfession" list="allProfession" cssStyle="height:30px; font-size:20px;"></s:select></td>
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
