package controller;

import blog.BlogDao;
import blog.BlogDto;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.util.ArrayList;

@WebServlet("/blog")
public class BlogListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BlogDao blogDao = new BlogDao();
		ArrayList <BlogDto> blogList = new ArrayList<BlogDto>();
		blogList = blogDao.getList();
		req.setAttribute("blogList", blogList);
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/blog.jsp");
		rd.forward(req, resp);
	}

}
