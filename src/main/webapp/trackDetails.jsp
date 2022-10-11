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

<form action="displayDetails.jsp">
<div class="forms">
<div class="formImage">
<img src="function.png" width="500" height="500">
</div>
<div class="formContent">

<table>
<tr><td>Tracking Id : </td><td><input type="text" name="trackid" required></td></tr>
</table>
<button type="submit" class="loginbutton">Submit</button></td></tr>

</div>
</div>
</form>
</body>
</html>