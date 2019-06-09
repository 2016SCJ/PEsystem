//student

//student 更新电话 
function stuChangePhone(stuNo){
	location.href="student_changePhone.jsp?stuNo="+stuNo;
}

//student 修改密码  
function stuChangePwd(){
	location.href="student_changePwd.jsp";
}

//选课
function chooseClass(cId, claRemain){
	if(claRemain<=0)
		alert("该课程已无容量，请选择其他课程");
	else if(confirm("你确定选中该门课吗? 如果你已经选中了该门课程，系统会显示操作失败")){
		location.href="chooseClassAction?startClassId="+cId;
	}
}

///////////////////////////////////


//Teacher

//teacher 更新电话 
function teaChangePhone(teaNo){
	location.href="teacher_changePhone.jsp?teaNo="+teaNo;
}



//teacher 修改密码  
function teaChangePwd(){
	location.href="teacher_changePwd.jsp";
}

//班级里的学生信息
function classDetail(classId){
	location.href="classDetailAction?classId="+classId;
}

//修改某个学生的成绩
function refreshScore(stuNo, classId){
	location.href="refreshStuScoreAction?stuNo="+stuNo+"&startClassId="+classId;
}
///////////////////////////////////


//admin
//删除某个学生信息
function deleteThisStu(stuId){
	if(confirm("你确定删除该学生吗?删除该学生之后，该学生的所有个人信息将会被删除！")){
		location.href="admin_deleteThisStuAction?stuId="+stuId;
	}
}

//admin 删除某一个老师
function deleteThisTeacher(teaId){
	if(confirm("你确定删除该教师吗?删除该教师后，该教师的授课班、个人的所有信息也将被删除！")){
		location.href="admin_deleteThisTeaAction?teaId="+teaId;
	}
}

//删除某一门课程
function deleteThisCourse(couId){
	if(confirm("你确定删除该课程吗?如果存在该课程的开课班，操作将会失败！")){
		location.href="admin_deleteThisCouAction?couId="+couId;
	}
}

//删除某一开课班
function deleteThisStartClass(startClassId){
	if(confirm("你确定删除该开课班吗?删除之后该班级的信息将会删除，该门课班的学生选课也会删除！")){
		location.href="admin_deleteThisStartClassAction?startClassId="+startClassId;
	}
}

///////////////////////////////////
