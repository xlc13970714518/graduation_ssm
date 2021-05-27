<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body style="background-color:darkgray">
<div style="margin: auto; margin-top: 150px;"><h1 align="center">高校毕业设计选题系统</h1></div>
 <div style=" width:533px;height:300px; background:url(images/beijing.jpg); margin: auto;">
	<div style="width: 250px;height: 100px; margin: auto;padding-top: 60px;">
	<form  action="#" method="post" >
	用户名:<input type="text" id="name" name="name"/><br/>
	密 码&nbsp;&nbsp;:<input id="password" type="password" name="password"/><br/>
	   <input type="radio" name="role" value="teacher" />教师 
       <input type="radio" name="role" value="student" /> 学生 
       <input type="radio" name="role" value="admin"/>管理员<br />
	验证码:<input type="text" size="1" id="code" name="code"/><img id="imgCode" src="code" width="80" height="40"/><a href="">看不清</a><br/>
	</form>
 <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="login()">立即提交</button>
 <button type="reset" class="layui-btn layui-btn-primary" onclick="resetData()">重置</button>
</div>
<div id="prompt" style="width: 250px;height: 50px;margin: auto;padding-top: 60px;color:#F00"></div>
	</div>

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	     var code=false;
	   $("a").click(function(){
		//浏览器带有缓存功能,不会多次请求相同数据
		$("img").attr("src","code?date="+new Date());
		return false;
	});
	resetData=function(){
			$("form")[0].reset();
			};
	login=function(){
		
		var name=$("#name").val();
		var password=$("#password").val();
		var role= $("input[name='role']:checked").val();
		var code=$("#code").val();
		var prompt=$("#prompt");
		if(name==""){
			prompt.html("用户名为空！");
			
		}else{
			if(password==""){
				prompt.html("密码为空！");
				
			}else{
				if(role==""){
					prompt.html("角色未选择！");
				}else{
					if(code==""){
						prompt.html("验证码为空！");
					}else{
						prompt.html("");
						$.post("login",{"name":name,"password":password,"role":role,"code":code},function(result){
							var code=result['code'];
							var sure=result['sure'];
							var role=result['role'];
							if(code=="0"){
								prompt.html("验证码错误！");
							}else{
								if(sure=="0"){
									prompt.html("用户名和密码错误！");
								}else{
									if(role=="admin"){
										 window.location.href="adminIndex.jsp"; 
									}
									if(role=="student"){
										 window.location.href="student/index.jsp"; 
									}
									if(role=="teacher"){
										window.location.href="teacher/index.jsp"; 
									}
								}
							}
						})
					}
					
				}
			}
		}
		//$("#imgCode").attr("src","code?date="+new Date());
			
	}
})
       
 
                               
</script>
</body>
</html>