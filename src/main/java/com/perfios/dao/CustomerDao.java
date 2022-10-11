package com.perfios.dao;

import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

public class CustomerDao {

	
	public int getCustomerId() {
		
		int id=0;
		StatementDao sd=new StatementDao();
		try {
			
			String sql="select max(id) from CustomerDetails";
			
			ResultSet rs=sd.getStatement().executeQuery(sql);
			rs.next();
			id=rs.getInt(1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
}
