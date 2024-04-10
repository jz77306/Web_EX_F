package Net.Huawei.servlet;

import Net.Huawei.Bean.User;
import Net.Huawei.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(name="LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("UserName");
        String password = request.getParameter("PassWord");

        UserService us = new UserService();
        User user = us.Login(username, password);

        if(user != null)
        {
            response.sendRedirect("homepage.jsp?username=" + URLEncoder.encode(username, "utf-8"));
        }
        else
        {
            response.sendRedirect("failure.jsp?username=" + URLEncoder.encode(username, "utf-8"));
        }
    }

    protected void goGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
