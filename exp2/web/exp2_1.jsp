<%@ page import="javafx.scene.shape.Circle" %><%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/10
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String radius=request.getParameter("radius");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  method="get">

    <p>请输入圆的半径：
        <input name="radius" id="radius">
        <input type="submit" value="提交">
    </p>
</form>
<jsp:include page="computeAreaOfCircle.jsp">
    <jsp:param name="raduis" value="<%=radius%>"/>
</jsp:include>
</body>
</html>
