package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import blog.BlogDao;
import blog.BlogDto;

@WebServlet("/detail")
public class BlogDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String blogId = req.getParameter("blogId");
		
		BlogDao blogDao = new BlogDao();
		BlogDto blogDto = blogDao.getBlog(Integer.parseInt(blogId));
		
		req.setAttribute("blogDetail", blogDto);
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/blogDetail.jsp");
		rd.forward(req, resp);
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String blogId = req.getParameter("blogId");
		
		BlogDao blogDao = new BlogDao();
		BlogDto blogDto = blogDao.getBlog(Integer.parseInt(blogId));
		
		req.setAttribute("blogDetail", blogDto);
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/blogDetail.jsp");
		rd.forward(req, resp);
	}

}
