<title>createtable</title>
</head>
<body>
Hello <%= request.getParameter("YourName")%>. Here is your table<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<!-- <tr>
<td style="vertical-align: top; background-color: black;"><br>
 <table style="width:100%"> -->
<%if (Integer.parseInt(request.getParameter("Cols"))<=0) 
	response.sendRedirect("classexercise.jsp?Error=1&YourName="+request.getParameter("YourName"));
  if (Integer.parseInt(request.getParameter("Rows"))<=0) 
	response.sendRedirect("classexercise.jsp?Error=2&YourName="+request.getParameter("YourName"));

  int cols = Integer.parseInt(request.getParameter("Cols"));
  int rows = Integer.parseInt(request.getParameter("Rows"));
  for (int i = 1; i <= rows; i++)
	  {
	   out.print("<tr>");
	   for(int j=1; j<cols; j++) {
		   out.print("<td>");
		   out.print(i + ", " + j);
		   out.print("</td>");
	   }
	   out.print("</tr>");
	  }
	  %>
</tbody>
</table> 
<br>
</body>
</html>
