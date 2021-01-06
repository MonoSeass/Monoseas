<%--
  Created by IntelliJ IDEA.
  User: shinelon
  Date: 2020/12/4
  Time: 上午 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我要疯了</title>
</head>
<body>
    <form action="add" method="post">
        <table align="center" border="1">
            <tr align="center">
                <td colspan="4">添加</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="t_name"></td>
            </tr>
            <tr>
                <td>身份证</td>
                <td><input type="text" name="t_idcard"></td>
            </tr>
            <tr>
                <td>生日</td>
                <td><input type="text" name=""></td>
            </tr>
            <tr>
                <td>账号</td>
                <td><input type="text" name="t_loginName"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="text" name="t_pwd"></td>
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
</html>
