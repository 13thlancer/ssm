<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="<%=request.getContextPath()%>/WebContent/assets/styles.css" rel="stylesheet" media="screen">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">

        function Reg() {
            var postData = {
                username:document.getElementById("username").value,
                password: document.getElementById("UserPassWord").value,
                sex:document.getElementById("UserSex").value,
                birthday:document.getElementById("birth").value
                };
            $.ajax({
                type:'POST' ,
                url:'<%=basePath%>LoginController/RegUser',
            /*    cache:false ,*/
                async:true,
                data:postData,
                success:function(data){
                    if (data == "OK") {
                        alert("注册成功！");
                        window.location.href = "<%=request.getContextPath()%>/WebContent/views/login.jsp"
                    } else {
                        alert(data);
                        /* $.message.show({
                         title:'提示信息',
                         msg:data*/
                        /* });*/
                        }
                    }
                });
        };
    </script>
</head>
<body id="login">
<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">注册</h2>
        <input id="username" type="text" class="input-block-level" placeholder="用户名">
        <input id="UserPassWord" type="password" class="input-block-level" placeholder="密码">
        <input id="UserSex" type="text" class="input-block-level" placeholder="手机">
        <input id="birth" type="text" class="input-block-level" placeholder="邮箱">
        <button class="btn btn-large btn-primary" type="submit" onclick="Reg();return false;">注册</button>
    </form>

</div> <!-- /container -->
<script src="<%=request.getContextPath()%>/WebContent/vendors/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>