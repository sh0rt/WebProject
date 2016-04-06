<title>classexercise</title>
</head>
<body>
<% String error = request.getParameter("Error");
   if (error != null){
		if(error.equals("1")){
			out.print("<p>Hello:"+ request.getParameter("YourName")+ ", invalid column value</p>");
			}else if(error.equals("2")){
			out.print("<p>Hello:"+ request.getParameter("YourName")+ ", invalid row value </p>");
			}
		}%>
<form action="createtable.jsp" name= "MyForm"><br>
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="YourName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input value="1" name="Rows"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input value="1" name="Cols"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="SubmitButton"
value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top;"><input value="Reset"
name="ResetButton" type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>
