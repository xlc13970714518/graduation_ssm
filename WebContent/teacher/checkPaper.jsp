<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>高校毕业设计选题系统</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/materialdesignicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui/css/layui.css" media="all"/>

</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      
      <!-- logo -->
      <div id="logo" class="sidebar-header">
      <img alt="log" src="${pageContext.request.contextPath}/images/log.png"/>
      
       <span style="text-align:center;height:40px;line-height:40px;font-size:18px;">高校毕业设计选题系统</span>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item active"> <a href="#"><i class="mdi mdi-home"></i>教师功能</a> </li>
            <li class="nav-item nav-item-has-subnav">
            	
              <a href="${pageContext.request.contextPath}/teacher/uploadPaperTitle.jsp"><i class="mdi mdi-palette"></i>上传论文题目</a>
            
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/teacher/checkPaperTitle.jsp"><i class="mdi mdi-format-align-justify"></i>查看学生选题并确认选题</a>
              </li>
               <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/teacher/checkPaper.jsp"><i class="mdi mdi-format-align-justify"></i>查看学生论文并审核</a>
              </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/teacher/update_password.jsp"><i class="mdi mdi-lock-outline"></i>修改密码</a>
              
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/login.jsp"><i class="mdi mdi-logout-variant"></i>退出系统</a>
              
            </li>
           
          </ul>
        </nav>
        
      
      </div>
      
    </aside>
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <header class="lyear-layout-header">
      
      <nav class="navbar navbar-default">
        <div class="topbar">
          
          <div class="topbar-left">
            <div class="lyear-aside-toggler">
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
            </div>
            <span class="navbar-page-title">教师功能</span>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/images/teacherlog.jpg" alt="教师" />
                <span>教师：${sessionScope.teacher.getName()}<span class="caret"></span></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a href="${pageContext.request.contextPath}/teacher/teacherInformation.jsp" ><i class="mdi mdi-account"></i> 个人信息</a> </li>
                <li> <a href="${pageContext.request.contextPath}/teacher/update_password.jsp"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
               <li> <a href="${pageContext.request.contextPath}/login.jsp"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
              </ul>
            </li>
            <!--切换主题配色-->
		    <li class="dropdown dropdown-skin">
			  <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
			  <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                <li class="drop-title"><p>主题</p></li>
                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                </li>
			    <li class="drop-title"><p>LOGO</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>头部</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>侧边栏</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
				</li>
			  </ul>
			</li>
            <!--切换主题配色-->
          </ul>
          
        </div>
      </nav>
      
    </header>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      <div id="box1">
      <h3>学生论文情况</h3>
           <table class="layui-table">
               <thead>
                   <tr>
                      <th style="display:none;" ></th>
                       <th>编号</th>
                       <th>学号</th>
                       <th>姓名</th>
                       <th>专业</th>
                       <th>系名</th>
                       <th>审核状态</th>
                       <th>论文下载</th>
                       <th>操作</th>
                    </tr>
               </thead>
               <tbody>
			</tbody>
               </table>
               </div>
  <div id="laypage">
 </div>
  <div id="box2" style="display:none">
<form action="#" method="post" class="layui-form">
                   <div class="layui-form-item">
                   <label class="layui-form-label">姓名:</label>
                  <div class="layui-input-block">
                 <input type="text" name="stuName" id="stuName" required  lay-verify="required"  autocomplete="off" class="layui-input" readonly="true" style="width:200px">
                 </div>
                  </div>
                  <div class="layui-form-item">
    <label class="layui-form-label">学号:</label>
    <div class="layui-input-block">
      <input type="text" name="stuNum" id="stuNum" required  lay-verify="required"  autocomplete="off" class="layui-input" readonly="true" style="width:200px">
    </div>
  </div>
     <div class="layui-form-item">
    <label class="layui-form-label">论文审核:</label>
    <div class="layui-input-block">
      <input type="radio" name="status" value="通过" title="通过">
      <input type="radio" name="status" value="不通过" title="不通过">
    </div>
  </div>
       <div class="layui-form-item">
    <label class="layui-form-label">论文意见:</label>
    <div class="layui-input-block">
     <textarea rows="10" cols="20" class="form-control" name="paperAdvices" id="paperAdvices"  style="width:400px">
                    </textarea>
    </div>
  </div>
      <div class="layui-input-block">
      <input type="button" class="layui-btn"   onclick="checkPaper()" value="提交" />
      </div>
                </form>
  
 
  </div>    
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.min.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/js/layui/layui.js"></script>
<script type="text/javascript">
layui.use(['form','laydate'], function(){
	  var form = layui.form;
	  
	 
	  
	});
