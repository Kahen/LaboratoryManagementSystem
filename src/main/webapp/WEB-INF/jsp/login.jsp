<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>登录页面</title>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8">
    <link href="${pageContext.request.contextPath}/css/style.css"
          type=text/css rel=stylesheet>
    <link href="${pageContext.request.contextPath}/css/lims.css"
          type=text/css rel=stylesheet>
    <script src=
                    "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
    </script>
    <meta content="MSHTML 6.00.2600.0" name=GENERATOR>
    <script>
        // 判断是登录账号和密码是否为空
        function check() {
            var id = $("#id").val();
            var password = $("#password").val();
            var userType = $("#userType").val();
            if (id == "" || password == "" || userType == "") {
                $("#message").text("账号或身份密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body leftmargin="0" marginheight="0" marginwidth="0" topmargin="0" bgcolor="#fffacd">
<div align="center">
    <table border="0" cellspacing="0" cellpadding="0" id="table1">
        <tr>
            <td height="93"></td>
            <td></td>
        </tr>
        <td class="login.msg" width="400" align="center">
            <!-- margin:0px auto;控制当前标签居中 -->
            <fieldset style="width: auto;margin: 0px auto;">
                <legend>
                    <font style="font-size: 15px" face="宋体">
                        欢迎使用实验室管理系统
                    </font>
                </legend>
                <span style="color: red; ">
                    <%--提示信息--%>
                    <span id="message">${msg}</span>
                </span>
                <%--提交后的位置/web-inf/jsp/.jsp--%>
                <form action="${pageContext.request.contextPath }/login.action"
                      method="post" onsubmit="return check()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
                    账&nbsp;号:<input id="id" type="text" name="id"/>
                    <br/><br/>
                    密&nbsp;码:<input id="password" type="password" name="password"/>
                    <br/><br/>
                    身&nbsp;份:<select size="1" name="userType" id="userType">
                    <option value="学生">学生</option>
                    <option value="教师">教师</option>
                    <option selected value="管理员">管理员</option>
                </select>
                    <br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="text-align: center;"><input type="submit" value="登录"/></div>
                </form>
            </fieldset>
        </td>
    </table>
</div>
</body>
</html>

