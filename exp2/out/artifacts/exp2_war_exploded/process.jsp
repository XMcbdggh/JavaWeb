<%@ page import="com.Circle" %>
<%@ page import="com.Rectangle" %>


<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/15
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        if(request.getParameter("shape").equals("circle")){
            double r=Math.random()*100;
            Circle circle=new Circle(r);
            double area=circle.getArea();
            out.print("用户选择的图形是圆形"+"<br>");
            out.print("圆形的半径为"+r+"<br>");
            out.print("圆的面积是："+area);
        }
        else if (request.getParameter("shape").equals("rectangle")){
            double h=Math.random()*100;
            double w=Math.random()*100;
            Rectangle rectangle=new Rectangle(w,h);
            double area=rectangle.getArea();
            out.print("用户选择的图形是矩形"+"<br>");
            out.print("矩形高为"+h+"  宽为"+w+"<br>");
            out.print("矩形的面积为："+area);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
