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
<link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap-dialog.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap-dialog.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/WebContent/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/WebContent/assets/styles.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/WebContent/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="<%=request.getContextPath()%>/WebContent/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
<div class="navbar navbar-fixed-top">
<div class="navbar-inner">
<div class="container-fluid">
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</a>
<a class="brand" href="#">人员维护</a>
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
<li>
    <a href="form.jsp"><i class="icon-chevron-right"></i> 飞猪维护</a>
</li>
<li class="active">
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
        <div class="muted pull-left">会员维护表</div>
    </div>
    <div class="block-content collapse in">
        <div class="span12">
           <div class="table-toolbar">
              <div class="btn-group">
                   <a href="#myModal" role="button" class="btn btn-default" data-toggle="modal"><span class="glyphicon glyphicon-hand-up"></span>添加<i class="icon-plus"></i></a>
              </div>
               <div class="btn-group">
                 <a href="#"><button class="btn btn-default">修改<i class="icon-pencil"></i></button></a> 
              </div>
              <div class="btn-group">
                 <a href="#"><button class="btn btn-default">删除<i class="icon-remove"></i></button></a> 
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

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example2">
                <thead>
                    <tr>
                        <th>姓名</th>
                        <th>联系方式</th>
                        <th>公司</th>
                        <th>注册时间</th>
                        <th>公司类型</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                    
                     <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                     <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                     <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                     <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                     <tr class="odd gradeX">
                        <td>张三</td>
                        <td>1875984558</td>
                        <td>金蝶</td>
                        <td class="center">2016-12-12</td>
                        <td class="center">X</td>
                    </tr>
                
                </tbody>
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
                <h4 class="modal-title">新增用户</h4>
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
            <label class="control-label">姓名<span class="required">*</span></label>
            <div class="controls">
                <input type="text" name="name" data-required="1" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">联系方式<span class="required">*</span></label>
            <div class="controls">
                <input name="email" type="text" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">公司<span class="required">*</span></label>
            <div class="controls">
                <input name="url" type="text"/>
            </div>
        </div>
       
       
        <div class="control-group">
            <label class="control-label">公司类型<span class="required">*</span></label>
            <div class="controls">
                <select name="category">
                    <option value="">Select...</option>
                    <option value="Category 1">Category 1</option>
                    <option value="Category 2">Category 2</option>
                    <option value="Category 3">Category 5</option>
                    <option value="Category 4">Category 4</option>
                </select>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary" onclick="Validate">Validate</button>
            <button id="Cancel" type="button" class="btn">Cancel</button>
        </div>
    </fieldset>
    </form>

                </div>

            </div>
        </div>
    </div>

<script src="<%=request.getContextPath()%>/WebContent/vendors/jquery-1.9.1.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/bootstrap/js/bootstrap-dialog.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/bootstrap/js/bootstrap-dialog.min.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="<%=request.getContextPath()%>/WebContent/assets/scripts.js"></script>
<script src="<%=request.getContextPath()%>/WebContent/assets/DT_bootstrap.js"></script>
<script type="text/javascript">
function Validate(){
    $("#myModal").popover('hide');
}
function addUser(){
    BootstrapDialog.show({
    title: 'Say-hello dialog',

    buttons: [{
    id: 'btn-ok',   
    icon: 'glyphicon glyphicon-check',       
    label: 'OK',
    cssClass: 'btn-primary', 
    autospin: false,
    action: function(dialogRef){    
    dialogRef.close();
    }
    }]
    });
/* BootstrapDialog.alert('I want banana!');*/
}
</script>
</body>

</html>