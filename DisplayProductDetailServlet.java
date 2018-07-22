package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import constants.ConstURL;
import ds.ConnectionManager;

/**
 * 商品情報詳細画面表示用サーブレット
 */
@WebServlet("/DisplayProductDetailServlet")
public class DisplayProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = ConstURL.DISPLAY_PRODUCT_DETAIL_PATH;

		String productId = request.getParameter("productId");

		//IDを引数にしてDAO使ってproductbeanゲット
		try (Connection con = ConnectionManager.getConnection()) {

			//DAO生成して、IDもとにbean受け取る
			ProductDAO productDAO = new ProductDAO(con);

			Product product = productDAO.selectById(productId);

			//beanをセッションに保存
			session.setAttribute("product", product);

		} catch (SQLException | NamingException e) {
			throw new ServletException(e);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
