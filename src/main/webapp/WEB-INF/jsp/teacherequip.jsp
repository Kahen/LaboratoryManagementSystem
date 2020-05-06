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
            <a class="navbar-brand" href="<%=basePath%>teacher/list.action">实验室管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
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
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i>实验室管理</a>
                        <ul style="margin: 10px"><a href="<%=basePath%>teacher/list.action"><i
                                class="fa fa-gear fa-square"></i>申请管理</a></ul>
                    </li>
                    <li class="dropdown-toggle">
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i>基础管理</a>
                        <ul style="margin: 10px"><a href="<%=basePath%>equip/teacherlist.action"><i
                                class="fa fa-gear fa-square"></i> 材料管理</a></ul>
                        <ul style="margin: 10px"><a href="<%=basePath%>equip/aplresult.action"><i
                                class="fa fa-gear fa-square"></i> 材料申请成功记录</a></ul>
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
                <h1 class="page-header">材料管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">材料信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>材料编号</th>
                            <th>材料号</th>
                            <th>材料名称</th>
                            <th>材料数量</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.ecode}</td>
                                <td>${row.eid}</td>
                                <td>${row.ename}</td>
                                <td>${row.enumber}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#EquipEditDialog" onclick="subEquip(${row.ecode})">申请</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <kahen:page url="${pageContext.request.contextPath }/equip/teacherlist.action"/>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</div>
<!-- 申请材料模态框 -->
<div class="modal fade" id="EquipEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">申请材料信息</h4>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <form id="edit_equip_form" class="form-group">
                            <table class="col-sm-10">
                                <tr><label for="ecode"></label><input type="hidden" class="form-control" id="ecode"
                                                                      placeholder="编号" name="ecode"/>
                                </tr>
                                <tr><label for="eid">材料号</label><input type="text" class="form-control" id="eid"
                                                                       placeholder="材料号" name="eid"/>
                                </tr>
                                <tr><label for="ename">材料名称</label><input type="text" class="form-control"
                                                                          id="ename" placeholder="材料名称"
                                                                          name="ename"/></tr>
                                <tr><label for="enumber">材料数</label><input type="text" class="form-control"
                                                                           id="enumber" placeholder="材料数"
                                                                           name="enumber"
                                                                           onkeyup="value=value.replace(/[^1234567890]+/g,'')"/>
                                </tr>
                            </table>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" onclick="uploadEquip()">上传申请</button>
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
    function subEquip(ecode) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>equip/findequipbyecode.action",
            data: {"ecode": ecode},
            success: function (data) {
                $("#ecode").val(data.ecode);
                $("#eid").val(data.eid);
                $("#ename").val(data.ename);
            }
        });
    }

    // 上传申请材料
    function uploadEquip() {
        var params = {};
        params.eid = $("#eid").val();
        params.ename = $("#ename").val();
        params.enumber = $("#enumber").val();
        $.ajax({
            type: "POST",
            url: "<%=basePath%>equip/uploadequip.action",
            data: params,
            async: false,
            dataType: "json",
            success: function (data) {
                if (data.result == "OK") {
                    alert("材料申请成功！");
                    window.location.reload();

                } else if (data.result == "ERROR") {
                    alert("材料申请出错");
                    window.location.reload();

                } else {
                    alert("材料创建失败，请检查材料是否充足！");
                    window.location.reload();

                }
            },
            error: function (data) {
                alert("出现异常，异常原因【" + data + "】!");
                window.location.reload();

            }
        });
    }
</script>
</body>
</html>