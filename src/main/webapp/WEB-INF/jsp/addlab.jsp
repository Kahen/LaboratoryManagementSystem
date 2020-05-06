<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="kahen" uri="http://com/common/" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>实验室管理系统</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"/>
    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet"/>
    <!-- DataTables CSS -->
    <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/lims.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="<%=basePath%>admin/list.action">实验室管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 邮件通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>李老师</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
                            </div>
                            <div>明天需要用实验室2，请审核通过一下...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看全部消息</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 邮件通知 end -->
            <!--审核通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-tasks fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>审核 1</strong>
                                    <span class="pull-right text-muted">未审批</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success"
                                         role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">未审批</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>审批 2</strong>
                                    <span class="pull-right text-muted">未审批</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar"
                                         aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 20%">
                                        <span class="sr-only">未审批</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有审批</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 任务通知 end -->
            <!-- 消息通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> 新回复
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> 新消息
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> 服务器重启
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有提醒</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>
                        用户：${USER_SESSION.username}
                    </a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath }/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul>
        <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="dropdown-toggle">
                        <a href="#" class="active">
                            <i class="fa fa-edit fa-fw"></i> 用户管理</a>
                        <ul style="margin: 10px"><a href="${pageContext.request.contextPath }/admin/list.action"><i
                                class="fa fa-gear fa-square"></i> 信息管理</a></ul>
                        <ul style="margin: 10px"><a href="${pageContext.request.contextPath }/admin/adduser.action"><i
                                class="fa fa-gear fa-square"></i> 添加用户</a></ul>
                    </li>
                    <li class="dropdown-toggle">
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i>实验室管理</a>
                        <ul style="margin: 10px"><a href="<%=basePath%>lab/list.action"><i
                                class="fa fa-gear fa-square"></i>信息管理</a></ul>
                        <ul style="margin: 10px"><a href="<%=basePath%>apllab/list.action"><i
                                class="fa fa-gear fa-square"></i>申请管理</a></ul>
                    </li>
                    <li class="dropdown-toggle">
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i>基础管理</a>
                        <ul style="margin: 10px"><a href="<%=basePath%>equip/list.action"><i
                                class="fa fa-gear fa-square"></i> 材料管理</a></ul>
                        <ul style="margin: 10px"><a href="<%=basePath%>equipapl/list.action"><i
                                class="fa fa-gear fa-square"></i> 申请管理</a></ul>

                        <ul style="margin: 10px"><a href="<%=basePath%>equiplog/list.action"><i
                                class="fa fa-gear fa-square"></i> 材料使用记录</a></ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧显示列表部分 end-->
    </nav>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">添加实验室</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <form id="new_lab_form" class="form-group">
                        <table class="col-sm-10">
                            <%--                            <tr>--%>
                            <%--                                <label for="lcode"></label><input type="hidden" id="lcode" name="lcode"/>--%>
                            <%--                            </tr>--%>
                            <tr><label for="labid">实验室号</label><input type="text" class="form-control" id="labid"
                                                                      placeholder="实验室号" name="labid"/>
                            </tr>
                            <tr><label for="labname">实验室名</label><input type="text" class="form-control" id="labname"
                                                                        placeholder="实验室名" name="labid"/>
                            </tr>
                            <tr><label for="address">实验室地址</label><input type="text" class="form-control"
                                                                         id="address" placeholder="实验室地址"
                                                                         name="address"/></tr>
                            <tr><label for="labstatus"></label><input type="hidden" class="form-control"
                                                                      id="labstatus" placeholder="实验室状态"
                                                                      name="labstatus" value="空闲中"/></tr>
                            <tr><label for="apltime"></label><input type="hidden" class="form-control"
                                                                    id="apltime"
                                                                    name="apltime" value="now()"/></tr>
                        </table>
                        <div class="modal-footer">
                            <a href="${pageContext.request.contextPath }/lab/list.action" class="btn btn-default">返回
                            </a>
                            <a>
                                <button class="btn btn-primary" type="submit" onclick="createLab()">创建</button>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- admin Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<script type="text/javascript">
    // 创建用户
    function createLab() {
        var params = {};
        // params.lcode=$("#lcode").val();
        params.labid = $("#labid").val();
        params.labname = $("#labname").val();
        params.address = $("#address").val();
        params.labstatus = $("#labstatus").val();
        // params.apltime=$("#apltime").val();
        $.ajax({
            type: "POST",
            url: "<%=basePath%>lab/createlab.action",
            data: params,
            async: false,
            dataType: "json",
            success: function (data) {
                if (data.result == "OK") {
                    alert("实验室创建成功！");
                    window.location.reload();

                } else if (data.result == "ERROR") {
                    alert("实验室创建出错，请检查实验室是否重复");
                    window.location.reload();

                } else {
                    alert("实验室创建失败");
                    window.location.reload();

                }
            },
            error: function (data) {
                alert("出现异常，异常原因【" + data + "】!");
                window.location.reload();

            }
        });
    }</script>
</body>
</html>
