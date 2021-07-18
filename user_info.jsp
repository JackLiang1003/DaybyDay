<%--
  Created by IntelliJ IDEA.
  Date: 2021/6/22
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息提示</title>
    <style>
        .alert{
            position: fixed;
            width: 200px;
            height: 80px;
            left: calc(50% - 100px);
            top: calc(50% - 40px);
            text-align: center;
            border: pink solid 2px;
            border-radius: 10px;
            -webkit-box-shadow: 0px 5px 5px 5px gray;
        }
        body{
            color: white;
            text-shadow:0 0 10px;
            letter-spacing: 1px;
            text-align: center;
        }

        a{
            color: white;
            text-shadow:0 0 10px;
            letter-spacing: 1px;
        }

        .img{
            width: 100%;
            height: 100%;
            filter: blur(15px);
            margin: fill;
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
    <div class="alert">
        <%
            if(request.getAttribute("msg")!=null){
        %>
        <p><%=request.getAttribute("msg")%></p>
        <%
            }
        %>
        <%
            response.setHeader("refresh","2;URL=User");
        %>
        两秒钟后跳转页面，如果没有跳转点击<a href="User">这里!</a>
    </div>
</body>
</html>
