<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Student Registration Form</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student" >
	
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name: <form:input path="lastName" />
		
		<br><br>
		Favorite Programming Languages : 
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C#  <form:radiobutton path="favoriteLanguage" value="C#"/>
		PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
		<br><br>
		Operating System :
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>
		<br><br>
		Country:
		
		<form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		
		<br><br>
		
		<input type="submit" value="Submit" />
		
		
		
		
	
	</form:form>

</body>


</html>