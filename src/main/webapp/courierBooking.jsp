<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

input[type="text"]{

  width: 95%;
  padding: 12px 20px;
  margin: 20px 0px 0px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
   border-radius: 25px;
}

select{
width: 95%;
  padding: 12px 20px;
  margin: 20px 0px 0px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  background:white;
   border-radius: 25px;
  
}

.loginbutton{
background-color: black;
  color: white;
  font-weight:bold;
  font-size:20px;
  padding: 14px 20px;
  margin-left:320px;
  border: none;
  cursor: pointer;
  width: 30%;
  text-align:center;
  
  border-radius: 25px;
  cursor: pointer;
  outline: none;

}

table{
text-align:center;
padding:10px;
width:100%;


}

td{
text-align:left;
vertical-align:middle;
}

.inplabel{
font-size:20px;
font-wight:bold;
padding:12px;


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
a{
float:right;
text-decoration:none;
color:black;
font-size:20px;
}
</style>
<body>
<h1><center>Courier Services</center></h1>
<a href="trackDetails.jsp">Track Package</a>
<form action="CustomerDetails">
<div class="forms">
<div class="formImage">
<img src="function.png" width="500" height="500">
</div>
<div class="formContent">
<table>

<tr><td style="vertical-align: bottom" class="inplabel">Name : </td>
<td><input type="text" name="name"  required></td></tr>
<tr><td style="vertical-align: bottom" class="inplabel">City : </td>
<td><select name="city" id="city"required>
  <option value="gujrath">Gujrath</option>
  <option value="karnataka">Karnataka</option>
  <option value="mumbai">Mumbai</option>
  <option value="tamilnadu">TamilNadu</option>
</select></td></tr>
<tr><td style="vertical-align: bottom" class="inplabel">Mobile Number : </td>
<td><input type="text" name="mobile" required></td></tr>
<tr><td style="vertical-align: bottom" class="inplabel">Delivery Area : </td>
<td><select name="delivery_area" id="delivery_area" required>
  <option value="gujrath">Gujarath</option>
  <option value="karnataka">Karnataka</option>
  <option value="mumbai">Mumbai</option>
  <option value="tamilnadu">TamilNadu</option>
</select></td></tr>
<tr><td style="vertical-align: bottom" class="inplabel">Packet weight(in gms) : </td>
<td><input type="text" name="weight" required></td></tr>

</table>
<br>
<table>
<tr><td><button type="submit" class="loginbutton">Submit</button></td></tr>
</table>
</div>
</div>
</form>
</body>
</html>