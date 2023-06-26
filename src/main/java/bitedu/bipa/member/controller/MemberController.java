package bitedu.bipa.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitedu.bipa.member.vo.TestVO;

public class MemberController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("hello");
		String userId = req.getParameter("userId");
		String pwd = req.getParameter("pwd1");
		String name = req.getParameter("userName");
		String zipCode = req.getParameter("zipCode");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String day = req.getParameter("day");
		String gender = req.getParameter("gender");
		String[] interests = req.getParameterValues("interests");
		String introduce = req.getParameter("introduce");
		
		TestVO test = new TestVO(userId, pwd, name, zipCode, addr1, addr2,
				year,month, day, gender, interests, introduce);
		req.setAttribute("test", test);
//		resp.sendRedirect("member/view_update.jsp?user_id="+userId);
//		resp.sendRedirect("member/view_update.jsp"); //새로운 req가 생성되서 날라가기 때문에 여기서 매개변수로 받은 req는 적용되지 않음
		RequestDispatcher rd= req.getRequestDispatcher("./member/view_update.jsp"); // 서블릿의 주소로 이동됨
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		this.doGet(req, resp);
	}
}
