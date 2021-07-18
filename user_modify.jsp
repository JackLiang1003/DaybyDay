<%@ page import="vo.User" %><%--
  Created by IntelliJ IDEA.
  Date: 2021/6/22
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的信息</title>
    <style>
        /*body{*/
        /*    color: white;*/
        /*    text-shadow:0 0 10px;*/
        /*    letter-spacing: 1px;*/
        /*    text-align: center;*/
        /*}*/

        /*a,input[type='submit'],input[type='reset'],input[type='date']{*/
        /*    text-decoration-line: none;*/
        /*    border: white 2px solid;*/
        /*    color: white;*/
        /*    border-radius: 5px;*/
        /*    background-color: transparent;*/
        /*    font-weight: bold;*/
        /*    text-shadow:0 0 10px;*/
        /*    letter-spacing: 1px;*/
        /*    font-weight: bold;*/
        /*}*/

        /*input[type='text'],input[type='password'],input[type='date']{*/
        /*    border: 1px solid #ccc;*/
        /*    padding: 7px 0px;*/
        /*    border-radius: 3px;*/
        /*    padding-left:5px;*/
        /*    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);*/
        /*    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);*/
        /*    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;*/
        /*    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;*/
        /*    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s*/
        /*}*/
        /*input[type='text'],input[type='password'],input[type='date']:focus{*/
        /*    border-color: #66afe9;*/
        /*    outline: 0;*/
        /*    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);*/
        /*    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)*/
        /*}*/

        /*.img{*/
        /*    width: 100%;*/
        /*    height: 100%;*/
        /*    filter: blur(15px);*/
        /*    margin: fill;*/
        /*}*/
        /*.info{*/
        /*    position: fixed;*/
        /*    width: 300px;*/
        /*    height: 260px;*/
        /*    left: calc(50% - 150px);*/
        /*    top: calc(50% - 130px);*/
        /*    text-align: center;*/
        /*    border: pink solid 2px;*/
        /*    border-radius: 10px;*/
        /*    -webkit-box-shadow: 0px 5px 5px 5px gray;*/
        /*}*/

        /*table{*/
        /*    margin: 0 auto;*/
        /*}*/
        /*td{*/
        /*    text-align: center;*/
        /*}*/
        /*h1{*/
        /*    margin-top: 10px;*/
        /*    margin-bottom: 10px;*/
        /*}*/
        /*.msg{*/
        /*    color: red;*/
        /*    font-weight: bold;*/
        /*    font-size: 10px;*/
        /*}*/
    </style>
</head>
<body>
<%
    if(session.getAttribute("user") != null){
        User user = (User) session.getAttribute("user");
%>
<img src="https://img0.baidu.com/it/u=2426850621,4131852550&fm=26&fmt=auto&gp=0.jpg" class="img">
    <div class="info">
        <h3>我的信息</h3>
        <form action="User?order=doModify" method="post">
            <table>
                <tr>
                    <td>id</td>
                    <td><input type="text" name="id" readonly value=<%=user.getUserID()%>></td>
                </tr>
                <tr>
                    <td>用户名</td>
                    <td><input type="text" name="name" value=<%=user.getUsername()%>></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="text" name="gender" value=<%=user.getGender()%>></td>
                </tr>
                <tr>
                    <td>电话号码</td>
                    <td><input type="text" name="tel" value=<%=user.getTelephoneNO()%>></td>
                </tr>
                <tr>
                    <td><a href="User?order=homepage">返回</a></td>
                    <td><input type="submit" value="保存"></td>
                </tr>
            </table>
        </form>
    </div>
<%
    }
    else{
        request.setAttribute("msg", "请先登录！");
        response.setHeader("refresh","0;URL=user_info.jsp");
    }
%>
</body>
</html>
