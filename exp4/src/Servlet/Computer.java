package Servlet;

import shape.Circle;
import shape.Rectangle;
import shape.Shape;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author 25090
 */
@WebServlet("/Computer")
public class Computer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("utf-8");
        Shape shape = null;
        String method=(String)req.getParameter("method");
        if ("计算面积".equals(method)){
            getArea(req,resp,shape);

        }
        else if("计算周长".equals(method)){
            getPerimeter(req,resp,shape);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    public void getArea(HttpServletRequest request,HttpServletResponse response,Shape shape) throws IOException{
//        response.setContentType("text/html; charset=utf-8");
        String shape1=null;
        PrintWriter printWriter =response.getWriter();
        shape1 = (String)request.getParameter("shape");
        if ("Circle".equals(shape1)){
            String radius = request.getParameter("radius");
            shape = new Circle(Double.parseDouble(radius));
            String area=String.valueOf(shape.getArea());
            printWriter.write("半径为"+radius+"的圆形的面积是"+area);
        }
        else if ("Rectangle".equals(shape1)){
            String width= request.getParameter("width");
            String height= request.getParameter("height");
            shape =new Rectangle(Double.parseDouble(width),Double.parseDouble(height));
            String area=String.valueOf(shape.getArea());
            printWriter.write("宽为"+width+"高为"+height+"的矩形的面积是"+area);
        }
        else{
            printWriter.write("GetArea报错！");
        }

    }
    public void getPerimeter(HttpServletRequest request,HttpServletResponse response,Shape shape) throws IOException{
//        response.setContentType("text/html; charset=utf-8");
        String shape1=null;
        PrintWriter printWriter =response.getWriter();
        shape1 = (String)request.getParameter("shape");
        if ("Circle".equals(shape1)){
            String radius = request.getParameter("radius");
            shape = new Circle(Double.parseDouble(radius));
            String perimeter=String.valueOf(shape.getPerimeter());
            printWriter.write("半径为"+radius+"的圆形的周长是"+perimeter);
        }
        else if ("Rectangle".equals(shape1)){
            String width= request.getParameter("width");
            String height= request.getParameter("height");
            shape =new Rectangle(Double.parseDouble(width),Double.parseDouble(height));
            String perimeter=String.valueOf(shape.getPerimeter());
            printWriter.write("宽为"+width+"高为"+height+"的矩形的周长是"+perimeter);
        }
        else{
            printWriter.write("GetPerimeter报错！");
        }
    }
}
