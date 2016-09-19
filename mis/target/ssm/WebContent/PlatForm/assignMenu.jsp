<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    HttpSession s = request.getSession();
    String username=(String)s.getAttribute("username");
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>MIS</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-dialog.css">
    <link rel="stylesheet" href="../plugins/Ztree/CSS/metro.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .hiddenCol
        {
            display:none;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="../index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>MIS</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>商会后台管理系统</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->

            <!-- search form -->

            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">主菜单</li>

                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-table"></i><span>平台管理</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pfmanager.jsp"><i class="fa fa-circle-o"></i>平台用户管理</a></li>
                        <li class="active"><a href="pfrole.jsp"><i class="fa fa-circle-o"></i>平台角色管理</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i><span>用户管理</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="admin_user.jsp"><i class="fa fa-circle-o"></i>管理员</a></li>
                        <li><a href="require_user.jsp"><i class="fa fa-circle-o"></i>微信注册用户</a></li>
                        <li><a href="Yzj_user.jsp"><i class="fa fa-circle-o"></i>云之家用户</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i><span>意向管理</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="require_order.jsp"><i class="fa fa-circle-o"></i>需求意向</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>点赞系统</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="flypig_gift.jsp"><i class="fa fa-circle-o"></i>奖品维护</a></li>
                        <li><a href="flypig_user.jsp"><i class="fa fa-circle-o"></i>用户维护</a></li>
                        <li><a href="flypig_convert.jsp"><i class="fa fa-circle-o"></i>奖品兑换</a></li>
                        <li><a href="flypig.jsp"><i class="fa fa-circle-o"></i>点赞维护</a></li>
                    </ul>
                </li>


            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <div>
            <ul id="myTab" class="nav nav-tabs">
                <li class="active"> <a href="#home" data-toggle="tab"> 角色菜单管理 </a> </li>
            </ul>
            <div>
                <div>
                    <div style="margin-left: 3%;margin-top: 2%;">
                        <ul id="tree" class="ztree" style="width:560px; overflow:auto;"></ul>
                    </div>
                    <hr style="height:1px;border:none;border-top:1px solid #555555;" />
                    <div style="width:100%;">
                        <div style="width:60%;margin-left: auto;margin-right: auto;">
                            <div id="submit" style="height:30px;width:50px;float:left;margin-left: 30%;">
                                <button style="height:30px;width:50px;border:none;background: steelblue;color:white;">提交</button>
                            </div>

                            <div id="return" style="height:30px;width:50px;float:left;margin-left: 10%;">
                                <button style="height:30px;width:50px;border:none;background: steelblue;color:white;" onclick="location.href='pfrole.jsp'">返回</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.5
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Other sets of options are available
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- jQuery 2.2.3 -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/bootstrap-treeview.js"></script>
<!-- DataTables -->
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../bootstrap/js/bootstrap-dialog.js"></script>
<script src="../plugins/Ztree/JS/jquery.ztree.all-3.5.min.js"></script>
<script src="../dist/js/demo.js"></script>
<!-- page script -->
<script type="text/javascript">
    var zTree;
    var demoIframe;

//    function addHoverDom(treeId, treeNode) {
//        var sObj = $("#" + treeNode.tId + "_span");
//        if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
////        var addStr = "<span class='button remove' id='removeBtn_" + treeNode.tId
////                + "' title='add node' onfocus='this.blur();'></span>";
////
////        addStr += "<span class='button add' id='addBtn_" + treeNode.tId + "'></span>";
////        addStr += "<span class='button edit' id='editBtn_" + treeNode.tId + "'></span>";
////        sObj.after(addStr);
//        var btn = $("#addBtn_"+treeNode.tId);
//        if (btn) btn.bind("click", function(){
//            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
//            zTree.addNodes(treeNode, {id:(1000 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
//            return false;
//        });
//    };

//    function removeHoverDom(treeId, treeNode) {
//        $("#addBtn_"+treeNode.tId).unbind().remove();
//        $("#removeBtn_"+treeNode.tId).unbind().remove();
//        $("#editBtn_"+treeNode.tId).unbind().remove();
//    };

    var setting = {
        check: {
            enable: true
        },
        view: {
//            addHoverDom: addHoverDom,
//            removeHoverDom: removeHoverDom,
            dblClickExpand: false,
            showLine: true,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable:true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function(treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src",treeNode.file + ".html");
                    return true;
                }
            }
        }
    };

    var zNodes =[
        {id:1, pId:0, name:"平台管理", open:true},
        {id:101, pId:1, name:"平台用户管理", file:"core/standardData"},
        {id:10101, pId:101, name:"新增", file:"core/standardData"},
        {id:10102, pId:101, name:"修改密码", file:"core/standardData"},
        {id:102, pId:1, name:"平台角色管理", file:"core/simpleData"},
        {id:10201, pId:102, name:"新增", file:"core/standardData"},
        {id:10202, pId:102, name:"修改", file:"core/standardData"},
        {id:10203, pId:102, name:"删除", file:"core/standardData"},
        {id:10204, pId:102, name:"禁用", file:"core/standardData"},
        {id:10205, pId:102, name:"分配菜单", file:"core/standardData"},

        {id:2, pId:0, name:"用户管理", open:true},
        {id:201, pId:2, name:"管理员", file:"excheck/checkbox"},
        {id:20101, pId:201, name:"新增", file:"exedit/drag"},
        {id:20102, pId:201, name:"修改", file:"exedit/drag"},
        {id:20103, pId:201, name:"删除", file:"exedit/drag"},
        {id:202, pId:2, name:"微信注册用户", file:"excheck/checkbox_nocheck"},
        {id:20201, pId:202, name:"新增", file:"exedit/drag"},
        {id:20202, pId:202, name:"修改", file:"exedit/drag"},
        {id:20203, pId:202, name:"删除", file:"exedit/drag"},
        {id:203, pId:2, name:"云之家用户", file:"excheck/checkbox_chkDisabled"},
        {id:20301, pId:203, name:"新增", file:"exedit/drag"},
        {id:20302, pId:203, name:"修改", file:"exedit/drag"},
        {id:20303, pId:203, name:"删除", file:"exedit/drag"},

        {id:3, pId:0, name:"意向管理", open:true},
        {id:301, pId:3, name:"需求意向", file:"exedit/drag"},
        {id:30101, pId:301, name:"新增", file:"exedit/drag"},
        {id:30102, pId:301, name:"修改", file:"exedit/drag"},
        {id:30103, pId:301, name:"删除", file:"exedit/drag"},
        {id:30104, pId:301, name:"发布", file:"exedit/drag"},


        {id:4, pId:0, name:"点赞系统", open:true},
        {id:401, pId:4, name:"奖品维护", file:"bigdata/common"},
        {id:40101, pId:401, name:"新增", file:"exedit/drag"},
        {id:40102, pId:401, name:"修改", file:"exedit/drag"},
        {id:40103, pId:401, name:"删除", file:"exedit/drag"},
        {id:402, pId:4, name:"用户维护", file:"bigdata/diy_async"},
        {id:40201, pId:402, name:"新增", file:"exedit/drag"},
        {id:40202, pId:402, name:"修改", file:"exedit/drag"},
        {id:40203, pId:402, name:"删除", file:"exedit/drag"},
        {id:403, pId:4, name:"奖品兑换", file:"bigdata/page"},
        {id:40301, pId:403, name:"新增", file:"exedit/drag"},
        {id:40302, pId:403, name:"修改", file:"exedit/drag"},
        {id:40303, pId:403, name:"删除", file:"exedit/drag"},
        {id:404, pId:4, name:"点赞维护", file:"bigdata/page"},
        {id:40401, pId:404, name:"新增", file:"exedit/drag"},
        {id:40402, pId:404, name:"修改", file:"exedit/drag"},
        {id:40403, pId:404, name:"删除", file:"exedit/drag"}
    ];

    $(document).ready(function(){
        var t = $("#tree");
        t = $.fn.zTree.init(t, setting, zNodes);
        demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        var zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(zTree.getNodeByParam("id", 101));

    });

    function loadReady() {
        var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
                htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
                maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
                h = demoIframe.height() >= maxH ? minH:maxH ;
        if (h < 530) h = 530;
        demoIframe.height(h);
    }

</script>

</body>
</html>
