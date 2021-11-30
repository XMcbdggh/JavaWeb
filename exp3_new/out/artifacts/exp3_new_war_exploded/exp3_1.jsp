<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/29
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //设置请求报文的字符编码为UTF-8，避免中文字符发生乱码
    request.setCharacterEncoding("utf-8");
%>
客户端的IP地址为：<%=request.getRemoteAddr()%><br>
客户端的主机名为：<%=request.getRemoteHost()%><br>
客户端的端口号为：<%=request.getRemotePort()%><br>
客户端使用的协议为：<%=request.getScheme()%><br>
客户端提交信息的页面地址：<%=request.getServletPath()%><br>
服务器的名称为：<%=request.getServerName()%><br>
服务器的端口号为：<%=request.getServerPort()%><br>
采用的信息编码方式为：<%=request.getCharacterEncoding()%><br>
HTTP文件头中的User-Agent的值为：<%=request.getHeader("User-Agent")%><br>
响应页面的编码方式为：<%=response.getCharacterEncoding()%><br>
响应状态码值为：<%=response.getStatus()%><br>
响应缓冲区大小为：<%=response.getBufferSize()%><br>
本页面对应的Servlet为：<%=page.getClass()%><br>
本次会话的id号为：<%=session.getId()%><br>
Web应用程序的实际路径为：<%=application.getRealPath("/")%><br>
</body>
</html>
