package Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 25090
 */
public class Insert extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=(String)req.getParameter("id");
        String name=(String)req.getParameter("name");
        String age=(String)req.getParameter("age");
        String sex=(String)req.getParameter("sex");
        String dept=(String)req.getParameter("dept");
        String major=(String)req.getParameter("major");
        String phone=(String)req.getParameter("phone");
        String email=(String)req.getParameter("email");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
