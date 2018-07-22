package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.PlanBean;
import DAO.PlanDAO;

/**
 * Servlet implementation class searchDetailServlet
 */
@WebServlet("/searchDetailServlet")
public class searchDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public searchDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String country = request.getParameter("country");
		int days = Integer.parseInt(request.getParameter("days"));
		int morning = Integer.parseInt(request.getParameter("morning"));
		int pickup = Integer.parseInt(request.getParameter("pickup"));

		System.out.println(country + days + morning + pickup);

		ArrayList<PlanBean> planList = null;
		try {
			planList = new PlanDAO().selectPlan(country, days, morning, pickup);
		} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		request.setAttribute("planList", planList);

		//System.out.println("リストの中身は" + planList.size());

		request.getRequestDispatcher("/pages/planDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
