<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<title>人员表</title>
<!-- Bootstrap -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="../bootstrap/css/bootstrap-dialog.min.css" rel="stylesheet" media="screen">
<link href="../bootstrap/css/bootstrap-dialog.css" rel="stylesheet" media="screen">
<link href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="../assets/styles.css" rel="stylesheet" media="screen">
<link href="../assets/DT_bootstrap.css" rel="stylesheet" media="screen">
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="../vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body onload="showBlog();">
<div class="navbar navbar-fixed-top">
<div class="navbar-inner">
<div class="container-fluid">
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</a>
<a class="brand" href="#">飞猪维护</a>
<div class="nav-collapse collapse">
<ul class="nav pull-right">
    <li class="dropdown">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i>Administrator<i class="caret"></i>

        </a>
        <ul class="dropdown-menu">
            <li>
                <a tabindex="-1" href="#">Profile</a>
            </li>
            <li class="divider"></li>
            <li>
                <a tabindex="-1" href="login.jsp">登出</a>
            </li>
        </ul>
    </li>
</ul>
<ul class="nav">
    
    <li class="dropdown">
        <a href="#" data-toggle="dropdown" class="dropdown-toggle">设置 <b class="caret"></b>

        </a>
        <ul class="dropdown-menu" id="menu1">
            <li>
                <a href="#">工具 <i class="icon-arrow-right"></i>

                </a>
                <ul class="dropdown-menu sub-menu">
                    <li>
                        <a href="#">Reports</a>
                    </li>
                    <li>
                        <a href="#">Logs</a>
                    </li>
                    <li>
                        <a href="#">Errors</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">SEO Settings</a>
            </li>
            <li>
                <a href="#">Other Link</a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">Other Link</a>
            </li>
            <li>
                <a href="#">Other Link</a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">菜单 <i class="caret"></i>

        </a>
        <ul class="dropdown-menu">
            <li>
                <a tabindex="-1" href="#">Blog</a>
            </li>
            <li>
                <a tabindex="-1" href="#">News</a>
            </li>
            <li>
                <a tabindex="-1" href="#">Custom Pages</a>
            </li>
            <li>
                <a tabindex="-1" href="#">Calendar</a>
            </li>
            <li class="divider"></li>
            <li>
                <a tabindex="-1" href="#">FAQ</a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">用户 <i class="caret"></i>

        </a>
        <ul class="dropdown-menu">
            <li>
                <a tabindex="-1" href="#">User List</a>
            </li>
            <li>
                <a tabindex="-1" href="#">Search</a>
            </li>
            <li>
                <a tabindex="-1" href="#">Permissions</a>
            </li>
        </ul>
    </li>
</ul>
</div>
<!--/.nav-collapse -->
</div>
</div>
</div>
<div class="container-fluid">
<div class="row-fluid">
<div class="span3" id="sidebar">
<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
<li class="active">
    <a href="form.jsp"><i class="icon-chevron-right"></i> 飞猪维护</a>
</li>
<li>
    <a href="tables.jsp"><i class="icon-chevron-right"></i> 会员维护</a>
</li>
<li>
    <a href="editors.jsp"><i class="icon-chevron-right"></i>消息发布中心</a>
</li>
</ul>
</div>
<!--/span-->
<div class="span9" id="content">


<div class="row-fluid">
<!-- block -->
<div class="block">
    <div class="navbar navbar-inner block-header">
        <div class="muted pull-left">飞猪维护表</div>
    </div>
    <div class="block-content collapse in">
        <div class="span12">
           <div class="table-toolbar">
              <div class="btn-group">
                   <a href="#myModal" role="button" class="btn btn-default" data-toggle="modal"><span class="glyphicon glyphicon-hand-up"></span>添加<i class="icon-plus"></i></a>
              </div>
               <div class="btn-group">
                 <a href="#update"><button class="btn btn-default" onclick="update();">修改<i class="icon-pencil"></i></button></a>
              </div>
              <div class="btn-group">
                 <a href="#"><button class="btn btn-default" onclick="deleted();">删除<i class="icon-remove"></i></button></a>
              </div>
               <div class="btn-group">
                 <a href="#"><button class="btn btn-default">刷新<i class="icon-refresh"></i></button></a> 
              </div>
              <div class="btn-group pull-right">
                 <button data-toggle="dropdown" class="btn dropdown-toggle">更多 <span class="caret"></span></button>
                 <ul class="dropdown-menu">
                    <li><a href="#">打印</a></li>
                    <li><a href="#">保存为PDF</a></li>
                    <li><a href="#">导入EXCEL</a></li>
                 </ul>
              </div>
           </div>

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-hover table-bordered" id="admin">
                <thead>
                    <tr class="success">
                        <th>ID</th>
                        <th>发布用户</th>
                        <th>被赞人</th>
                        <th>发布内容</th>
                        <th>发布时间</th>
                        <th>发布类型</th>
                        <th>图片路径</th>
                    </tr>
                </thead>

            </table>
        </div>
    </div>
</div>
<!-- /block -->
</div>


</div>
</div>
<hr>
<footer>
<p>&copy; Vincent Gabriel 2013</p>
</footer>
</div>
<!--/.fluid-container-->