var page=1; //设置首页页码
var limit=4;  //设置一页显示的条数
var total;   //总条数
function loadData(){
	      $.post("../showStudentPaper",{"page":page,"pageSize":limit},function(result){ 
            console.log(result);
            var studentPapers=result['studentPapers'];
            var status;
           for(var i=0;i<studentPapers.length;i++){
        	   var td0=$("<td style='display:none'></td>").text(studentPapers[i].paperPath);
        	    var td = $("<td></td>").text(i+1);
                var td1= $("<td></td>").text(studentPapers[i].stuNum);
                var td2 = $("<td></td>").text(studentPapers[i].stuName);
                var td3 = $("<td></td>").text(studentPapers[i].stuMajor);
                var td4 = $("<td></td>").text(studentPapers[i].stuDept);
                // var td6 = $('<td><input class="layui-btn" type="button" onclick="sure(' + list[i].id + ')" value="确定题目"/></td>');
                if(studentPapers[i].checkStatus==0){
                	status="未审核"                }
                if(studentPapers[i].checkStatus==1){
                	status="审核通过"                }
                if(studentPapers[i].checkStatus==2){
                	status="不通过"                }
                var td5 =$("<td></td>").text(status);
                var td6=$('<td><a href="#" id="a1" onclick="load(this)" style="background-color: green; color: white;">下载论文</a></td>')
                var td7 = $('<td><input class="layui-btn" type="button" onclick="sure(this)" value="审核操作"/></td>');
               var tr = $("<tr></tr>").append(td0,td,td1, td2, td3, td4,td5,td6,td7);
                $("tbody").append(tr);   

}                          
            });

};
function getPage(){
    layui.use('laypage', function(){
        var laypage = layui.laypage;
       //执行一个laypage实例
        laypage.render({
            elem: 'laypage' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: total //数据总数，从服务端得到
            ,limit:limit //每页条数设置
            ,first:"true"
            ,last:"true"
            ,jump: function(obj, first){
                //obj包含了当前分页的所有参数，比如：
                console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                console.log(obj.limit); //得到每页显示的条数
                page=obj.curr;  //改变当前页码
                limit=obj.limit;
                //首次不执行
                if(!first){
                	$('tbody').empty();
                    loadData()  //加载数据
                }
            }
        });
    });
};
$(function(){ 
	$.post("../TotalstudentPaper",function(data){ 
 	total=data;
	});
	loadData();  //请求数据
    getPage();   //分页操作
    
 });
 function load(this1) {
	 var paperPath=$(this1).parents("tr").children("td").eq(0).text();
	 var stuNum=$(this1).parents("tr").children("td").eq(2).text();
	 var stuName=$(this1).parents("tr").children("td").eq(3).text();
	 $("#a1").attr("href","../loadStudentPaper?paperPath="+paperPath+"&stuNum="+stuNum+"&stuName="+stuName);
}
 function sure(this2) {
	 var stuNum=$(this2).parents("tr").children("td").eq(2).text();
	 var stuName=$(this2).parents("tr").children("td").eq(3).text();
	 $("#stuNum").val(stuNum);
	 $("#stuName").val(stuName);
	 $("#box2").css('display','block');
	 }
 function checkPaper() {
	var stuNum=$("#stuNum").val();
	var status=$("input[name='status']:checked").val();
	var paperAdvices=$("#paperAdvices").val();
	var checkStatus;
	if(status=="通过"){
		checkStatus=1;
	}else{
		checkStatus=2;
	}
	 $.post("../checkPaper",{"stuNum":stuNum,"checkStatus":checkStatus,"paperAdvices":paperAdvices},function(result){
		//alert(result=="true");
		 if(result=="true"){
			 alert("审核成功！");
			 window.location.href="checkPaper.jsp";
		 }else{
			 alert("审核失败！");
		 }
	 });
	
}
 </script>
</body>
</html>