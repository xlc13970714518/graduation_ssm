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
            <span>教师管理页面</span>
        </div>
       
    <div>
    <button type="button" class="layui-btn layui-btn-warm" onclick="isdelete()">删除</button>   
    <button type="button" class="layui-btn" onclick="isadd()">添加</button> 
    </div>
    <div>
           <table class="layui-table">
               <thead>
                   <tr>
                       <th><input type='checkbox' id="ischange"/>全选</th>
                      <th>职工编号</th>
                      <th>姓名</th>
                       <th>职位</th>
                       <th>手机号</th>
                       <th>QQ</th>
                        </tr>  
               </thead>
               <tbody>
			</tbody>
               </table>
               </div>
  <div id="laypage">
 </div>
</section>
<footer class="footer">
</footer>
 <script src="js/jquery-1.7.2.js"></script>
<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>
<script  type="text/javascript" src="js/layui/layui.js"></script>
<script>
    var page=1; //设置首页页码
    var limit=4;  //设置一页显示的条数
    var totalTeacher;  
              //总条数
 function loadData(){
    	      $.post("admin_mteacher",{pageIndex:page,pageSize:limit},function(list){ 
                console.log(list);
               for(var i=0;i<list.length;i++){
                    var td = $("<td><input type='checkbox' class='checkbox' /></td>");
                    var td1= $("<td></td>").text(list[i].num);
                    var td2 = $("<td></td>").text(list[i].name);
                    var td3 = $("<td></td>").text(list[i].position);
                    var td4= $("<td></td>").text(list[i].phonenumber);
                    var td5 = $("<td></td>").text(list[i].qq);
                    var tr = $("<tr></tr>").append(td,td1, td2, td3, td4,td5);
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
                ,count: totalTeacher, //数据总数，从服务端得到
                limit:limit,   //每页条数设置
                jump: function(obj, first){
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
    	$.post("totalTeacher",function(data){ 
     	totalTeacher=data;
    	});
    	loadData();  //请求数据
        getPage();   //分页操作
        ischange();
        
    });
   function ischange() {
	   $("#ischange").click(function(){
	   if($("#ischange").prop("checked") == true){
	    	$(".checkbox").prop("checked", true);
	    	}
	    else {
	    	$(".checkbox").prop("checked", false);
		}	 
	   });
   }
	   function isdelete() {
		   var ch=0;
		   $("input").each(function(){
			   if($(this).is(":checked")){
				   ch=ch+1;
			   }});
		 if(ch==0){
			   alert("请选择删除选项！");
			   window.location.href="admin_mteacher.jsp"; 
		   }else {
			var sure=window.confirm("确认删除吗？");
		   var flag=1;
		   if(sure){
		        $(".checkbox:checked").each(function(){
				var num=$(this).parents("tr").children("td").eq(1).text();
			    var sure=delete0(num);
			  if(sure){
				$(this).parents("tr").remove();
				}else{
				alert("删除失败！重新删除");
				return false;
				flag=0;
			}
			});}
		else {
			window.location.href="admin_mteacher.jsp"; 
		}
		if(flag==1){
			alert("删除成功！");
			window.location.href="admin_mteacher.jsp"; 
		}
		   }
	}
 function delete0(num) {
	 //alert("执行删除函数")
	 var flag=1;
	 $.ajax({
         type:"post",
         url:"deleteTeacher",//对应controller的URL
         async:false,
         dataType: "json",
         data:{"num":num,},
         success:function(list){
            // alert(typeof list);
            if(list==true){
         		flag=1;
         	}
         	else {
				flag=0;
			}
         }
     });
	 if(flag==1){
		 return true;
	 }
	 else{
		 alert(flag);
		 return false;
	 }
 }
function isadd() {
	window.location.href="admin_addTeacher.jsp"; 
}

    
	
   
	

</script>

</body>
</html>