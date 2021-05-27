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
            <span class="navbar-page-title">教师功能--上传论文题目</span>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/images/teacherlog.jpg" alt="教师" />
                <span>教师：${sessionScope.teacher.getName()} <span class="caret"></span></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a href="${pageContext.request.contextPath}/teacher/teacherInformation.jsp"><i class="mdi mdi-account"></i> 个人信息</a> </li>
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
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <form method="post" action="#!" class="layui-form">
                   <div class="form-group">
                    <label for="teacherName">导师姓名</label>
                    <input type="text" class="form-control" name="teacherName" id="teacherName" value="${sessionScope.teacher.getName()}" readonly="true" style="width:400px"/>
                    </div>
                   <div class="form-group">
                    <label for="teacherNumber">导师编号</label>
                    <input type="text" class="form-control" name="teacherNumber" id="teacherNumber" value="${sessionScope.teacher.getNum()}" readonly="true" style="width:400px"/>
                    </div>
                     <div class="form-group">
                    <label for="paperTitleName">论文题目</label>
                    <input type="text" class="form-control" name="paperTitleName" id="paperTitleName"  style="width:400px"/>
                    </div>
                 <div class="form-group">
                 <label for="properties">题目性质</label>
                 <div  style="width:400px">
                      <select name="properties" id="properties" lay-verify="required">
                     <option value=""></option>
                     <option value="应用与理论结合研究">应用与理论结合研究</option>
                     <option value="理论研究">理论研究</option>
                     <option value="实际应用研究">实际应用研究</option>
                     </select>
    </div></div>
                   <div class="form-group">
               <label for="major">指定专业:</label>
               <div  style="width:400px">
              <select name="major" id="major" lay-verify="required">
                   <option value=""></option>
                   <option value="软件工程">软件工程</option>
                   <option value="会计">会计</option>
                   <option value="英语">英语</option>
                  <option value="电子商务">电子商务</option>
                  <option value="计算机应用技术">计算机应用技术</option>
                  <option value="互联网">互联网</option>
                  <option value="大数据">大数据</option>
                   <option value="人工智能">人工智能</option>
                   <option value="电子工程">电子工程</option>
                  <option value="生物工程">生物工程</option>
                 <option value="化学工程">化学工程</option>
                   <option value="物理学">物理学</option>
                 <option value="电工电子">电工电子</option>
        </select>
    </div>
  </div>
                   <div class="form-group">
                 <label for="dept">所在系</label>
                  <div  style="width:400px">
             <select name="dept" id="dept" lay-verify="required">
                     <option value=""></option>
                     <option value="计算机系">计算机系</option>
                     <option value="人文系">人文系</option>
                     <option value="电子系">电子系</option>
                     <option value="理工系">理工系</option>
                     <option value="生物系">生物系</option>
                     <option value="化学系">化学系</option>
        </select>
    </div></div>
    <div class="form-group">
                    <label for="paperTitleRequire">题目要求</label>
                   <textarea rows="10" cols="20" class="form-control" name="paperTitleRequire" id="paperTitleRequire"  style="width:400px">
                    </textarea>
                  </div>
                  <button type="button" class="btn btn-primary" onclick="uploadPaperTitle()">确认上传</button>
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
<script  type="text/javascript" src="${pageContext.request.contextPath}/js/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript">
layui.use('form', function(){
	  var form = layui.form
	});
uploadPaperTitle=function () {
	var teacher_name=$("#teacherName").val();
	var teacher_num = $("#teacherNumber").val();
	var title_name=$("#paperTitleName").val();
	 var properties=$("#properties option:selected").val();
	 var title_major = $("#major option:selected").val();
	 var dept=$("#dept option:selected").val();
	 var required=$("#paperTitleRequire").val();
	 var href=0;
	 if(teacher_name==""||teacher_num==""||title_name==""||properties==""||title_major==""||dept==""||required=="")
	{
	alert("请填入完整信息！");}else{
		// alert("开始");
		 $.ajax({
	         type:"post",
	         url:"../insertPaperTitle",//对应controller的URL
	         async:false,
	         dataType: "json",
	         data:{"teacher_name":teacher_name,"teacher_num":teacher_num,"title_name":title_name,"properties":properties,"title_major":title_major,"dept":dept,"required":required},
	         success:function(result){
	        	//alert("结束");
	        	 if(result==true){
	        		 alert("上传题目成功！");
	         		 href=1;
	         	}
	         	else {
					alert("上传题目失败！请重新上传！");
					href=0;
					}
	        	 if(href==1){
		    		 window.location.href="index.jsp";
		    		  } 
	         }
	        
	         
	     });
		 }
	 
	
}
</script>
</body>
</html>