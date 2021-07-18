<%--
  Created by IntelliJ IDEA.
  Date: 2021/6/22
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录页面</title>
    <style>
        body{
            color: white;
            text-shadow:0 0 10px;
            letter-spacing: 1px;
            text-align: center;
        }

        a,input[type='submit'],input[type='reset']{
            text-decoration-line: none;
            border: white 2px solid;
            color: white;
            border-radius: 5px;
            background-color: transparent;
            font-weight: bold;
            text-shadow:0 0 10px;
            letter-spacing: 1px;
            font-weight: bold;
        }

        input[type='text'],input[type='password']{
            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 3px;
            padding-left:5px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        input[type='text'],input[type='password']:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }

        .img{
            width: 100%;
            height: 100%;
            filter: blur(15px);
            margin: fill;
        }
        .login{
            position: fixed;
            width: 300px;
            height: 180px;
            left: calc(50% - 150px);
            top: calc(50% - 90px);
            text-align: center;
            border: pink solid 2px;
            border-radius: 10px;
            -webkit-box-shadow: 0px 5px 5px 5px gray;
        }


        table{
            margin: 0 auto;
        }
        td{
            text-align: center;
        }
        h1{
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .msg{
            color: red;
            font-weight: bold;
            font-size: 10px;
        }
    </style>
</head>
<body>
    <img src="https://img0.baidu.com/it/u=2426850621,4131852550&fm=26&fmt=auto&gp=0.jpg" class="img">
    <div class="login">
        <h1>用户登录</h1>
        <form action="User?order=loading" method="post" onsubmit="document.getElementById('pwd').value = hex_md5(document.getElementById('pwd').value).toString(); return true;">
            <table>
                <%
                    if(request.getAttribute("err")!=null){
                %>
                <td colspan="2" class="msg"><%=request.getAttribute("err")%></td>
                <%
                    }
                %>
                <tr>
                    <td style="font-weight: bold">
                        用户名
                    </td>
                    <td>
                        <input type="text" name="userID" required>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold">
                        密码
                    </td>
                    <td>
                        <input type="password" name="password" id="pwd" required>
                    </td>
                </tr>

                <tr>
                    <td><a href="user_register.jsp">点击注册用户</a></td>
                    <td>
                        <input type="reset" value="重置">
                        <input type="submit" value="登录">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
