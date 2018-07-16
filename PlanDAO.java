package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.PlanBean;

public class PlanDAO {

	public ArrayList<PlanBean> selectPlan(String country, int days, int morning, int pickup)
			throws ClassNotFoundException {
		System.out.println("ちゃんと入ってんでメソッドには！！！");
		ArrayList<PlanBean> planList = new ArrayList<PlanBean>();

		//		String SQL = "SELECT * FROM TRIPPLAN WHERE COUNTRY='?' AND DAYS=? AND MORNING=? AND PICKUP=?;";
		//
		//		//		String url = "jdbc:sqlplus://localhost/oorcl";
		//		//		String user = "ryo";
		//		//		String password = "ryo";
		//
		//		try {
		//			System.out.println("1");
		//			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oorcl", "ryo", "ryo");
		//			System.out.println("2");
		//
		//			PreparedStatement ps = conn.prepareStatement(SQL);
		//			System.out.println("3");
		//
		//			// データベースに対する処理
		//
		//			System.out.println("ちゃんと入ってんでｔｒｙ！！！");
		//
		//			ps.setString(1, country);
		//			ps.setInt(2, days);
		//			ps.setInt(3, morning);
		//			ps.setInt(4, pickup);
		//
		//			ResultSet rs = ps.executeQuery();

		// ユーザ名
		String user = "ryo";
		// パスワード
		String pass = "ryo";
		// サーバ名
		String servername = "localhost";
		// SID
		String sid = "oorcl";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;

		try {
			// JBBCドライバクラスのロード
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// Connectionの作成
			conn = DriverManager.getConnection("jdbc:oracle:thin:@" + servername + ":1521:" + sid, user, pass);

			// Statementの作成
			stmt = conn.createStatement();

			// Resultsetの作成
			rset = stmt.executeQuery("SELECT * FROM TRIPPLAN "
			//+ "WHERE COUNTRY='?' AND DAYS=? AND MORNING=? AND PICKUP=?;"
			//+ ""
			);
			while (rset.next()) {

				System.out.println("while文に入ってんで！！！");
				PlanBean plan = new PlanBean();

				plan.setPlanId(rset.getInt("PLAN_ID"));
				plan.setPlanName(rset.getString("PLAN_NAME"));
				plan.setCountry(rset.getString("COUNTRY"));
				plan.setDays(rset.getInt("DAYS"));
				plan.setMorning(rset.getInt("MORNING"));
				plan.setPickup(rset.getInt("PICKUP"));

				planList.add(plan);
			}

		} catch (SQLException e) {
			// 例外処理
		}
		System.out.println("メソッドでるで！！！");
		return planList;
	}

}