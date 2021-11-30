<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/10
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    long Factorial(int n){
        for (int i = n-1; i > 0; i--) {
            n=i*n;
        }
        return n;
    };
%>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>正整数1~10的阶乘为：</h1>
<%
    for (int i = 1; i <= 10; i++) {
        out.print(i+"! ="+Factorial(i)+"<br>");
    }
%>
</body>
</html>
