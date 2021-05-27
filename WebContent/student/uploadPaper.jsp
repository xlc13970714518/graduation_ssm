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
            <span class="navbar-page-title">学生功能--上传论文 </span>
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
              <div style="with:100%;height: 50px;back;background-color:transparent">
              <h4><b>上传论文</b>   &nbsp;&nbsp; &nbsp;&nbsp;<span style="color:red">	注意：教师审核通过的论文草稿将作为提交学院检测的检测稿，检测稿请严格控制文字复制比，避免抄袭</span></h4>
              </div>

              <form action="#" enctype="text/plain" method="post"> 
              <input type="file" name="file"  name="fileName1" id="fileName1"/><br/> 
              <input type="button" class="layui-btn"  value="上传" onclick="upload()"/> 
              </form>
              </div>
              <div id="paper"> 
              <span>最新论文提交情况</span>
              <table class="layui-table">
               <thead>
                   <tr>
                     <th>学号</th>
                       <th>姓名</th>
                       <th>我的论文</th>
                       <th>审核状态</th>
                       <th>下载</th>
                      </tr>
               </thead>
               <tbody>
			</tbody>
               </table>
              
              </div>
              <div id="box1" style="display:none">
              <h4>  <span>论文审核意见</span></h4>
              <div id="paperAdvice"></div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	 showPaper();
	 var paperTitleCheckSure;
	 var paperCheckSure;
	 status();
	 
});

function upload (){ 
	
	 alert("paperTitleCheckSure"+paperTitleCheckSure);
	  if(paperTitleCheckSure=="false"){
		 alert("请先选择论文题目或者论文题目未审核通过!");
			window.location.href="index.jsp";
	 }else{
		 if(paperCheckSure=="true"){
			 alert("论文审核通过不需要再提交！");
		 }else{
			var file1 = $("#fileName1").val();//用户文件内容(文件)
				if (file1 =="") {
					alert("请选择上传的目标文件!")
					return false;
				}
				//判断文件类型,我这里根据业务需求判断的是Excel文件
				var fileName1 = file1.substr(file1.lastIndexOf(".")+1).toLowerCase();
				if(fileName1 != "doc" && fileName1!="docx"){
			      	alert("请选择word文件!");				
					return false;
				}
				//判断文件大小
				var size1 = $("#fileName1")[0].files[0].size;
				//alert("size1"+size1)
				//①首先得明白jQuery对象只能使用jQuery对象的属性和方法，JavaScript对象只能使用JavaScript对象的属性和方法；
			     //②files[0]是JavaScript的属性；
			    //③$('xx')是jQuery对象，$('xx')[0]是将jQuery对象：$('xx')转换为JavaScript对象，这样才可以使用JavaScript对象的属性和方法；
				if (size1>5242880) {
					alert("上传文件不能大于5M!");
					return false;				
				}
				
				//boo1 = true;
			var type ="file";
			var formData = new FormData();//这里需要实例化一个FormData来进行文件上传
			formData.append(type,$("#fileName1")[0].files[0]);
			$.ajax({
				type:"post",
				url:"../uploadToFile",
				data:formData,
				processData : false,
				contentType : false,
				success : function(data){
					var uploadStatus=data['uploadStatus'];
					//$("input[name='userUrl']").val(data);
					//alert(uploadStatus=="true");
					if(uploadStatus=="true"){
						alert("文件上传成功!");
						showPaper();
					}else{
						alert("文件上传失败重新上传!");
					}
					
				}
			}); 
		 }
	 }
	 
	
}
function showPaper() {
 	 $('tbody').empty();
	 $.post("../showPaper",function(result){ 
             console.log(result);
             var studentPaper=result['paper'];
           // alert(studentPaper==null);
            // alert(studentPaper);
             if(studentPaper!=null){
            	 var td0= $("<td></td>").text(studentPaper.stuNum);
                 var td1= $("<td></td>").text(studentPaper.stuName);
                  var td2= $("<td></td>").text(studentPaper.paperPath);
                  var status;
                  var paperAdvice;
                  if(studentPaper.checkStatus==0){
                 	 status="未审核";
                 	$("#box1").css('display','none');
                 	 
                  }
                  if(studentPaper.checkStatus==1){
                 	status="通过" ;
                 	$("#paperAdvice").val(studentPaper.paperAdvices);
                 	 $("#box1").css('display','block');
                  }
                  if(studentPaper.checkStatus==2){
                  	status="不通过";
                  	alert(studentPaper.paperAdvices);
                  	$("#paperAdvice").html(studentPaper.paperAdvices);
                  	 $("#box1").css('display','block');
                   }
                  var td3 = $("<td></td>").text(status);
                  var td4= $('<td><a href="../downfile" style="background-color: green; color: white;">下载论文<a/></td>');
                  var tr = $("<tr></tr>").append(td0,td1, td2, td3, td4);
                  $("tbody").append(tr);  
                 
             }
             
});
}
function status() {

	$.post("../getCheckStatus",function(result){
		 paperTitleCheckSure=result['paperTitleCheckSure'];
		 paperCheckSure=result['paperCheckSure'];
		 });
	
}
</script>
</body>
</html>