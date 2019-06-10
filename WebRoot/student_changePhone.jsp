<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- 
	@author 陈志斌
	对界面美化设计
	
	@author 朱润发
	编写表单内容
 -->

  <head>
    
    <title>My JSP 'student_changePhone.jsp' starting page</title>
	<style type="text/css">
	#d1{margin-top: 30px; font-size: 30px;}
	.button {
		background-color: Green;
		border: none;
		color: white;
		padding: 10px 50px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		border-radius: 8px;     <!--使用 border-radius 属性来设置圆角按钮-->
	}
	.button:hover{color:red;}
	</style>
  </head>
  
  <body>
    <%@ include file="student_title.jsp" %>
    
    <div id="d1" align="center">
    <div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
    <s:form method="post" action="student_changePhone">
    
    	<s:text name="请输入新的手机号码"></s:text><br><br>
    	<s:textfield name="newPhoneNumber" cssStyle="width:300px; height:35px; font-size:25px;"></s:textfield><br><br>
    	<s:submit value="确认更新"  cssClass="button"></s:submit>
    </s:form>
    </div>
  </body>
</html>
