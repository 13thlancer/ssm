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
    <link href="WebContent/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="WebContent/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="WebContent/assets/styles.css" rel="stylesheet" media="screen">


      <script type="text/javascript">

          function Login() {
              var postData = {
                  username:document.getElementById("username").value,
                  UserPassWord: document.getElementById("UserPassWord").value
              };

              $.ajax({
                  type:"POST",
                  url:"<%=basePath%>LoginController/checkUser",
                  /*cache:false ,*/
                  async:false,
                  data:postData,
                  success:function(data){
                      if (data == "OK") {
                         /* alert(data);*/
                          window.location.href = "<%=request.getContextPath()%>/WebContent/views/tables.jsp";
                         /* window.open("tables.jsp")*/
                      } else {
                          jAlert('');
                          /*alert(data);*/
                         /* $.message.show({
                           title:'提示信息',
                           msg:data
                           });*/

                      }
                  }
              });
          };
      </script>
  </head>
  <body id="login">
    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">登陆</h2>
        <input id="username" type="text" class="input-block-level" placeholder="用户名">
        <input id="UserPassWord" type="password" class="input-block-level" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me">记住密码
        </label>
          <button class="btn btn-large btn-primary" type="submit" onclick="Login();return false;">登陆</button>
          <button class="btn btn-large btn-primary" type="submit" onclick="window.open('<%=request.getContextPath()%>/WebContent/views/Reg.jsp')">注册</button>
      </form>

    </div> <!-- /container -->
<%--
    <script src="<%=request.getContextPath()%>/WebContent/vendors/jquery-3.1.0.min.js"></script>
--%>
    <script src="WebContent/vendors/jquery-3.1.0.js"></script>
<%--
    <script src="<%=request.getContextPath()%>/WebContent/vendors/jquery-1.9.1.min.js"></script>
--%>
    <script src="WebContent/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>