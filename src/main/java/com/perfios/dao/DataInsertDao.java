package com.perfios.dao;

import java.beans.Statement;
import java.time.LocalDate;

import com.perfios.dto.CustomerPojo;
import com.perfios.service.PriceCalculation;

public class DataInsertDao {

	StatementDao sd=new StatementDao();
	public boolean dataInsertion(CustomerPojo cp) {
		
		boolean status=false;
		try {
			
			String sql="insert into CustomerDetails(name,city,phone_number,delivery_area,weight) values('"+cp.getName()+"','"+cp.getCity()+"','"+cp.getPhone_number()+"','"+cp.getDelivey_area()+"',"+cp.getWeight()+")";   
			if(sd.getStatement().executeUpdate(sql)>=1) {
				
				status=true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public boolean OrderDataInsertion(CustomerPojo cp) {
		
		CustomerDao cd=new CustomerDao();
		PriceCalculation pc=new PriceCalculation();
		int price=pc.priceCalculation(cp);
		int id=cd.getCustomerId();
		String trackingid="ABC"+String.valueOf(1000+id);
		boolean status=false;
		LocalDate localdate=LocalDate.now();
		try {
			
			
			String sql="insert into OrderDetails values('"+trackingid+"',"+id+",'"+cp.getCity()+"','"+cp.getDelivey_area()+"',"+price+",'"+localdate+"','"+localdate.plusDays(7)+"')";
			if(sd.getStatement().executeUpdate(sql)>=1) {
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
		
	}
}
