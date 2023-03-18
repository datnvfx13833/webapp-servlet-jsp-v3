package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import context.DBContext;
import model.Product;

public class ListProductDAO {
	private int noOfRecords;
	public List<Product> search(String string) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection connection = new DBContext().getConnection();
		List<Product> list = new ArrayList<>();
		try {
			Statement statement =connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM products WHERE product_name LIKE '%" + string + "%'");
			this.noOfRecords = 0;
			while (rs.next()) {
				Product pr = new Product();
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
				
				list.add(pr);
				this.noOfRecords ++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Product getProduct(String character) throws ClassNotFoundException, SQLException {
		Connection connection = new DBContext().getConnection();
		Product pr = new Product();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM products WHERE product_id = " + character);
			
			if (rs.next()) {
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pr;
	}
	public int getNoOfRecords() {
		// TODO Auto-generated method stub
		return noOfRecords;
	}

	public List<Product> getRecord(int start, int total) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection connection = new DBContext().getConnection();
		List<Product> list = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * "
					+ " FROM products"
					+ " LIMIT " + total + " OFFSET " + start);
			while (rs.next()) {
				Product pr = new Product();
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
				
				list.add(pr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
