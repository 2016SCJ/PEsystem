<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="callMe.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>登陆界面</title>
    <style type="text/css">
    body{ margin:0; padding:0;} 
    h1{
	    color:white;
	    font-size:80px;
	    font-weight:bolder;
    }
	#con{ 
		position:absolute; 
		top:0; 
		left:0; 
		height:100%; 
		width:100%; 
		background-image:url("login.jpg"); 
		background-position: bottom 0; 
		background-repeat: no-repeat; 
		background-attachment:fixed; 
		background-size: cover; 
		zoom: 1; 
	} 
	.button {
		background-color: white;
		border: none;
		color: black;
		padding: 10px 35px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		border-radius: 8px;     <!--使用 border-radius 属性来设置圆角按钮-->
	}
	.button:hover{color:red;}
	#table{border-collapse: collapse; font-size: 25px; font-weight: bolder; color:white; border-style: none;}
	#d1{margin-right: 100px; font-size: 25px; color:white;}
	.big{width:20px; height:20px;}
    </style>
  </head>
  <body>
    <div id="con"> 
    <h1 align="center">体育成绩管理系统</h1>
  	<div align="center">
  		<s:fielderror cssStyle="color:red"></s:fielderror>
  	</div>
  	<s:form name="f1" method="post" action="loginAction" theme="simple">
  	<table id="table" align="center" frame="border" width="40%" height="100px" >
  		<tr valign="middle" align="left">
			<td align="right"><s:text name="用户名：" ></s:text></td>
			<td>&ensp;<s:textfield name="loginName" size="21" cssStyle="height:30px; font-size:20px;"></s:textfield></td>
		</tr>	
		<tr valign="middle" align="left">	
	  		<td align="right"><s:text name=" 密&ensp;&ensp;码：" ></s:text></td>
	  		<td>&ensp;<s:password name="loginPassword" size="21" cssStyle="height:30px; font-size:20px;"></s:password></td>
  		</tr>
		</table>
	<div align="center" id="d1">
  		<input type="radio" name="type" checked="checked" value="1" class="big">学生&emsp;&ensp;
  		<input type="radio" name="type" value="2" class="big">教师&emsp;&ensp;
  		<input type="radio" name="type" value="3" class="big">管理员<br><br>
	  	<input type="submit" value="提交" class="button"/>&emsp;&emsp;&emsp;&emsp;
	  	<input type="reset" value="重置" class="button"/>
  	</div>
  	</s:form>
  	</div>
  </body>
</html>
