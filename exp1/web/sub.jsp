<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/3
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%
    java.util.Date date=new java.util.Date();
    String date_cn ="";

    String dateStr = "";

    switch(date.getDay())

    {

        case 0:date_cn ="日"; break;

        case 1:date_cn ="一"; break;

        case 2:date_cn ="二"; break;

        case 3:date_cn ="三"; break;

        case 4:date_cn ="四"; break;

        case 5:date_cn ="五"; break;

        case 6:date_cn ="六"; break;

    }

    dateStr = (1900+date.getYear()) + "年" + (date.getMonth()+1) + "月" + date.getDate() + "日(星期" + date_cn + ")";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
<%=dateStr%>

</body>
</html>
