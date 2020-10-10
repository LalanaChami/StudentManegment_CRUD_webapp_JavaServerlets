<%@ page import="java.util.*,com.jspDemo.jsp.*" %>
<!DOCTYPE html>

	<html>
	
		<head>
			<title>Student manegment App</title>
			<link type="text/css" rel="stylesheet" href="css/style.css">
		</head>
	
		<%
		//get the student list from the student list
		List<Student> theStudents = 
			(List<Student>) request.getAttribute("STUDENT_LIST");
		
		%>
	
		<body>
			<div id="wrapper">
				<div id ="header">
					<h2>FooBar University</h2>
				</div>
			</div>
			
			<div id="container">
				<div id="content">
					<table>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
						</tr>
						
						<% for (Student tempStudent : theStudents){ %>
						
						<tr>
							<th><%= tempStudent.getFirstName() %></th>
							<th><%= tempStudent.getLastName() %></th>
							<th><%= tempStudent.getEmail() %></th>
						</tr>
						
						<% } %>
					</table>
				</div>
			</div>
		</body>
	
	
	</html>