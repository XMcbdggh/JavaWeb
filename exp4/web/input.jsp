<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/24
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form >
        <p>请选择要处理的图形:
            <select name="shape">
                <option value="Circle" >圆形</option>
                <option value="Rectangle" >矩形</option>
            </select>
            &nbsp;&nbsp;
            <input type="submit" value="确定">
        </p>
    </form>
    <%
        String shape=null;
        if (request.getParameter("shape")!=null){
            shape = request.getParameter("shape");
            if("Rectangle".equals(shape)){
    %>
    <form method="post" action="Computer">
        <p>请输入矩形的宽：<input name="width" type="text"><br>
            请输入矩形的高：<input name="height" type="text"><br>
            <input name="shape" value="Rectangle" hidden>
            <input type="submit" name="method" value="计算面积">&nbsp;
            <input type="submit" name="method" value="计算周长">
        </p>
    </form>
    <%
    }
    else if ("Circle".equals(shape)){
    %>
    <form method="post" action="Computer">
        <p>请输入圆的半径：
            <input name="shape" value="Circle" hidden>
            <input name="radius" type="text"><br>
            <input type="submit" name="method" value="计算面积">&nbsp;
            <input type="submit" name="method" value="计算周长">
        </p>
    </form>
    <%
        }
    else {
        out.print("错误！！");
        }
        }
    %>
</div>
</body>
</html>
