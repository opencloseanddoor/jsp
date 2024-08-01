package com.marondal.servle.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/user/insert")
public class UserCreateController extends HttpServlet
{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		//response.setCharacterEncoding("utf-8");
		//response.setContentType("text/html");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		//PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "');";
		
		//int count = mysqlService.update(query);
		//out.println("삽입 갯수" + count);
		
		// 리다이렉트 (redirect)
		// 클라이어트에게 특정 페이지로 이동하도록 response에 정보를 담는다.
		response.sendRedirect("/db/user/list.jsp");
	}
}