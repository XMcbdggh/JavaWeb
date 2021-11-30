<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/10
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    class Circle
    {
        private final static double PI=3.1415;
        private double radius;
        public Circle()
        {
            radius=1.0;
        }
        public Circle(double radius)
        {
            this.radius=radius;
        }
        public double getRadius()
        {
            return radius;
        }
        public void setRadius(double radius)
        {
            this.radius=radius;
        }
        public double getArea()
        {
            return PI*radius*radius;
        }
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(request.getParameter("radius")!=null){
        try {
            double r=Double.parseDouble(request.getParameter("radius"));
            Circle c=new Circle(r);
            double area=c.getArea();
            out.print("半径为"+r+"的圆的面积是："+area);
        } catch (Exception e) {
            e.printStackTrace();
            out.print("输入错误，请重新输入！！！");
        }
    }

%>
</body>
</html>
