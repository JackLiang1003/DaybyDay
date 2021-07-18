<%@ page import="vo.User" %>
<%@ page import="impl.UserDaoImpl" %>
<%@ page import="factory.Factory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="vo.Project" %>
<%--
  Created by IntelliJ IDEA.
  Date: 2021/6/22
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户页面</title>
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
        .content{
            position: fixed;
            width: 800px;
            height: 400px;
            left: calc(50% - 400px);
            top: calc(50% - 200px);
            text-align: center;
            border: pink solid 2px;
            border-radius: 10px;
            -webkit-box-shadow: 0px 5px 5px 5px gray;
        }
        .mine{
            width: 750px;
            height: 160px;
            border: solid 2px white;
            border-radius: 10px;
            margin: 0 auto;
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
        .user{
            margin-left: 10px;
        }
        .title{
            width: 730px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%
    if(session.getAttribute("user") != null){
        User user = (User) session.getAttribute("user");
%>
    <img src="https://img0.baidu.com/it/u=2426850621,4131852550&fm=26&fmt=auto&gp=0.jpg" class="img">
    <div class="content">
        <h2>用户协同工作平台</h2>
        <table class="user">
            <tr>
                <td><%=user.getUserID()%></td>
                <td><%=user.getUsername()%></td>
                <td><%=user.getGender()%></td>
                <td><%=user.getTelephoneNO()%></td>
                <td><a href="User?order=logoff">退出</a></td>
            </tr>
        </table>
        <table class="title">
            <tr>
                <td style="width: 33%"><a href="User?order=modify">修改信息</a></td>
                <td style="width: 33%"><a href="User?order=homepage">查看我的项目</a></td>
                <td style="width: 33%"><a href="project_create.jsp">创建项目</a> </td>
            </tr>
        </table>
        <h3>我参加的:</h3>
        <table class="title">
            <tr>
                <td width="14%">项目ID</td>
                <td width="14%">项目名</td>
                <td width="14%">创建人</td>
                <td width="14%">创建时间</td>
                <td width="14%">结束时间</td>
                <td width="14%">状态</td>
                <td>备注</td>
            </tr>
        </table>
        <div class="mine">
            <table class="title">
        <%
            List all = Factory.getUserDaoImplInstance().findMine((User) session.getAttribute("user"));
            int i = 0;
            if(all != null){
                Iterator iterator = all.iterator();
                while (iterator.hasNext()){
                    i++;
                    Project project = (Project) iterator.next();
        %>
                <tr>
                    <td width="14%"><%=project.getPrjID()%></td>
                    <td width="14%"><%=project.getPrjTitle()%></td>
                    <td width="14%"><%=project.getUserID()%></td>
                    <td width="14%"><%=project.getPrjCreateDate()%></td>
                    <td width="14%"><%=project.getPrjEndDate()%></td>
                    <td width="14%"><%=project.getPrjStatus()%></td>
                    <td><%=project.getPrjRemark()%></td>
                </tr>
        <%
                }
            }
            if(i==0){
        %>
                <tr>
                    <td colspan="7">没有任何内容!</td>
                </tr>
        <%
            }
        %>
            </table>
        </div>
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
