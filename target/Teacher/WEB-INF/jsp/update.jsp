<%--
  Created by IntelliJ IDEA.
  User: shinelon
  Date: 2020/12/4
  Time: 上午 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updForm" action="upd?id=${id}" method="post">
    <table align="center" border="1">
        <tr align="center">
            <td colspan="4">修改</td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="t_name" id="t_name"></td>
        </tr>
        <tr>
            <td>身份证</td>
            <td><input type="text" name="t_idcard" id="t_idcard"></td>
        </tr>
        <tr>
            <td>生日</td>
            <td><input type="text" name="" id="t_birthday"></td>
        </tr>
        <tr>
            <td>账号</td>
            <td><input type="text" name="t_loginName" id="t_loginName"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="t_pwd" id="t_pwd"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="radio" name="sex" value="1">女
                <input type="radio" name="sex" value="2">男
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
<script src="${pageContext.request.contextPath}/static/jquery-1.12.4.min.js"></script>
<script>
    $(function () {
        //通过jquery获取地址栏参数
        var id = $("#updForm").attr("action").substring($("#updForm").attr("action").indexOf("id=")+3)
        $.post("getOne",{"id":id},getOne,"JSON");
        function getOne(data) {
            $("#t_name").val(data.t_name);
            $("#t_idcard").val(data.t_idcard);
            $("#t_loginName").val(data.t_loginName);
            $("#t_pwd").val(data.t_pwd);
            $("#t_birthday").val(data.t_birthday);
            if (data.sex.s_id == 1){
                $("#updForm :radio").eq(0).attr("checked","checked")
            }else{
                $("#updForm :radio").eq(1).attr("checked","checked")
            }
        }
    })
</script>
</html>
