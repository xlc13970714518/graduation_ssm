<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>高校毕业设计选题系统之管理员</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
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
<section class="publicMian">
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
        <img class="wColck" src="images/clock.jpg" alt=""/>
        <div class="wFont">
            <h2><label id="admin">Admin</label></h2>
            <p>欢迎来到高校毕业设计选题系统之管理员!</p>
			<span id="hours"></span>
        </div>
    </div>
</section>
<!--<footer class="footer">
</footer>-->
<script src="js/time.js"></script>
</body>
</html>