<%--
  Created by IntelliJ IDEA.
  User: shinelon
  Date: 2020/12/2
  Time: 上午 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<body>
<h2>Hello World!!</h2>
    <table align="center" border="1">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>身份证</th>
            <th>生日</th>
            <th>账号</th>
            <th>密码</th>
            <th>性别</th>
            <th>操作</th>
        </tr>
        <%--分页数据--%>
        <tbody id="tbody1" >

        </tbody>
        <%--分页点击--%>
        <tr align="center">
            <td colspan="10" id="page"></td>
        </tr>

        <tr align="center">
            <td colspan="8">
                <a href="add.html">添加</a>
            </td>
        </tr>
    </table>
</body>
<script src="${pageContext.request.contextPath}/static/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    $(function (){
        Load(1);
        //加载当且页面数据
        function Load(pageNum){
            //显示分页信息
            $.post("getPage",{"pageNum":pageNum},getPage,"JSON")
            function getPage(data){
                $(data.list).each(function (){
                    var $tr = $("<tr align='center'></tr>");
                    $tr.append("<td>"+this.t_id+"</td>");
                    $tr.append("<td>"+this.t_name+"</td>");
                    $tr.append("<td>"+this.t_idcard+"</td>");
                    $tr.append("<td>"+this.t_birthday+"</td>");
                    $tr.append("<td>"+this.t_loginName+"</td>");
                    $tr.append("<td>"+this.t_pwd+"</td>");
                    $tr.append("<td>"+this.sex.s_sex+"</td>");
                    $tr.append("<td><a href=update.html?id="+this.t_id+" style='text-decoration:none'>修改</a> <a href='javascript:void(0)' value='"+this.t_id+"' class='del' style='text-decoration:none'>删除</a></td>");
                    $("#tbody1").append($tr);
                })
               /* REST风格:之前传递参数通过?后面携带参数
               Representational State Transfer 表述型状态转移
               直接通过/传递参数
               /user/del?id=12 => /user/del/12
               虽然REST风格,传递及页面信息比较清晰,但是会有中文乱码的问题 一般开发中,传统与REST风格混搭
               */

                //删除数据
                $(".del").click(function (){
                    $.get("del/"+$(this).attr("value"),del);
                    function del(data){
                        if (data != 0){
                            alert("删除成功")
                            $("#tbody1").html("");
                            $("#page").html("");
                            Load(pageNum)
                        }else{
                            alert("删除失败")
                        }
                    }
                })

                //分页点击上一页下一页
                $("#page").append("<span>当前页["+data.pageNum+"/"+data.pages+"]</span>");
                if(data.pageindex > 1){
                    $("#page").append("<a class='pageclick' value='1' href='javascript:void(0)'>首页</a> ");
                    $("#page").append("<a class='pageclick' value='"+(data.pageNum-1)+"' href='javascript:void(0)'>上一页</a>");
                }
                if(data.pageindex < data.pagecount){
                    $("#page").append("<a class='pageclick' value='"+(data.pageNum+1)+"'  href='javascript:void(0)'>下一页</a> ");
                    $("#page").append("<a class='pageclick' value='"+data.pages+"' href='javascript:void(0)'>尾页</a>");
                }
                $(".pageclick").click(function (){
                    $("#tbody1").html("");
                    $("#page").html("");
                    Load($(this).attr("value"));
                })
            }

        }
    })
</script>
</html>
