<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.perfios.dao.OrderDetailsDao" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


}
.forms{
width:55%;
	height:500px;
	
	margin-left:400px;
	padding:10px;
	margin-top:8%;
	background-color:white;
box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
display:flex;
}
.formImage{
width:500px;
height:500px;

}
.formContent{
width:50%;
text-align:center;
}

table{
text-align:center;
padding:10px;
width:100%;
margin-left:50px;

}

td{
text-align:left;
vertical-align:middle;
font-size:20px;
}

.inplabel{
font-size:20px;
font-wight:bold;
padding:12px;


}
.loginbutton{
background-color: black;
  color: white;
  font-weight:bold;
  font-size:20px;
  padding: 14px 20px;
  
  border: none;
  cursor: pointer;
  width: 30%;
  text-align:center;
  margin-top:80px;
  border-radius: 25px;
  cursor: pointer;
  outline: none;

}

</style>
<body>
<h1><center>Courier Services</center></h1>

<form action="orderConfirmation.jsp">

<div style="width:55%;
height:500px;
margin-left:400px;
padding:10px;
margin-top:8%;
box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);display:flex">
<div class="formImage">
<img src="function.png" width="500" height="500">
</div>
<div class="formContent">
<h2><center>Booking Details</center></h2>
<br><br>

<h1>Your Order is Confirmed!!</h1>

</div>
</div>
</form>
</body>
</html>