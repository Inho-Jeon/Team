package org.team.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team.dao.ListDAO;
import org.team.dto.ListDTO;


/**
 * Servlet implementation class ResultController
 */
@WebServlet("/result")
public class ResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ListDAO dao =  new ListDAO();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResultController() {
		super();
	
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		ListDTO dto = new ListDTO();
		
		
		//vo.setTitle(request.getParameter("title"));
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));
	//	String title = request.getParameter("title");
	//	String contents = request.getParameter("contents");
		
		
		
		System.out.println("dto" + dto);
		dao.insert(dto);
		
		//System.out.println(title);
	//	System.out.println(contents);
		request.getRequestDispatcher("/WEB-INF/result.jsp").forward(request, response);

		
	}

}
