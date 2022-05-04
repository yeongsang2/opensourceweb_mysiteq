package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import guest.GuestDao;
import guest.GuestDto;
@WebServlet("/guestbook")
public class GuestBookController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GuestDao guestDao = new GuestDao();
		ArrayList <GuestDto> guestList= new ArrayList<GuestDto>();
		guestList = guestDao.getList();
		req.setAttribute("guestList", guestList);
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/guestBook.jsp");
		rd.forward(req, resp);
		
	} 

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String guestName = (String)req.getParameter("guestName");
		String guestContent = (String)req.getParameter("guestContent");
		GuestDao guestDao = new GuestDao();
		
		int result= guestDao.write(guestName, guestContent);
		if(result == -1) {
			RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/guestBook.jsp");
			rd.forward(req, resp);
		}
		ArrayList <GuestDto> guestList= new ArrayList<GuestDto>();
		guestList = guestDao.getList();
		req.setAttribute("guestList", guestList);
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/view/guestBook.jsp");
		rd.forward(req, resp);
		
	}

}
