<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>高校毕业设计选题系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
     <link rel="stylesheet" href="css/layui/css/layui.css" media="all"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>高校毕业设计选题系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">${sessionScope.admin.getName()}</span> , 欢迎你！</p>
        <a href="login.jsp">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2020年1月1日 11:11  星期一</span>
   
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
               <li ><a href="admin_mteacher.jsp">教师管理</a></li>
                <li><a href="admin_mstudent.jsp">学生管理</a></li>
                 <li><a href="admin_deptList.jsp">系部/专业管理</a></li>
                <li><a href="admin_mpassword.jsp">密码修改</a></li>
                <li><a href="login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
<div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>添加学生信息页面</span>
            </div>
<form class="layui-form" action="">
		<div class="layui-form-item">
    <label class="layui-form-label">学生姓名:</label>
    <div class="layui-input-block">
      <input type="text" name="name" id="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" style="width:200px">
    </div>
    </div>
    <div class="layui-form-item">
    <label class="layui-form-label">学号:</label>
    <div class="layui-input-block">
      <input type="text" name="number" id="number" required  lay-verify="required" placeholder="请输入学号" autocomplete="off" class="layui-input" style="width:200px">
    </div>
    </div>
    <div class="layui-form-item">
    <label class="layui-form-label">性别:</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">系别:</label>
    <div class="layui-input-block" style="width:200px">
      <select name="dept" id="dept" lay-verify="required" lay-filter="dept">
     </select>
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">专业:</label>
    <div class="layui-input-block" style="width:200px">
      <select name="major" id="major" lay-verify="required">
       
 </select>
    </div>
  </div>
  
  <div class="layui-form-item">
      <label class="layui-form-label">入学时间:</label>
      <div class="layui-input-inline">
        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
      </div>
    </div>
<div class="layui-form-item">
    <label class="layui-form-label">手机号码:</label>
    <div class="layui-input-block">
      <input type="text" name="numberphone" id="numberphone" required  lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input" style="width:200px">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">QQ号:</label>
    <div class="layui-input-block">
      <input type="text" name="qq" id="qq" required  lay-verify="required" placeholder="请输入qq号" autocomplete="off" class="layui-input" style="width:200px">
    </div>
  </div>
   </form>
    <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="addStudent()">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary" onclick="resetData()">重置</button>
    </div>
  </div>
		</div>
<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>
<script  type="text/javascript" src="js/layui/layui.js"></script>
		<script>
layui.use(['form','laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
 ,laydate = layui.laydate;
//日期
  laydate.render({
    elem: '#date'
	,trigger: 'click' 
  });
form.on('select(dept)', function (data) {
    //TODO执行自己的代码
   // console.log(data.value);
     
		var dept_name=data.value;
	
		showDeptMajors(dept_name);

		
});
});
function showDeptMajors(dept_name) {
	 var data;
	 var value="";
	 $("#major").empty();

	$.post("showDeptMajors",{dept_name:dept_name},function(list){
		data=list;
		$("#major").append("<option value="+value+">请选择</option>");
		for (var i = 0; i < data.length; i++) {
			value = data[i].major_name;
			
			var lable = value;
			$("#major").append("<option value="+value+">" + lable + "</option>");
		}
		 layui.form.render("select");
		});
	
}
$(function(){
	baseDept();
	
	addStudent=function () {
		var name=$("#name").val();
		var sex = $("input[name='sex']:checked").val();
		var number=$("#number").val();
		 var major = $("#major option:selected").val();
		 var dept=$("#dept option:selected").val();
		 var enyear=$("#date").val();
		 var phonenumber=$("#numberphone").val();
		 var qq=$("#qq").val();
		 var href=0;
		 if(name==""||sex==""||number==""||major==""||dept==""||enyear==""||phonenumber==""||qq=="")
		{
			 alert("请填入完整信息！");
		 }
		 else{
			 
			  $.ajax({
		         type:"post",
		         url:"addStudent",//对应controller的URL
		         async:false,
		         dataType: "json",
		         data:{"number":number,"name":name,"sex":sex,"major":major,"dept":dept,"enyear":enyear,"phonenumber":phonenumber,"qq":qq,},
		         success:function(result){
		        	if(result==true){
		        		 alert("添加成功！");
		         		 href=1;
		         	}
		         	else {
						alert("添加失败！请重新添加！");
						href=0;
						}}
		         
		     });
			 }
		 if(href==1){
			 window.location.href="admin_mstudent.jsp";
			  }
		
	}
	
	});
resetData=function(){
	$("form")[0].reset();
	
}
function baseDept() {
	$("#dept").empty();
	$.post("showBaseDept",function(data){
		showDept(data);
	});
}
function showDept(data) {
	var value="";
	$("#dept").append("<option value="+value+">请选择</option>");
	for (var i = 0; i < data.length; i++) {
	value = data[i].dept_name;
		var lable = value;
		$("#dept").append("<option value="+value+">" + lable + "</option>");
	}
	
}

</script>
</body>
</html>