package com.perfios.service;

import com.perfios.dto.CustomerPojo;

public class PriceCalculation {
	
	public int priceCalculation(CustomerPojo cp) {
		int total_price=0;
		if(cp.getCity().equalsIgnoreCase("gujrath")) {
			
			int del_price=300;
			
			total_price=(cp.getWeight()/1000)*del_price;
		}
		else if(cp.getCity().equalsIgnoreCase("mumbai")) {
			int del_price=280;
			
			total_price=(cp.getWeight()/1000)*del_price;
			
		}
		else if(cp.getCity().equalsIgnoreCase("karnataka")) {
			int del_price=200;
			
			total_price=(cp.getWeight()/1000)*del_price;
			
		}
		else if(cp.getCity().equalsIgnoreCase("tamilnadu")) {
			int del_price=230;
			
			total_price=(cp.getWeight()/1000)*del_price;
			
		}
		
		return total_price;
		
	}

}
