<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/15
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<form >
    <p>
        请选择一个图形：
        <input type="radio"  name="shape" value="circle">圆形
        <input type="radio" name="shape" value="rectangle">矩形
        <input type="submit" value="提交">
    </p>
</form>
<%
    String shape=request.getParameter("shape");
%>
<%
if(shape!=null)
{
    %>
<jsp:forward page="process.jsp">
    <jsp:param name="xiaoming" value="<%=shape%>"/>
</jsp:forward>
<%
}
%>

</body>
</html>
