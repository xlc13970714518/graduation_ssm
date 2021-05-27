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
            <span>系部/专业管理</span>
        </div>
       
    <div>
    <button type="button" class="layui-btn" onclick="add()">添加</button> 
    <button type="button" class="layui-btn" onclick="back()">返回</button> 
    <input type="hidden" id="dept_id" name="dept_id" value="<%=request.getParameter("dept_id")%>"/>
    <input type="hidden" id="dept_name" name="dept_name" value="<%=java.net.URLDecoder.decode(request.getParameter("dept_name"),"UTF-8")%>"/>
    </div>
    <div>
           <table class="layui-table">
               <thead>
                   <tr>
                      <th>专业代码</th>
                      <th>专业名称</th>
                      <th>系别名称</th>
                       <th>操作</th>
                      </tr>  
               </thead>
               <tbody>
			</tbody>
               </table>
               </div>
  <div id="laypage">
   </div>
  <div id="boxdept" style="position: absolute;z-index:30;width: 500px;
			height: 300px;background-color: gray;left:300px;top: 20px;display: none;">
  <div class="layui-form-item">
  <div style="padding-left:480px;"><button onclick="close1()">x</button>
			</div>
			<h2 align="center">专业信息</h2>
    <label class="layui-form-label">专业代码:</label>
    <div class="layui-input-block">
      <input type="text" name="major_id" id="major_id" required  lay-verify="required" placeholder="请输入专业代码" autocomplete="off" class="layui-input" style="width:200px">
    </div>
    </div>
    <div class="layui-form-item">
    <label class="layui-form-label">专业名称:</label>
    <div class="layui-input-block">
      <input type="text" name="major_name" id="major_name" required  lay-verify="required" placeholder="专业名称" autocomplete="off" class="layui-input" style="width:200px">
    </div>
    </div>
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="addMajor()">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary" onclick="close1()">关闭</button>
    </div>
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
    var totalMajor;  //总条数
 function loadData(){
	  var dept_id=$("#dept_id").val();
	   $.post("admin_showMajors",{dept_id:dept_id,page:page,pageSize:limit},function (list){
	 console.log(list);
               for(var i=0;i<list.length;i++){
                    var td1= $("<td></td>").text(list[i].major_id);
                    var td2= $("<td></td>").text(list[i].major_name);
                    var td3= $("<td></td>").text(list[i].dept_name);
                    var td4 = $('<td><input class="layui-btn" type="button" onclick="delete0(this)" value="删除"/></td>');
                    var tr = $("<tr></tr>").append(td1,td2,td3,td4);
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
                ,count: totalMajor, //数据总数，从服务端得到
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
                        loadData();  //加载数据
                        
                    }
                }
            });
        });
    };
    $(function(){ 
    	var dept_id=$("#dept_id").val();
    	$.post("admin_MajorTotal",{dept_id:dept_id},function(data){ 
    		totalMajor=data;
    	
    	});
    	loadData();  //请求数据
        getPage();   //分页操作
     
        });
  function delete0(this1) {
		  var sure=window.confirm("确认删除吗？");
		    if(sure){
			   var major_id=$(this1).parents("tr").children("td").eq(0).text();
			   var dept_id =$("#dept_id").val();
				var dept_name=$("#dept_name").val();
				$.post("admin_deleteMajor",{major_id:major_id},function(data){ 
		    		if(data=="true"){
		    			alert("删除成功！");
		    		}
		    		else{
		    		alert("删除失败！");	
		    		}
		    		window.location.href="admin_majorslist.jsp?dept_id="+dept_id+"&dept_name="+encodeURI(encodeURI(dept_name)); 
		    	});
			}
		else {
			window.location.href="admin_majorslist.jsp?dept_id="+dept_id+"&dept_name="+encodeURI(encodeURI(dept_name)); 
		}
		 }
function addMajor() {
			var dept_id =$("#dept_id").val();
			var dept_name=$("#dept_name").val();
			var major_id=$("#major_id").val();
			var major_name=$("#major_name").val();
			if(major_id==""||major_name==""){
				alert("信息不能为空，请输入完整信息");
			}
			else{
				 $.post("admin_addMajors",{major_id:major_id,major_name:major_name,dept_id:dept_id,dept_name:dept_name},function(data){ 
				    	if(data=="true"){
							alert("添加专业成功！");
						}
						else{
						alert("删除专业失败！");	
						}
						window.location.href="admin_majorslist.jsp?dept_id="+dept_id+"&dept_name="+encodeURI(encodeURI(dept_name)); 
				    	
				    });
			}
		   
			
		}
function back() {
			window.location.href="admin_deptList.jsp"; 
		
	}
	   
function add(){
	document.getElementById("boxdept").style.display="block";
}
function close1(){
	document.getElementById("boxdept").style.display="none";
	
}
    
	
   
	

</script>

</body>
</html>