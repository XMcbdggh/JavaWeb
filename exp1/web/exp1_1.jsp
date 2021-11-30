<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/3
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="sub.jsp"/>
<html>
<head>
    <title>JSP测试</title>
</head>
<body>
<%
    int i,sum=0;
    for(i=1;i<=100;i++)
        sum+=i;
%>
<P>整数1到100的累加和为：
        <%= sum %>
    <br/>
        <%
           //当前日期时间
           Date date=new Date();
           //格式化时间
           SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
           String time=format.format(date);
        %>
        <%=time %>
</body>

</html>
