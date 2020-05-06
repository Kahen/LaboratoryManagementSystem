<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="kahen" uri="http://com/common/" %>
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
    <!-- 列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">实验室管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <a href="${pageContext.request.contextPath }/lab/addlab.action" class="btn btn-primary">新建</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">实验室信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>实验室编号</th>
                            <th>实验室号</th>
                            <th>实验室名称</th>
                            <th>实验室地址</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.lcode}</td>
                                <td>${row.labid}</td>
                                <td>${row.labname}</td>
                                <td>${row.address}</td>
                                <td>${row.labstatus}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#EditLabDialog" onclick="editLab(${row.lcode})">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs" onclick="deleteLab(${row.lcode})">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <kahen:page url="${pageContext.request.contextPath }/lab/list.action"/>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</div>
<!-- 修改实验室模态框 -->
<div class="modal fade" id="EditLabDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改实验室信息</h4>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <form id="edit_lab_form" class="form-group">
                            <table class="col-sm-10">
                                <tr><label for="lcode"></label><input type="hidden" class="form-control" id="lcode"
                                                                      placeholder="实验室编号" name="lcode"/>
                                </tr>
                                <tr><label for="labid">实验室号</label><input type=text" class="form-control" id="labid"
                                                                          placeholder="实验室号" name="labid"/>
                                </tr>
                                <tr><label for="labname">实验室名</label><input type="text" class="form-control"
                                                                            id="labname" placeholder="实验室名"
                                                                            name="labname"/></tr>
                                <tr><label for="labstatus"></label><input type="hidden" class="form-control"
                                                                          id="labstatus" placeholder="实验室状态"
                                                                          name="labstatus"/></tr>
                                <tr><label for="apler"></label><input type="hidden" class="form-control"
                                                                      id="apler" placeholder="实验室状态"
                                                                      name="apler"/></tr>
                                <tr><label for="address">实验室地址</label><input type="text" class="form-control"
                                                                             id="address" placeholder="实验室地址"
                                                                             name="address"/></tr>
                            </table>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" onclick="updateLab()">保存修改</button>
                            </div>
                        </form>
                    </div>
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
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<script type="text/javascript">
    function editLab(lcode) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>lab/findlabbylcode.action",
            data: {"lcode": lcode},
            success: function (data) {
                $("#lcode").val(data.lcode);
                $("#labid").val(data.labid);
                $("#labname").val(data.labname);
                $("#labstatus").val(data.labstatus);
                $("#apler").val(data.apler);
                $("#address").val(data.address);
            }
        });
    }

    function updateLab() {
        $.post("<%=basePath%>lab/updatelab.action", $("#edit_lab_form").serialize(), function (data) {
            if (data == "OK") {
                alert("实验室信息更新成功！");
                window.location.reload();
            } else {
                alert("实验室信息更新失败！");
                window.location.reload();
            }
        });
    }

    // 删除用户
    function deleteLab(lcode) {
        if (confirm('确实要删除该实验室吗?')) {
            $.post("<%=basePath%>lab/deletelab.action", {"lcode": lcode},
                function (data) {
                    if (data == "OK") {
                        alert("实验室删除成功！");
                        window.location.reload();
                    } else {
                        alert("实验室删除失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>
</body>
</html>