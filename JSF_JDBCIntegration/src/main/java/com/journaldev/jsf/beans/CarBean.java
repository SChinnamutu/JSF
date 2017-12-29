package com.journaldev.jsf.beans;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class CarBean implements Serializable {

	private static final long serialVersionUID = 6081417964063918994L;

	public List<Car> getCars() throws ClassNotFoundException, SQLException {
		Connection connect = null;
		String url = "jdbc:mysql://localhost:3306/poc";
		String username = "admin";
		String password = "nimda";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection(url, username, password);
		} catch (SQLException ex) {
			System.out.println("in exec");
			System.out.println(ex.getMessage());
		}
		List<Car> cars = new ArrayList<Car>();
		PreparedStatement pstmt = connect.prepareStatement("select car_id, cname, color, speed, Manufactured_Country from Car");
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Car car = new Car();
			car.setCid(rs.getInt("car_id"));
			car.setCname(rs.getString("cname"));
			car.setColor(rs.getString("color"));
			car.setSpeed(rs.getInt("speed"));
			car.setMfdctry(rs.getString("Manufactured_Country"));
			cars.add(car);
		}
		rs.close();
		pstmt.close();
		connect.close();
		return cars;
	}

}
