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
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script  type="text/javascript" src="js/layui/layui.js"></script>
    <script type="text/javascript">
   $(function(){
	  
    	 $(":button").click(function(){
    		   var oldPswd=$("#oldPassword").val();
    	   	   var newPswd=$("#newPassword").val();
    	   	  var surePswd=$("#reNewPassword").val();
    	   	   if(oldPswd==""||newPswd==""||surePswd==""){
    	   		   alert("信息没有填好，请填好信息");
    	   	   }
    	   	   else{
    	   		 if(newPswd==surePswd) {
    	   			var sure =window.confirm("确认修改吗？");
    	   		    if(sure){
    	   		    	
    	   		    	$.post("admin_mpassword",{oldpassword:oldPswd,newPassword:newPswd},function(result){
    	   		    		var flag=result['flag'];
    	   		    		if(flag=="1"){
    	   		    			alert("修改成功!请重新登入！");
    	   		    			window.location.href="login.jsp";
    	   		    		}else {
    	   		    			alert("原密码有误!重新修改！");
    	   		    			window.location.href="admin_mpassword.jsp";
    	   					}
    	   		    		
    	   		    	});
    	   		    }
    	   		    else{
    	   		    	 window.location.href="adminIndex.jsp"; 
    	   		    }
    	   		 } else {
					alert("密码不一样请重新输入");
					window.location.href="admin_mpassword.jsp"; 
				}
    	   	   }
    		
    		 
    });
    	 layui.use('form', function(){
    		   var form = layui.form;});
    	})
    </script>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>高校毕业设计选题系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> ${sessionScope.admin.getName()}</span> , 欢迎你！</p>
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
                <span>密码修改页面</span>
            </div>
     
                <form action="#" method="post" class="layui-form">
                   <div class="layui-form-item">
                   <label class="layui-form-label">旧密码:</label>
                  <div class="layui-input-block">
                 <input type="password" name="oldPassword" id="oldPassword" required  lay-verify="required" placeholder="请输入原密码" autocomplete="off" class="layui-input" style="width:200px">
                 </div>
                  </div>
                  <div class="layui-form-item">
    <label class="layui-form-label">新密码:</label>
    <div class="layui-input-block">
      <input type="password" name="newPassword" id="newPassword" required  lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input" style="width:200px">
    </div>
  </div>
     <div class="layui-form-item">
    <label class="layui-form-label">确认密码:</label>
    <div class="layui-input-block">
      <input type="password" name="reNewPassword" id="reNewPassword" required  lay-verify="required" placeholder="请输入新确认密码，保证和新密码一致" autocomplete="off" class="layui-input" style="width:200px">
    </div>
  </div>
      <div class="layui-input-block">
      <input type="button" class="layui-btn" value="保存" />
      </div>
                </form>
            
        </div>
    </section>
    <footer class="footer">
    </footer>
<script src="js/time.js"></script>

</body>
</html>