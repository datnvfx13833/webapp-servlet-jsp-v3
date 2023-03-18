package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import context.DBContext;
import model.Cart;
import model.Orders;
import model.Product;

public class OrdersDAO {

	public void insertOrder(Orders o, Cart c) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection connection = new DBContext().getConnection();
		List<Product> pr = c.getItems();
		String sql = "INSERT INTO orders_detail VALUES (?, ?, ?, NULL)";
		try {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT TOP 1 orders_id FROM orders_detail ORDER BY order_id DESC");
			int id = 0;
			if (rs.next()) {
				id = rs.getInt("order_id");
			}
			id = id + 1;
			String sql2 = "SET IDENTITY_INSERT orders ON" 
						+ " INSERT INTO orders (user_mail, order_id, order_status, order_date, order_discount_code, oders_address) VALUES (?, ?, ?, ?, ?, ?)"
						+ " SET IDENTITY_INSERT orders OFF";
			PreparedStatement statement2 = connection.prepareStatement(sql2);
			
			statement2.setString(1, o.getUserMail());
			statement2.setString(2, "" + id);
			statement2.setString(3, "" + o.getStatus());
			
			Date date = new Date(Calendar.getInstance().getTime().getTime());
			SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd");
			String validate = f.format(date);
			statement2.setDate(4, date);
			statement2.setString(5, o.getDiscount());
			statement2.setString(6, o.getAddress());
			
			statement2.executeUpdate();
			statement2.close();
			PreparedStatement statement = connection.prepareStatement(sql);
			for (Product p : pr) {
				statement.setString(1,"" + id);
				statement.setString(2,"" + p.getId());
				statement.setString(3,"" + 1);
				
				statement.executeUpdate(); 
			}
			statement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
