package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import blog.BlogDao;

@WebServlet("/write")
public class WriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/write.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String userName = (String) session.getAttribute("userName");
		if (userName == null) {
			userName = "비회원";
		}
	
		String title = req.getParameter("title");
		if (title == null) {
			title  = "null";
		}
		String content = req.getParameter("content");
		if (content == null) {
			content = "null";
			
		}
		BlogDao blogDao = new BlogDao();	
		int result = blogDao.write(title, userName, content);
		if(result == -1) {
			RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/write.jsp");
			rd.forward(req, resp);
		}else {
		RequestDispatcher rd = req.getRequestDispatcher("blog");
		rd.forward(req, resp);
		}
		
	}

}