<!--添加弹出层-->                 
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">添加信息</h4>
            </div>
        <div class="modal-body">
    <form action="#" id="addform" class="form-horizontal">
    <fieldset>
        <div class="alert alert-error hide">
            <button class="close" data-dismiss="alert"></button>
            You have some form errors. Please check below.
        </div>
        <div class="alert alert-success hide">
            <button class="close" data-dismiss="alert"></button>
            Your form validation is successful!
        </div>

        <div class="control-group">
            <label class="control-label">发布人<span class="required">*</span></label>
            <div class="controls">
                <input id="username" type="text" name="name" data-required="1" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">被赞人</label>
            <div class="controls">
                <input id="recievername" type="text" name="name" data-required="1" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">发布内容<span class="required">*</span></label>
            <div class="controls">
                <input id="sendcontent" type="text" name="name" data-required="1" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">图片路径</label>
            <div class="controls">
                <input id="picpath" type="text" name="name" data-required="1" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">发布类型<span class="required">*</span></label>
            <div class="controls">
                <select id="sendtype" name="category">
                    <option value="">请选择...</option>
                    <option value="1">普通</option>
                    <option value="2">活动</option>
                    <option value="3">通知</option>
                    <option value="4">点赞</option>
                </select>
            </div>
        </div>

        <div class="form-actions">
            <button type="submit" class="btn btn-primary" onclick="addblog();return false;">添加</button>
            <button id="Cancel" type="button" class="btn">取消</button>
        </div>
    </fieldset>
    </form>

                </div>

            </div>
        </div>
    </div>

<script src="../vendors/jquery-1.9.1.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/bootstrap-dialog.js"></script>
<%--
<script src="<%=request.getContextPath()%>/WebContent/bootstrap/js/bootstrap-dialog.min.js"></script>
--%>
<script src="../vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="../assets/scripts.js"></script>
<script src="../assets/DT_bootstrap.js"></script>
<script type="text/javascript">

    var selectedTr = null;

    function showBlog(){
        $.ajax({
            type: "POST",
            url: "<%=basePath%>adminController/showBlog",
            cache:false ,
            dataType:'json',
            async: false,
            success: function (data) {
                var length = data.length;
                for(var i = 0;i<length;i++)
                {
                    $('#admin').append('<tr onclick="check(this);"><td><input type="checkbox" name="checkItem" /></td><td>'+data[i].id+'</td><td>'+data[i].senderid+'</td><td>'+data[i].reciverid+'</td><td>'+data[i].sendcontent+'</td><td>'+data[i].senddate+'</td><td>'+data[i].type+'</td><td>'+data[i].picpath+'</td></tr>');
                }
            }
        });
    }


    function check(obj) {

        selectedTr = obj;
    }

     function update(){
         if (selectedTr != null) {
            var str = selectedTr.cells[1].childNodes[1];
             alert(selectedTr.cells[1].innerHTML);
        } else {
            alert("请选择一行");
        }
         selectedTr = null;
    }

    function deleted(){
        var delid=null;
        if (selectedTr != null) {
            var delid = selectedTr.cells[1].innerHTML;
            $.ajax({
                type:"POST",
                url:"<%=basePath%>adminController/deleteBlog",
                cache:false ,
                async:false,
                data:{delid:delid},
                success:function(data){
                    if (data == "OK") {
                        alert("删除成功！")
                        location.reload("form.jsp");
                    } else {
                        alert(data);
                    }
                }
            });
        } else {
            alert("请选择一行");
        }


        selectedTr = null;
    }

    function addblog(){
        var postData = {
            username:document.getElementById("username").value,
            recievername:document.getElementById("recievername").value,
            sendcontent:document.getElementById("sendcontent").value,
            picpath:document.getElementById("picpath").value,
            sendtype:document.getElementById("sendtype").value
        };

        $.ajax({
            type:"POST",
            url:"<%=basePath%>adminController/addBlog",
            /*cache:false ,*/
            async:false,
            data:postData,
            success:function(data){
                if (data == "OK") {
                    /* alert(data);*/
                    location.reload("form.jsp");
                    /* window.open("tables.jsp")*/
                } else {
                    alert(data);
                    /* $.message.show({
                     title:'提示信息',
                     msg:data
                     });*/

                }
            }
        });
    }

    var $thr = $('table thead tr');
    var $checkAllTh = $('<th><input type="checkbox" id="checkAll" name="checkAll" /></th>');
    $thr.prepend($checkAllTh);
    /*“全选/反选”复选框*/
    var $checkAll = $thr.find('input');

    $checkAll.click(function(event){
        /*将所有行的选中状态设成全选框的选中状态*/
        $tbr.find('input').prop('checked',$(this).prop('checked'));
        /*并调整所有选中行的CSS样式*/
        if ($(this).prop('checked')) {
            $tbr.find('input').parent().parent().addClass('warning');
        } else{
            $tbr.find('input').parent().parent().removeClass('warning');
        }
        /*阻止向上冒泡，以防再次触发点击操作*/
        event.stopPropagation();
    });

    var $tbr = $('table tbody tr');
    var $checkItemTd = $('<td><input type="checkbox" name="checkItem" /></td>');
    /*每一行都在最前面插入一个选中复选框的单元格*/
    $tbr.prepend($checkItemTd);
    $tbr.find('input').click(function(event){
        /*调整选中行的CSS样式*/
        $(this).parent().parent().toggleClass('warning');
        /*如果已经被选中行的行数等于表格的数据行数，将全选框设为选中状态，否则设为未选中状态*/
        $checkAll.prop('checked',$tbr.find('input:checked').length == $tbr.length ? true : false);
        /*阻止向上冒泡，以防再次触发点击操作*/
        event.stopPropagation();
    });
    /*点击每一行时也触发该行的选中操作*/
    $tbr.click(function(){
        $(this).find('input').click();
    });

</script>
</body>

</html>