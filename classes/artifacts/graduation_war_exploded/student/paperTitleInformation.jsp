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
            <li class="nav-item active"> <a href="#"><i class="mdi mdi-home"></i>学生功能</a> </li>
            <li class="nav-item nav-item-has-subnav">
            	
              <a href="${pageContext.request.contextPath}/student/choosePaperTitle.jsp"><i class="mdi mdi-palette"></i>选择本系论文题目</a>
            
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/student/paperTitleInformation.jsp"><i class="mdi mdi-format-align-justify"></i>查看选题信息</a>
              
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/student/uploadPaper.jsp"><i class="mdi mdi-format-align-justify"></i>上传论文</a>
              
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="${pageContext.request.contextPath}/student/update_password.jsp"><i class="mdi mdi-lock-outline"></i>修改密码</a>
              
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
            <span class="navbar-page-title">学生功能--查看选题信息 </span>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/images/stulog.jpg" alt="学生" />
                <span>学生：${sessionScope.student.getName()} <span class="caret"></span></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a href="${pageContext.request.contextPath}/student/information.jsp"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                <li> <a href="${pageContext.request.contextPath}/student/update_password.jsp"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
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
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
              <form method="post" action="#!" class="site-form">
               <div class="form-group">
                    <label for="paperTitleName">题目名称</label>
                    <input type="text" class="form-control" name="paperTitleName" id="paperTitleName" readonly="true"  style="width:400px">
                   <!--  </div>
                <div class="form-group"> -->
                    <label for="titleProperties">题目性质</label>
                    <input type="text" class="form-control" name="titleProperties" id="titleProperties" readonly="true"  style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="titlePropertiesSure_status">题目审核状态</label>
                    <input type="text" class="form-control" name="titlePropertiesSure_status" id="titlePropertiesSure_status" readonly="true"  style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="teacherName">导师姓名</label>
                    <input type="text" class="form-control" name="teacherName" id="teacherName" readonly="true"  style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="teacherPosition">导师职称</label>
                    <input type="text" class="form-control" name="teacherPosition" id="teacherPosition" readonly="true"  style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="teacherPhoneNumber">导师电话</label>
                    <input type="text" class="form-control" name="teacherPhoneNumber" id="teacherPhoneNumber" readonly="true"  style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="teacherQQ">导师QQ</label>
                    <input type="text" class="form-control" name="teacherQQ" id="teacherQQ" readonly="true"   style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="major">指定题目专业</label>
                    <input type="text" class="form-control" name="major" id="major"  readonly="true" style="width:400px">
                  </div>
                  <div class="form-group">
                    <label for="paperTitleRequire">题目要求</label>
                   <!--  <input type="text" class="form-control" name="paperTitleRequire" id="paperTitleRequire" readonly="value"> -->
                 <textarea rows="10" cols="20" class="form-control" name="paperTitleRequire" id="paperTitleRequire" readonly="readonly"  style="width:400px">
                    
           </textarea>
                  </div>
                  </form>
                 </div>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.min.js"></script>
<script type="text/javascript">
$(function(){
	var paperTitleName=$("#paperTitleName");
	var titleProperties=$("#titleProperties");
	var titlePropertiesSure_status=$("#titlePropertiesSure_status");
	var major=$("#major");
	var paperTitleRequire=$("#paperTitleRequire");
	var teacherName=$("#teacherName");
	var teacherPosition=$("#teacherPosition");
	 var teacherPhoneNumber=$("#teacherPhoneNumber");
	 var teacherQQ=$("#teacherQQ");
	$.post("../showPaperTitleInformation",function(result){
		var flag=result['flag'];
		if(flag=="true"){
			var paperTitle=result['paperTitle'];
			var teacher=result['teacher'];
			paperTitleName.val(paperTitle.title_name);
			titleProperties.val(paperTitle.properties);
		if(paperTitle.sure_status==0){
			titlePropertiesSure_status.val("未审核");
			titlePropertiesSure_status.css("color","red");
		}
		else{
			titlePropertiesSure_status.val("审核通过");
			titlePropertiesSure_status.css("color","green");
		}
		major.val(paperTitle.title_major);
		paperTitleRequire.val(paperTitle.required);
		teacherName.val(teacher.name);
		teacherPosition.val(teacher.position);
		teacherPhoneNumber.val(teacher.phonenumber);
		teacherQQ.val(teacher.qq);
		}
		else{
			alert("题目还没日选，请先选择你的论文题目！");
			window.location.href="index.jsp";
		}
		
	});
	
});
</script>
</body>
</html>