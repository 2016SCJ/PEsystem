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
    
    <title>My JSP 'student_changePwd.jsp' starting page</title>
	<style type="text/css">
	#d1{margin-top: 30px;}
	#t1{border-collapse: collapse; background-color: #FFFACD; font-size: 20px; font-weight: bolder;}
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
    <%@ include file="student_title.jsp" %>
    <div id="d1" align="center">
    <div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
    <s:form method="post" action="student_changePwdAction" theme="simple">
    <table id="t1" align="center" frame="border" width="90%" height="150px" border="1">
    <tr valign="middle" align="left">
    	<td align="right"><s:text name="旧&ensp;&ensp;密&ensp;&ensp;码："></s:text></td>
    	<td>&ensp;<s:password name="oldPwd" cssStyle="height:30px; font-size:20px;"></s:password></td>
    </tr>
    <tr>
    	<td align="right"><s:text name="新&ensp;&ensp;密&ensp;&ensp;码："></s:text></td>
    	<td>&ensp;<s:password name="newPwd1" cssStyle="height:30px; font-size:20px;"></s:password></td>
    </tr>
    <tr>
    	<td align="right"><s:text name="确认密码："></s:text></td>
    	<td>&ensp;<s:password name="newPwd2" cssStyle="height:30px; font-size:20px;"></s:password></td>
    </tr>
    </table>
    <div align="right" id="d2">
		<s:submit value="确认提交" cssClass="button"></s:submit>
		<input type="reset" value="重置" class="button">
    </div>
   	</s:form>
    </div>
  </body>
</html>
