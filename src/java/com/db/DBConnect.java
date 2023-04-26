/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

/**
 *
 * @author yash
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
                        System.out.println("Cloaded");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient_1", "root", "Yash@123");
                        System.out.println("Connected");
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return conn;
	}

}