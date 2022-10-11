package com.perfios.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.perfios.dao.DataInsertDao;
import com.perfios.dto.CustomerPojo;

@WebServlet("/CustomerDetails")
public class CustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DataInsertDao dio=new DataInsertDao();
	PriceCalculation pc=new PriceCalculation();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		CustomerPojo cp=new CustomerPojo();
		cp.setName(request.getParameter("name"));
		cp.setCity(request.getParameter("city"));
		cp.setPhone_number(Long.parseLong(request.getParameter("mobile")));
		cp.setDelivey_area(request.getParameter("delivery_area"));
		cp.setWeight(Integer.parseInt(request.getParameter("weight")));
		
		if(dio.dataInsertion(cp)) {
		
			
			if(dio.OrderDataInsertion(cp)) {
				//out.println("The price is : "+pc.priceCalculation(cp));
				RequestDispatcher rd=request.getRequestDispatcher("bookingStatus.jsp");
				rd.forward(request, response);
			}
			else {
				out.println("order failure");
			}
		}
		else {
			out.println("failure");
		}
	
	}

}
