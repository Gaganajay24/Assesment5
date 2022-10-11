package com.perfios.dao;

import java.sql.ResultSet;

public class OrderDetailsDao {

	StatementDao sd=new StatementDao();
	public String getTrackerId() {
		
		String id=null;
		try {
			
			String sql="select max(tracking_id) from OrderDetails";
			ResultSet rs=sd.getStatement().executeQuery(sql);
			rs.next();
			id=rs.getString(1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public ResultSet getDetails(String tracking_id) {
		
		System.out.println(tracking_id);
		ResultSet rs=null;
		try {
			
			String sql="select * from OrderDetails where tracking_id='"+tracking_id+"'";
			rs=sd.getStatement().executeQuery(sql);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
